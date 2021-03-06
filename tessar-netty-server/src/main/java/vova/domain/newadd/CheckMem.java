package vova.domain.newadd;//package vova.domain.newadd;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import vova.dao.dbsql.EnumSQL;
import vova.dao.dbsql.UseMySql;
import vova.domain.overview.ThreeNumDay;
import vova.domain.overview.ThreeNumMon;
import vova.domain.overview.ThreeNumWeek;
import vova.domain.payment.PayMentDay;
import vova.domain.payment.PayMentMon;
import vova.domain.payment.PayMentWeek;
import vova.domain.stayman.StayDay;
import vova.domain.stayman.StayMon;
import vova.domain.stayman.StayWeek;
import vova.domain.staypay.StayPayDay;
import vova.domain.staypay.StayPayMon;
import vova.domain.staypay.StayPayWeek;

import java.io.IOException;
import java.io.InputStream;
import java.util.Random;

/**
 * @author vova
 * @version Create in 下午12:05 2018/3/14
 */


public class CheckMem {

    public static void stackOverFlow(long l) throws IOException {

        ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
        UseMySql mys = (UseMySql) ac.getBean("useMySql");
        Random random = new Random(l);
        int next = random.nextInt();
        util(NewAddDay.class, new Object());
        util(NewAddMon.class, new Object());
        util(StayPayMon.class, new Object());
        util(ThreeNumDay.class, new Object());

        util(PayMentMon.class, new Object());
        util(PayMentWeek.class, new Object());
        util(StayDay.class, new Object());

        util(ThreeNumMon.class, new Object());
        util(ThreeNumWeek.class, new Object());
        util(PayMentDay.class, new Object());
        util(NewAddWeek.class, new Object());

        util(StayMon.class, new Object());
        util(StayWeek.class, new Object());
        util(StayPayDay.class, new Object());
        util(StayPayWeek.class, new Object());
    }

    public static void checkError() throws IOException {
            stackOverFlow(checkTime);


    }
    static String resoure = "batis-conf.xml";

    public static void util(Class clazz, Object object) throws IOException {
        InputStream inputStream = Resources.getResourceAsStream(resoure);
        SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession ss = sf.openSession();
        Object res = null;
        ss.update(clazz.getSimpleName()  + ".truncate", object);
        ss.commit();
        ss.close();
    }
}
