package vova.dao.manager;

import vova.dao.dbmongo.UseMyMongo;
import vova.dao.dbsql.EnumSQL;
import vova.dao.dbsql.UseMySql;
import vova.domain.Player;

import vova.domain.overview.ThreeNum;
import vova.domain.payment.PayAllShow;
import vova.domain.payment.PayMentDay;
import vova.domain.payment.PayMentMon;
import vova.domain.payment.PayMentWeek;
import vova.util.Tools;

import java.io.IOException;
import java.util.Date;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**
 * @author: Vova
 * @create: date 11:53 2018/1/5
 */
public class ManageOverView {
    public ManageOverView() {
    }

    private static Lock lock = new ReentrantLock();// 锁对象
    private static final org.apache.log4j.Logger log = org.apache.log4j.Logger.getLogger(ManagePayInput.class);

    public static int manageThreeNum(Date firstDate, Date lastDate, String uid, String cid, String gid, String sid, int newAddSomeNum, boolean dayExist, boolean weekExist, boolean MonExist,
                                     UseMySql mys, UseMyMongo umm, Class clazz) throws IOException {

        try {
            lock.lockInterruptibly();
            try {
                ThreeNum findSeed = new ThreeNum();
                String clazzName = clazz.getSimpleName();
                int newAddFirstPayNum = 0;
                int activePayNum = 0;
                float newAddPayRate = 0;

                Player playerCheck = new Player();
                playerCheck.setUid(uid);
                playerCheck.setGid(gid);
                playerCheck.setSid(sid);

                PayAllShow payAllShow = new PayAllShow();
                PayAllShow payAllShowRes = null;
                payAllShow.setcId(cid);
                payAllShow.setgId(gid);
                payAllShow.setsId(sid);

                Date thisDate = null;
                long thisDateL = 0;
                if (clazzName.equals("ThreeNumDay")) {
                    if (dayExist) return -2;                     //当本日付费过一次，将不再记录，避免重复计算
                    thisDate = lastDate;
                    thisDateL=Tools.dateToSec(thisDate);
               //     addClazz = NewAddDay.class;
                    Player resPlayer = umm.findNewAddPlayerByRegdate(playerCheck,thisDateL,thisDateL+24*3600);
                    if (resPlayer!=null&&newAddSomeNum==1){
                        newAddFirstPayNum=1;
                    }
                    resPlayer = null;
                    resPlayer = umm.findActivePlayerByLastDate(playerCheck,Tools.dateToSec(lastDate),Tools.dateToSec(lastDate)+24*3600);
                    if (resPlayer!=null){
                        activePayNum=1;
                    }
                    payAllShow.setDateID(thisDate);
                    payAllShowRes = (PayAllShow) mys.utilSQL(PayMentDay.class, EnumSQL.SELECT, payAllShow);
                    newAddPayRate = payAllShowRes.getNewAddNum()==0?0:(float) payAllShowRes.getNewAddPayPlayerNum()/(float) payAllShowRes.getNewAddNum();


                } else if (clazzName.equals("ThreeNumMon")) {
                    if (MonExist) return -2;
                    thisDate = Tools.getFirstOfMonth(lastDate);

                    Player resPlayer = umm.findNewAddPlayerByRegdate(playerCheck,
                            Tools.dateToSec(Tools.getFirstOfMonth(thisDate)),
                            Tools.dateToSec(Tools.getLastOfMonth(thisDate))+24*3600);
                    if (resPlayer!=null&&newAddSomeNum==1){
                        newAddFirstPayNum=1;
                    }
                    resPlayer = null;
                    resPlayer = umm.findActivePlayerByLastDate(playerCheck,Tools.dateToSec(Tools.getFirstOfMonth(lastDate)),
                            Tools.dateToSec(Tools.getLastOfMonth(lastDate))+24*3600);
                    if (resPlayer!=null){
                        activePayNum=1;
                    }

                    payAllShow.setDateID(thisDate);
                    payAllShowRes = (PayAllShow) mys.utilSQL(PayMentMon.class, EnumSQL.SELECT, payAllShow);
                    newAddPayRate = payAllShowRes.getNewAddNum()==0?0:(float) payAllShowRes.getNewAddPayPlayerNum()/(float) payAllShowRes.getNewAddNum();
                } else if (clazzName.equals("ThreeNumWeek")) {
                    if (weekExist) return -2;
                    thisDate = Tools.getMondayOfDate(lastDate);
                  //  addClazz = NewAddWeek.class;
                    Player resPlayer = umm.findNewAddPlayerByRegdate(playerCheck,
                            Tools.dateToSec(Tools.getMondayOfDate(thisDate)),
                            Tools.dateToSec(Tools.getSundayOfDate(thisDate))+24*3600);
                    if (resPlayer!=null&&newAddSomeNum==1){
                        newAddFirstPayNum=1;
                    }
                    resPlayer = null;
                    resPlayer = umm.findActivePlayerByLastDate(playerCheck,Tools.dateToSec(Tools.getMondayOfDate(lastDate)),
                            Tools.dateToSec(Tools.getSundayOfDate(lastDate))+24*3600);
                    if (resPlayer!=null){
                        activePayNum=1;
                    }

                    payAllShow.setDateID(thisDate);
                    payAllShowRes = (PayAllShow) mys.utilSQL(PayMentWeek.class, EnumSQL.SELECT, payAllShow);
                    newAddPayRate = payAllShowRes.getNewAddNum()==0?0:(float) payAllShowRes.getNewAddPayPlayerNum()/(float) payAllShowRes.getNewAddNum();
                }
                findSeed.setcID(cid);
                findSeed.setgID(gid);
                findSeed.setsID(sid);
                findSeed.setDateID(thisDate);
                ThreeNum tmp = (ThreeNum) mys.utilSQL(clazz, EnumSQL.SELECT, findSeed);  //表的第一位为注册时间，一个注册记录当天注册用户的留存情况

                if (tmp == null) {
                    ThreeNum sp = new ThreeNum(0, thisDate,
                            cid,
                            gid,
                            sid,
                            0, 0, 0);
                    mys.utilSQL(clazz, EnumSQL.INSERT, sp);
                    log.info("##Insert a new row##:" + clazzName);
                    tmp = (ThreeNum) mys.utilSQL(clazz, EnumSQL.SELECT, findSeed);
                }

                tmp.setNewAddFirstPayNum(tmp.getNewAddFirstPayNum()+newAddFirstPayNum);
                tmp.setactivePayNum(tmp.getactivePayNum()+activePayNum);
                tmp.setNewAddPayRate(newAddPayRate);

                //计算活跃用户付费率=活跃用户付费数/活跃用户数
                //计算活跃用户付费数，判断支付UID是否是活跃用户，搜索player的表。
                mys.utilSQL(clazz, EnumSQL.UPDATE, tmp);

                return 1;
            } finally {
                lock.unlock();
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        return -1;
    }

}
