package vova.dao.dbmongo;
import com.mongodb.*;
import com.mongodb.client.DistinctIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import org.bson.conversions.Bson;
import vova.domain.Player;
import com.mongodb.client.model.Filters;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import vova.domain.payment.PayMentForKeep;
import vova.util.Switch;
import vova.util.Tools;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import static vova.nettydemo.NettyHandler.ac;

/**
 * @author: Vova
 * @create: date 20:43 2017/12/25
 */


public class UseMyMongo {

    public UseMyMongo() {
    }
    boolean useSid = new ClassPathXmlApplicationContext("switch.xml").getBean(Switch.class).getUseSid();

    //插入数据
    public void insertMongo(Object object) throws ParseException {
       //ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
        
        MongoTemplate mongoTemplate = (MongoTemplate) ac.getBean("mongoTemplate");
        mongoTemplate.insert(object);
    }


    //Find count of all players by ID distinct;
    public int findPlayerCountInMongo(String collectionName, String id, String cid, String gid) {
        //ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
        MongoClient mongoClient = (MongoClient) ac.getBean("mongoClient");

        MongoDatabase db = mongoClient.getDatabase("db2");

        Bson b1 = Filters.eq("cid", cid);
        Bson b2 = Filters.eq("gid", gid);
        Bson b3 = Filters.and(b1, b2);

        MongoCollection collection = db.getCollection("player");
        int res = 0;
        DistinctIterable<String> distinct = collection.distinct(id, b3, String.class);

        MongoCursor<String> iterator = distinct.iterator();
        while (iterator.hasNext()) {
            res++;
            iterator.next();
        }

        return res;
    }

    public int findPlayerCountInMongoAll(String collectionName, String id) {
        int res = 0;
        //ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
        MongoTemplate mongoTemplate = (MongoTemplate) ac.getBean("mongoTemplate");
        DBObject query = new BasicDBObject();
        res = mongoTemplate.getCollection(collectionName).distinct(id, query).size();

        return res;
    }

    //查找player之前是否有注册过，如果没有注册，则注册。
    public Player findRegister(Player player) {
        String uid = player.getUid();
        String gid = player.getGid();
        String sid = player.getSid();
        String cid = player.getCid();
        long regTime = player.getRegdate();
        //ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
        MongoTemplate mongoTemplate = (MongoTemplate) ac.getBean("mongoTemplate");
        Query query = new Query();
        if (useSid) {
            query.addCriteria(Criteria.where("uid").is(uid).and("gid").is(gid).and("sid").is(sid).and("regdate").is(regTime).and("lastdate").is(regTime));

        } else {
            query.addCriteria(Criteria.where("uid").is(uid).and("gid").is(gid).and("regdate").is(regTime).and("lastdate").is(regTime));
        }
        Player resPlayer = mongoTemplate.findOne(query, Player.class);
        return resPlayer;
    }

    //Exist in one day
    //这里的计算比较复杂，每个用户登录的时间以秒计算，算法中只能精确到天，数据库中的date没有小时，所以要手动控制一下时间区间
    public boolean findDayInMongo(Player player) throws ParseException {
        String uid = player.getUid();
        String gid = player.getGid();
        //需求变化，取消sid的维度
        String enter = player.getEnter();
        String cid = player.getCid();
        Date todayDate = Tools.secToDateByFormat(player.getLastdate());
        long todayTime = todayDate.getTime() / 1000;
        //ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
        MongoTemplate mongoTemplate = (MongoTemplate) ac.getBean("mongoTemplate");
        Query query = new Query();

        if (useSid) {
            query.addCriteria(Criteria.where("uid").is(uid).and("cid").is(cid).and("gid").is(gid).and("enter").is(enter).and("lastdate").gte(todayTime).lt(todayTime + (24 * 3600)));
        } else {
            query.addCriteria(Criteria.where("uid").is(uid).and("cid").is(cid).and("gid").is(gid).and("lastdate").gte(todayTime).lt(todayTime + (24 * 3600)));

        }
        Player resPlayer = mongoTemplate.findOne(query, Player.class);
        if (resPlayer == null) {
            //system.out.println("resPlayer is not exist!!!");
            return false;
        } else {
            //system.out.println("resPlayer is exist!!!");
            return true;
        }
    }

    //Exist in one week
    public boolean findWeekInMongo(Player player) throws ParseException {

        String uid = player.getUid();
        Date loginDate = Tools.secToDateByFormat(player.getLastdate());
        String gid = player.getGid();
        String enter = player.getEnter();
        String cid = player.getCid();
        Calendar cRegister = Calendar.getInstance();
        cRegister.setTime(loginDate);
        cRegister.get(Calendar.WEEK_OF_YEAR);

        Date mondayOfDate = Tools.getMondayOfDate(loginDate);
        Date sundayOfDate = Tools.getSundayOfDate(loginDate);
        //ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
        MongoTemplate mongoTemplate = (MongoTemplate) ac.getBean("mongoTemplate");
        Query query = new Query();
        if (useSid) {
            query.addCriteria(Criteria.where("uid").is(uid).and("gid").is(gid).and("cid").is(cid).and("enter").is(enter).and("lastdate").gte(Tools.dateToSec(mondayOfDate)).lt(Tools.dateToSec(sundayOfDate) + (24 * 3600)));

        } else {

            query.addCriteria(Criteria.where("uid").is(uid).and("gid").is(gid).and("cid").is(cid).and("lastdate").gte(Tools.dateToSec(mondayOfDate)).lt(Tools.dateToSec(sundayOfDate) + (24 * 3600)));
        }

        Player resPlayer = mongoTemplate.findOne(query, Player.class);
        if (resPlayer == null) {
            return false;
        } else {
            return true;
        }
    }

    //Exist in one Month
    public boolean findMonInMongo(Player player) throws ParseException {

        String uid = player.getUid();
        Date loginDate = Tools.secToDateByFormat(player.getLastdate());
        String cid = player.getCid();
        String gid = player.getGid();
        String enter = player.getEnter();

        Date firstMonthOfDate = Tools.getFirstOfMonth(loginDate);
        Date endMonthOfDate = Tools.getLastOfMonth(loginDate);
        //ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
        MongoTemplate mongoTemplate = (MongoTemplate) ac.getBean("mongoTemplate");
        Query query = new Query();
        if (useSid) {
            query.addCriteria(Criteria.where("uid").is(uid).and("cid").is(cid).and("gid").is(gid).and("enter").is(enter).and("lastdate").gte(Tools.dateToSec(firstMonthOfDate)).lt(Tools.dateToSec(endMonthOfDate) + (24 * 3600)));
        } else {
            query.addCriteria(Criteria.where("uid").is(uid).and("cid").is(cid).and("gid").is(gid).and("lastdate").gte(Tools.dateToSec(firstMonthOfDate)).lt(Tools.dateToSec(endMonthOfDate) + (24 * 3600)));
        }
        Player resPlayer = mongoTemplate.findOne(query, Player.class);
        if (resPlayer == null) {
            return false;
        } else {
            return true;
        }
    }

    public boolean findNeverPayInMongo(PayMentForKeep payMentForKeep) {
        String uid = payMentForKeep.getUid();
        String gid = payMentForKeep.getGid();
        String sid = payMentForKeep.getSid();
        String cid = payMentForKeep.getCid();

        //ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
        MongoTemplate mongoTemplate = (MongoTemplate) ac.getBean("mongoTemplate");
        Query query = new Query();

        if (useSid) {
            query.addCriteria(Criteria.where("uid").is(uid).and("cid").is(cid).and("gid").is(gid).and("sid").is(sid));

        } else {
            query.addCriteria(Criteria.where("uid").is(uid).and("cid").is(cid).and("gid").is(gid));
        }
        PayMentForKeep res = mongoTemplate.findOne(query, PayMentForKeep.class);
        if (res == null) {
            return true;
        } else {
            return false;
        }
    }

    //ExistPay in one day week mon
    //这里的计算更复杂，每个用户登录的时间以秒计算，算法中只能精确到天，数据库中的date没有小时，所以要手动控制一下时间区间
    //记录当天是否新增付费
    public boolean findDayPayInMongo(PayMentForKeep payMentForKeep) throws ParseException {
        String uid = payMentForKeep.getUid();
        String gid = payMentForKeep.getGid();
        String sid = payMentForKeep.getSid();
        String cid = payMentForKeep.getCid();
        Date todayDate = Tools.secToDateByFormat(payMentForKeep.getPayTime());
        long todayTime = todayDate.getTime() / 1000;

        //ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
        MongoTemplate mongoTemplate = (MongoTemplate) ac.getBean("mongoTemplate");
        Query query = new Query();

        if (useSid) {
            query.addCriteria(Criteria.where("uid").is(uid).and("cid").is(cid).and("gid").is(gid).and("sid").is(sid).and("payTime").gte(todayTime).lt(todayTime + (24 * 3600)));

        } else {
            query.addCriteria(Criteria.where("uid").is(uid).and("cid").is(cid).and("gid").is(gid).and("payTime").gte(todayTime).lt(todayTime + (24 * 3600)));

        }
        PayMentForKeep res = mongoTemplate.findOne(query, PayMentForKeep.class);
        if (res == null) {
            return true;
        } else {
            return false;
        }
    }

    public boolean findWeekPayInMongo(PayMentForKeep payMentForKeep) throws ParseException {
        String uid = payMentForKeep.getUid();
        Date loginDate = Tools.secToDateByFormat(payMentForKeep.getPayTime());
        String gid = payMentForKeep.getGid();
        String sid = payMentForKeep.getSid();
        String cid = payMentForKeep.getCid();
        Calendar cRegister = Calendar.getInstance();
        cRegister.setTime(loginDate);
        cRegister.get(Calendar.WEEK_OF_YEAR);

        Date mondayOfDate = Tools.getMondayOfDate(loginDate);
        Date sundayOfDate = Tools.getSundayOfDate(loginDate);

        //ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
        MongoTemplate mongoTemplate = (MongoTemplate) ac.getBean("mongoTemplate");
        Query query = new Query();

        if (useSid) {
            query.addCriteria(Criteria.where("uid").is(uid).and("gid").is(gid).and("cid").is(cid).and("sid").is(sid).and("payTime").gte(Tools.dateToSec(mondayOfDate)).lt(Tools.dateToSec(sundayOfDate) + (24 * 3600)));

        } else {
            query.addCriteria(Criteria.where("uid").is(uid).and("gid").is(gid).and("cid").is(cid).and("payTime").gte(Tools.dateToSec(mondayOfDate)).lt(Tools.dateToSec(sundayOfDate) + (24 * 3600)));
        }

        PayMentForKeep res = mongoTemplate.findOne(query, PayMentForKeep.class);
        if (res == null) {
            return true;
        } else {
            return false;
        }
    }

    public boolean findMonPayInMongo(PayMentForKeep payMentForKeep) throws ParseException {
        String uid = payMentForKeep.getUid();
        Date loginDate = Tools.secToDateByFormat(payMentForKeep.getPayTime());
        String cid = payMentForKeep.getCid();
        String gid = payMentForKeep.getGid();
        String sid = payMentForKeep.getSid();

        Date firstMonthOfDate = Tools.getFirstOfMonth(loginDate);
        Date endMonthOfDate = Tools.getLastOfMonth(loginDate);
        //ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
        MongoTemplate mongoTemplate = (MongoTemplate) ac.getBean("mongoTemplate");
        Query query = new Query();

        if (useSid) {
            query.addCriteria(Criteria.where("uid").is(uid).and("cid").is(cid).and("gid").is(gid).and("sid").is(sid).and("payTime").gte(Tools.dateToSec(firstMonthOfDate)).lt(Tools.dateToSec(endMonthOfDate) + (24 * 3600)));

        } else {
            query.addCriteria(Criteria.where("uid").is(uid).and("cid").is(cid).and("gid").is(gid).and("payTime").gte(Tools.dateToSec(firstMonthOfDate)).lt(Tools.dateToSec(endMonthOfDate) + (24 * 3600)));
        }
        PayMentForKeep res = mongoTemplate.findOne(query, PayMentForKeep.class);
        if (res == null) {
            return true;
        } else {
            return false;
        }
    }

    public PayMentForKeep findOnePayerForPay(PayMentForKeep payMentForKeep) {
        String uid = payMentForKeep.getUid();
        String gid = payMentForKeep.getGid();
        String sid = payMentForKeep.getSid();

        //ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
        MongoTemplate mongoTemplate = (MongoTemplate) ac.getBean("mongoTemplate");
        Query query = new Query();

        if (useSid) {
            query.addCriteria(Criteria.where("uid").is(uid).and("gid").is(gid).and("sid").is(sid));

        } else {

            query.addCriteria(Criteria.where("uid").is(uid).and("gid").is(gid));
        }

        PayMentForKeep pmfk = mongoTemplate.findOne(query, PayMentForKeep.class);

        return pmfk;

    }

    //应该还有问题，有bug
    public float findAllPayMoney(PayMentForKeep payMentForKeep) {
        String cid = payMentForKeep.getCid();
        String gid = payMentForKeep.getGid();
        String sid = payMentForKeep.getSid();
        long date = payMentForKeep.getPayTime();


        //ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
        MongoTemplate mongoTemplate = (MongoTemplate) ac.getBean("mongoTemplate");
        float total = 0;
        Query query = new Query();

        if (useSid) {
            query.addCriteria(Criteria.where("cid").is(cid).and("gid").is(gid).and("sid").is(sid).and("payTime").lte(date));

        } else {
            query.addCriteria(Criteria.where("cid").is(cid).and("gid").is(gid).and("payTime").lte(date));
        }

        List<PayMentForKeep> resList = mongoTemplate.find(query, PayMentForKeep.class);
        for (PayMentForKeep mentForKeep : resList) {
            total += mentForKeep.getAmount();
        }


        return total;
    }
    
    public Player findOnePlayer(Player player) {
        String gid = player.getGid();
        String sid = player.getSid();
        String uid = player.getUid();
        //ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
        MongoTemplate mongoTemplate = (MongoTemplate) ac.getBean("mongoTemplate");

        Query query = new Query();

        if (useSid) {
            query.addCriteria(Criteria.where("uid").is(uid).and("gid").is(gid).and("sid").is(sid));

        } else {
            query.addCriteria(Criteria.where("uid").is(uid).and("gid").is(gid));

        }
        Player resPlayer = mongoTemplate.findOne(query, Player.class);
        return resPlayer;
    }

    //计算是否为新增用户(最终用于计算新增首次付费用户数)
    public Player findNewAddPlayerByRegdate(Player player, long startTime, long endTime) {
        String gid = player.getGid();
        String sid = player.getSid();
        String uid = player.getUid();
        //ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
        MongoTemplate mongoTemplate = (MongoTemplate) ac.getBean("mongoTemplate");

        Query query = new Query();

        if (useSid) {
            query.addCriteria(Criteria.where("uid").is(uid).and("gid").is(gid).and("sid").is(sid).and("regdate").gte(startTime).lt(endTime));

        } else {

            query.addCriteria(Criteria.where("uid").is(uid).and("gid").is(gid).and("regdate").gte(startTime).lt(endTime));
        }

        Player resPlayer = mongoTemplate.findOne(query, Player.class);
        return resPlayer;
    }

    //计算是否为活跃用户(最终用于计算活跃用户付费率)
    public Player findActivePlayerByLastDate(Player player, long startTime, long endTime) {
        String gid = player.getGid();
        String sid = player.getSid();
        String uid = player.getUid();
        //ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
        MongoTemplate mongoTemplate = (MongoTemplate) ac.getBean("mongoTemplate");

        Query query = new Query();

        if (useSid) {
            query.addCriteria(Criteria.where("uid").is(uid).and("gid").is(gid).and("sid").is(sid).and("lastdate").gte(startTime).lt(endTime));

        } else {

            query.addCriteria(Criteria.where("uid").is(uid).and("gid").is(gid).and("lastdate").gte(startTime).lt(endTime));
        }

        Player resPlayer = mongoTemplate.findOne(query, Player.class);
        return resPlayer;
    }


    //获取数据,通过ChannelID,GameID,ServerID,以及时间段start Date\ end date
    public void getPlayersListMongo(String cID, String gID, String sID, Date sDate, Date eDate) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        //ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
        MongoTemplate mongoTemplate = (MongoTemplate) ac.getBean("mongoTemplate");
        Query query = new Query();
        query.addCriteria(Criteria.where("date").gt(sDate).lt(eDate));
        query.addCriteria(Criteria.where("channel_from").is(cID));
        MongoTest mt = mongoTemplate.findOne(query, MongoTest.class);
        List<MongoTest> mtList = mongoTemplate.find(query, MongoTest.class);

    }
}
