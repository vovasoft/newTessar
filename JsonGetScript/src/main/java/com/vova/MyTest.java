package com.vova;

import com.oracle.deploy.update.UpdateCheck;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;
import java.util.Random;

/**
 * @author: Vova
 * @create: date 10:31 2018/1/8
 */
public class MyTest {
    public static void funHTTP(String url) {
        String result = "";
        BufferedReader in = null;
        try {
            String urlNameString = url;
            URL realUrl = new URL(urlNameString);
            // 打开和URL之间的连接
            URLConnection connection = realUrl.openConnection();
            // 设置通用的请求属性
            connection.setRequestProperty("accept", "*/*");
            connection.setRequestProperty("connection", "Keep-Alive");
            connection.setRequestProperty("user-agent",
                    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
            // 建立实际的连接
            connection.connect();
            // 获取所有响应头字段
            Map<String, List<String>> map = connection.getHeaderFields();
            // 遍历所有的响应头字段
            for (String key : map.keySet()) {
                System.out.println(key + "--->" + map.get(key));
            }
            // 定义 BufferedReader输入流来读取URL的响应
            in = new BufferedReader(new InputStreamReader(
                    connection.getInputStream()));
            String line;
            while ((line = in.readLine()) != null) {
                result += line;
            }
            System.out.println(result);
        } catch (Exception e) {
            System.out.println("发送GET请求出现异常！" + e);
            e.printStackTrace();
        }
        // 使用finally块来关闭输入流
        finally {
            try {
                if (in != null) {
                    in.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void createPlayer() throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        long regInt = 0;
        String url = "http://localhost:9999/tessar/statis/statis?action=game&json=";
        String str = "";
        //打印注册用户
        for (int i = 1; i <= 20; i++) {
            regInt = Tools.dateToSec(sdf.parse("2017-12-" + (i % 30)));
            str = "{\"uid\":01" + i + ",\"regdate\":" + regInt + ",\"lastdate\":" + regInt + ",\"cid\":\"_0003000110000000_facebook-bloodstrike13-18chennormal_02_02\",\"gid\":\"bloodstrke\",\"sid\":\"0\",\"enter\":\"enenen\"}";
            System.out.println(url + str);
            funHTTP(url + str);

            str = "{\"uid\":02" + i + ",\"regdate\":" + regInt + ",\"lastdate\":" + regInt + ",\"cid\":\"_0003000110000000_facebook-bloodstrike13-18chennormal_02_02\",\"gid\":\"bloodstrke\",\"sid\":\"0\",\"enter\":\"enenen\"}";
            System.out.println(url + str);
            funHTTP(url + str);
        }

        Random random = new Random(165461212);

    }

    public static void createPlayerOne(String uid, long time) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        long regInt = 0;
        String url = "http://localhost:9999/tessar/statis/statis?action=game&json=";
        String str = "";
        //打印注册用户
        for (int i = 1; i < 2; i++) {
            regInt = Tools.dateToSec(sdf.parse("2019-12-1"));
            str = "{\"uid\":" + uid + ",\"regdate\":" + time + ",\"lastdate\":" + (time + 1) + ",\"cid\":\"_0003000110000000_facebook-bloodstrike13-18chennormal_02_02\",\"gid\":\"bloodstrke\",\"sid\":\"0\",\"enter\":\"enenen\"}";
            System.out.println(url + str);
            funHTTP(url + str);
        }

        Random random = new Random(165461212);

    }

    public static void createUpdateOne(String uid, int n) throws ParseException {
        String url = "http://localhost:9999/tessar/statis/statis?action=game&json=";
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        long regInt = 0;
        System.out.println(url);
        for (int i = 1; i <= n; i++) {
            int r = (int) (Math.random() * 100);
            regInt = Tools.dateToSec(sdf.parse("2017-12-" + (i % 30)));
            String str = "{\"uid\":" + uid + ",\"regdate\":" + 1514284954 + ",\"lastdate\":" + (regInt + (r * 80000)) + ",\"cid\":\"_0003000110000000_facebook-bloodstrike13-18chennormal_02_02\",\"gid\":\"0213\",\"sid\":\"0\",\"enter\":\"enenen\"}";
            funHTTP(url + str);
        }
    }

    public static void payOne(String uid, long time) throws ParseException {
        String url = "http://localhost:9999/tessar/statis/statis?action=pay&json=";
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        long regInt = 0;
        int r = (int) (Math.random() * 50);
        regInt = time;
        String str = "{\"oid\":\"order001\",\"gid\":\"bloodstrke\",\"sid\":\"0\",\"uid\":\"" + uid + "\",\"payType\":\"64\",\"currency\":\"USD\",\"amount\":" + 1000 + ",\"payTime\":" + regInt + "}";
        //     System.out.println(url+str);
        funHTTP(url + str);
        
        System.out.println(url + str);
    }


    public static void createUpdate() throws ParseException {
        String url = "http://localhost:9999/tessar/statis/statis?action=game&json=";
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        long regInt = 0;
        System.out.println(url);
        for (int i = 1; i <= 20; i++) {
            int r = (int) (Math.random() * 100);
            //    System.out.println("r:"+r);
            regInt = Tools.dateToSec(sdf.parse("2017-12-" + (i % 30)));
            String str = "{\"uid\":00" + i + ",\"regdate\":" + 1514284954 + ",\"lastdate\":" + (regInt + (r * 80000)) + ",\"cid\":\"_0003000110000000_facebook-bloodstrike13-18chennormal_02_02\",\"gid\":\"bloodstrke\",\"sid\":\"0\",\"enter\":\"enenen\"}";
            funHTTP(url + str);

            regInt = Tools.dateToSec(sdf.parse("2017-12-" + (i % 30)));
            str = "{\"uid\":01" + i + ",\"regdate\":" + regInt + ",\"lastdate\":" + (regInt + (r * 80000)) + ",\"cid\":\"_0003000110000000_facebook-bloodstrike13-18chennormal_02_02\",\"gid\":\"bloodstrke\",\"sid\":\"0\",\"enter\":\"enenen\"}";
            funHTTP(url + str);
        }
    }
//
//    public static void testWebServerThread(){
//       for (int i=0;i<10;i++) {
//           funHTTP("http://192.168.1.110:9898/app/getGameDate?app=newaddday&cid=ngBrazil&gid=bloodstrke&sid=0&sDate=2017-12-5&eDate=2017-12-19");
//       }
//    }


    public static void pay() throws ParseException {
        String url = "http://localhost:9999/tessar/statis/statis?action=pay&json=";
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        long regInt = 0;
        System.out.println(url);
        for (int i = 1; i < 10; i++) {
            int r = (int) (Math.random() * 50);
            regInt = Tools.dateToSec(sdf.parse("2017-12-" + (i % 30)));
            String str = "{\"oid\":\"order001\",\"gid\":\"0213\",\"sid\":\"0\",\"uid\":\"00" + i + "\",\"payType\":\"64\",\"currency\":\"USD\",\"amount\":" + (1 + r * 1.5) + ",\"payTime\":" + (regInt + (r * 40000)) + "}";
            //     System.out.println(url+str);
            funHTTP(url + str);
        }
    }

    public static void main(String[] args) throws ParseException {
//        createPlayerOne("001002", 1514284954);
//        createPlayerOne("002", 1514284954);
//        createPlayerOne("003", 1514284954);
//        for (int i = 0; i < 100; i++) {
//            createPlayerOne("004", 1514284954);
//        }

//        createPlayerOne("005",1514284954);
//        createPlayerOne("006",1514384954);
//        createPlayerOne("007",1514384954);
//        createPlayerOne("008",1514484954);
//
        long l1 = System.currentTimeMillis();
        createPlayerOne("009",1514484954);
        for (int i = 0; i < 5; i++) {
            createUpdate();
        }   

        System.out.println("&&&&&&&&&&&"+(System.currentTimeMillis()-l1));
////        System.out.println(123);
//
//        payOne("001",1514284954);
//        for (int i=0;i<100;i++){
//
//            payOne("001", 1514284954);
//            payOne("002", 1514384954);
//        }
    }
}
