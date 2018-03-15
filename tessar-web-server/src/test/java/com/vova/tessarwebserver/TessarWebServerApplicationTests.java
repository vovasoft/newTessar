package com.vova.tessarwebserver;

import com.google.gson.Gson;
import com.vova.tessarwebserver.Scheduled.AdConfig;
import com.vova.tessarwebserver.Scheduled.FB_JSON;
import com.vova.tessarwebserver.Scheduled.Fb_Ad;
import com.vova.tessarwebserver.Scheduled.TimeRange;
import com.vova.tessarwebserver.dbmapper.AllInOneMapper;
import com.vova.tessarwebserver.util.Tools;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class TessarWebServerApplicationTests {
    //
//
    @Autowired
    AllInOneMapper allInOneMapper;

    //	static SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
//
//
    @Test
    public void contextLoads() throws IOException {

        List<String> list = allInOneMapper.showTables();
        System.out.println(list);

        
//		Gson gson = new Gson();
//
//
//		String url= AdConfig.BASEURL+ AdConfig.ACCOUNT_ID+AdConfig.APP +
//				"fields="+ AdConfig.ALLINONE +
//				"&time_range="+gson.toJson(new TimeRange("2017-12-17","2017-12-17"))+
//				"&access_token="+ AdConfig.ACCESS_TOKEN+"&level=ad";
//
//
//		OkHttpClient okHttpClient = new OkHttpClient();
//		Request request = new Request.Builder().get().url(url).build();
//		Response response = okHttpClient.newCall(request).execute();
//		ResponseBody responseBody=response.body();
//		try {
//			String res = responseBody.string();
//			FB_JSON fb_json = gson.fromJson(res,FB_JSON.class);
//			System.out.println(fb_json);
//			for (Fb_Ad fb : fb_json.getData()) {
//				fb.showAll();
//				allInOneMapper.InsertFB(fb);
//				//        System.out.println("=====================================");
//			}
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
    }

    //
   


}
