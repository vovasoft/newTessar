package com.vova.tessarwebserver.Scheduled;


import com.google.gson.Gson;
import com.vova.tessarwebserver.dbmapper.AllInOneMapper;
import lombok.extern.slf4j.Slf4j;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.net.ssl.*;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * @author: Vova
 * @create: date 10:32 2018/1/11
 */

@Slf4j
@Component
public class ScheduledAPI {
    @Autowired
    private AllInOneMapper allInOneMapper;

    static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

//    @Scheduled(cron="0 0/2 12-24 * * ?")
//    public void executeFileDownLoadTask() {
//
//        // 间隔2分钟,执行工单上传任务
//        Thread current = Thread.currentThread();
//        System.out.println("定时任务1:"+current.getId());
//        log.info("ScheduledTest.executeFileDownLoadTask 定时任务1:"+current.getId()+ ",name:"+current.getName());
//    }

//    @Scheduled(cron = "0/10 * * * * ?")
    @Scheduled(cron = "0 0 0/1 * * ?")
    public void executeUploadTask() throws IOException, NoSuchAlgorithmException, KeyStoreException, KeyManagementException {

        // 间隔1小时,执行工单上传任务
        Thread current = Thread.currentThread();
        log.info("ScheduledTest.executeUploadTask 定时任务2:" + current.getId() + ",name:" + current.getName());
        long curTime = System.currentTimeMillis();
        String curStr = sdf.format(curTime);

        log.info(curStr);

        Gson gson = new Gson();
        String url = AdConfig.BASEURL + AdConfig.ACCOUNT_ID + AdConfig.APP +
                "fields=" + AdConfig.ALLINONE +
                "&time_range=" + gson.toJson(new TimeRange(curStr, curStr)) +
                "&access_token=" + AdConfig.ACCESS_TOKEN + "&level=ad";

        log.info("url:" + url);

        StringBuilder result = new StringBuilder();
        URL u = new URL(url);
        HttpURLConnection conn = (HttpURLConnection) u.openConnection();
        conn.setRequestMethod("GET");
        BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        String line;
        while ((line = rd.readLine()) != null) {
            result.append(line);
        }
        rd.close();
        String res = result.toString();
        log.info(res);
        FB_JSON fb_json = gson.fromJson(res, FB_JSON.class);
        System.out.println(fb_json);
        for (Fb_Ad fb : fb_json.data) {
            List<Fb_Ad> fb_Lists = allInOneMapper.findFb_Ad(curStr, fb.getAd_id());
            if (fb_Lists.size() == 0) {
                log.info("allInOneMapper.InsertFB(fb)");
                allInOneMapper.InsertFB(fb);
            } else {
                log.info("allInOneMapper.updateFb_Ad(fb);");
                allInOneMapper.updateFb_Ad(fb);
            }
        }
    }
//    @Scheduled(cron="0 0/3 5-23 * * ?")
//    public void executeUploadBackTask() {
//
//        // 间隔3分钟,执行工单上传任务
//        Thread current = Thread.currentThread();
//        System.out.println("定时任务3:"+current.getId());
//        log.info("ScheduledTest.executeUploadBackTask 定时任务3:"+current.getId()+ ",name:"+current.getName());
//    }

}
