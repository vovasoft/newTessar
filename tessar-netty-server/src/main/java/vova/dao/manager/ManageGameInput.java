package vova.dao.manager;


import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import vova.dao.dbmongo.UseMyMongo;
import vova.dao.dbsql.UseMySql;
import vova.dao.dbsql.EnumSQL;
import vova.domain.Player;
import vova.domain.newadd.NewAdd;
import vova.domain.newadd.NewAddDay;
import vova.domain.newadd.NewAddMon;
import vova.domain.newadd.NewAddWeek;
import org.springframework.stereotype.Component;
import vova.domain.stayman.StayDay;
import vova.domain.stayman.StayMon;
import vova.domain.stayman.StayWeek;
import vova.util.Switch;
import vova.util.Tools;

import java.io.IOException;
import java.text.ParseException;
import java.util.Date;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**
 * @author: Vova
 * @create: date 13:49 2017/12/26
 */

@Component
public class ManageGameInput extends Thread {

    Player player;
    UseMyMongo umm;
    UseMySql mys;
    String mainId;

    public ManageGameInput(Player player, UseMyMongo umm, UseMySql mys, String mainId) {
        this.player = player;
        this.umm = umm;
        this.mys = mys;
        this.mainId = mainId;
    }

    private static Lock lock1 = new ReentrantLock();// 锁对象
    private static Lock lock2 = new ReentrantLock();// 锁对象
    private static final org.apache.log4j.Logger log = org.apache.log4j.Logger.getLogger(ManagePayInput.class);

    public ManageGameInput() {
    }

//    boolean useSid = new ClassPathXmlApplicationContext("switch.xml").getBean(Switch.class).getUseSid();

    public int HandPlayerData(Player player, UseMyMongo umm, UseMySql mys, String mainId) throws IOException, ParseException {

        String uid = player.getUid();  //获取当前用户id

        Date uLoginDate = Tools.secToDateByFormat(player.getLastdate());//获取登录日期
        Date uRegDate = Tools.secToDateByFormat(player.getRegdate()); //获取注册信息
        long uLoginL = player.getLastdate();
        long uRegL = player.getRegdate();
        String cid = player.getCid();
        String gid = player.getGid();
        String sid = player.getSid();
        String enter = player.getEnter();
        log.info("player Cid:" + cid);
//        if (useSid) {
//            sid = player.getSid();
//        } else {
//            sid = "-0";
//        }
        //      String sid = player.getSid();
        log.info("Player---" + "uid:" + uid + ",uLoginDate:" + uLoginDate + ",uRegDate:" + uRegDate);
        long allPlayerCount;
        int activeDay = 0, activeMon = 0, activeWeek = 0;
        int loginCount;
        int newAddDayNum = 0, newAddWeekNum = 0, newAddMonNum = 0;
        NewAddDay tmp1 = null;
        NewAddWeek tmp2 = null;
        NewAddMon tmp3 = null;
        boolean isExistDay;
        boolean isExistWeek;
        boolean isExistMon;
        synchronized (umm) {
            isExistDay = umm.findDayInMongo(player);
            isExistWeek = umm.findWeekInMongo(player);
            isExistMon = umm.findMonInMongo(player);

            //记录活跃用户增加
            activeDay = isExistDay ? 0 : 1;
            activeMon = isExistMon ? 0 : 1;
            activeWeek = isExistWeek ? 0 : 1;
            loginCount = 1;

            //记录新增的数值

//            System.out.println("uLoginDate:" + uLoginDate + ", uRegDate" + uRegDate + ", isExistDay" + isExistDay);
//            System.out.println("uLoginDate:" + uLoginDate + ", uRegDate" + uRegDate + ", isExistWeek" + isExistWeek);
//            System.out.println("uLoginDate:" + uLoginDate + ", uRegDate" + uRegDate + ", isExistMon" + isExistMon);
            if (uLoginDate.equals(uRegDate) && !isExistDay) {
                //System.out.println("注册和登录时间一致");
                newAddDayNum = 1;
            }
            if (uLoginDate.equals(uRegDate) && !isExistWeek) {
                //System.out.println("注册和登录时间一致");
                newAddWeekNum = 1;
            }
            if (uLoginDate.equals(uRegDate) && !isExistMon) {
                //System.out.println("注册和登录时间一致");
                newAddMonNum = 1;
            }
            //判断三个表是否存在当日当周当月词条，如果没有则insert
            tmp1 = (NewAddDay) findOrCreate(uLoginDate, mainId, cid, gid, enter, mys, NewAddDay.class);
            tmp2 = (NewAddWeek) findOrCreate(uLoginDate, mainId, cid, gid, enter, mys, NewAddWeek.class);
            tmp3 = (NewAddMon) findOrCreate(uLoginDate, mainId, cid, gid, enter, mys, NewAddMon.class);

            //计算玩家总数，计入到数据中,需要判断该用户是否注册过（服务器开启之前等用户）   //如果数据库无数据并且两次登录时间不一样，秒级别计算
            if (uLoginL != uRegL) {
                if (umm.findRegister(player) == null) {
                    //umm.insertMongo(player);
                    Player regPlayer = new Player(uid, player.getRegdate(), player.getRegdate(), cid, gid, sid, enter);
                    HandPlayerData(regPlayer, umm, mys, mainId);
                }
            }

//        try {
//            lock1.lock();
//        long allPlayerCount;
//        synchronized (umm) {
            allPlayerCount = umm.findPlayerCountInMongo("player", "uid", cid, gid, enter);   //传递一个参数名称，用于去重.这里有坑....2月6日对mongo做了更改
            try {
                umm.insertMongo(player);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        //处理完表之后，往表中增加数据。
        //更新日增表
        Integer dayCount = (Integer) mys.utilSQL(Integer.class, EnumSQL.GETCOUNT, tmp1);
        NewAddDay updateDay = new NewAddDay(tmp1.getId(), uLoginDate, mainId, cid, gid, enter, newAddDayNum,
                activeDay, loginCount, (float) (((tmp1.getLoginCount() + loginCount) * 1.0) / dayCount), allPlayerCount + newAddDayNum,
                "", "", "", "");

        //更新周增表
        Integer weekCount = (Integer) mys.utilSQL(Integer.class, EnumSQL.GETCOUNT, tmp2);
        NewAddWeek updateWeek = new NewAddWeek(tmp2.getId(), uLoginDate, mainId, cid, gid, sid, newAddWeekNum,
                activeWeek, loginCount, (float) (((tmp2.getLoginCount() + loginCount) * 1.0) / weekCount), allPlayerCount + newAddWeekNum,
                "", "", "", "");

        //更新月增表
        Integer monthCount = (Integer) mys.utilSQL(Integer.class, EnumSQL.GETCOUNT, tmp3);
        NewAddMon updateMon = new NewAddMon(tmp3.getId(), uLoginDate, mainId, cid, gid, sid, newAddWeekNum,
                activeMon, loginCount, (float) (((tmp3.getLoginCount() + loginCount) * 1.0) / monthCount), allPlayerCount + newAddMonNum,
                "", "", "", "");
        synchronized (mys) {
            mys.utilSQL(NewAddDay.class, EnumSQL.UPDATE, updateDay);
            mys.utilSQL(NewAddWeek.class, EnumSQL.UPDATE, updateWeek);
            mys.utilSQL(NewAddMon.class, EnumSQL.UPDATE, updateMon);
        
//        } finally {
//            lock1.unlock();
//        }


        //处理留存逻辑
        int i1 = ManageStay.manageStayData(uRegDate, uLoginDate, cid, gid, mainId, enter, sid, newAddDayNum, isExistDay, isExistWeek, isExistMon, mys, StayDay.class);
        int i2 = ManageStay.manageStayData(uRegDate, uLoginDate, cid, gid, mainId, enter, sid, newAddWeekNum, isExistDay, isExistWeek, isExistMon, mys, StayWeek.class);
        int i3 = ManageStay.manageStayData(uRegDate, uLoginDate, cid, gid, mainId, enter, sid, newAddMonNum, isExistDay, isExistWeek, isExistMon, mys, StayMon.class);
        }
        //原始数据存入mongodb
//        try {
//            umm.insertMongo(player);
//        } catch (ParseException e) {
//            e.printStackTrace();
//        } 

        return -1;
    }

    private NewAdd findOrCreate(Date uLoginDate, String mainId, String cid, String gid, String enter, UseMySql mys, Class clazz) throws IOException {
        try {
            lock2.lock();
            String clazzName = clazz.getSimpleName();
            Date thisDate = null;
            if (clazzName.equals("NewAddDay")) {
                thisDate = uLoginDate;
            } else if (clazzName.equals("NewAddMon")) {
                thisDate = Tools.getFirstOfMonth(uLoginDate);
            } else if (clazzName.equals("NewAddWeek")) {
                thisDate = Tools.getMondayOfDate(uLoginDate);
            }
            NewAdd findSeed = new NewAdd();
            findSeed.setcID(cid);
            findSeed.setgID(gid);
            findSeed.setEnter(enter);
            findSeed.setDateID(thisDate);
            NewAdd tmp1 = (NewAdd) mys.utilSQL(clazz, EnumSQL.SELECT, findSeed);
            if (tmp1 == null) {
                NewAdd newLine = new NewAdd(0, thisDate, mainId,
                        cid,
                        gid,
                        enter,
                        0, 0, 0, 0, 0, "", "", "", "");
                mys.utilSQL(clazz, EnumSQL.INSERT, newLine);
                log.info("##Insert a new row##:" + clazzName);
                tmp1 = (NewAdd) mys.utilSQL(clazz, EnumSQL.SELECT, findSeed);
            }
            return tmp1;
        } finally {
            lock2.unlock();
        }

    }

    public void run() {
        try {
            HandPlayerData(player, umm, mys, mainId);
//            Thread.interrupted();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }
}
