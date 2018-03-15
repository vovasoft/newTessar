package com.vova.tessarwebserver.controler;


import com.vova.tessarwebserver.dbmapper.AllInOneMapper;
import com.vova.tessarwebserver.domain.channel.*;
import com.vova.tessarwebserver.util.Tools;
import lombok.extern.slf4j.Slf4j;
import org.hibernate.proxy.map.MapLazyInitializer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author: Vova
 * @create: date 13:51 2018/2/5
 */

@Slf4j
@RestController
//@SpringBootApplication

@RequestMapping("/channel")
public class ControlerChannel {
//    @Value("${upload.filepath}")
//    private String UPLOADED_FOLDER;
    
    @Autowired
    private AllInOneMapper allInOneMapper;

    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    
    @GetMapping("/error")
    @ResponseStatus(code= HttpStatus.INTERNAL_SERVER_ERROR,reason="server error")
    public String error(){
        return "vova";
    }

    @GetMapping("/exist")
    @ResponseStatus(code= HttpStatus.FOUND,reason="exist")
    public String found(){
        return "vova";
    }
    
    private String tips="请选择";
    //获取游戏
    @GetMapping("/getChannelGames")
    @ResponseBody
    Object getChannelGames() throws Exception {
        List<String> games = allInOneMapper.getChannelGamesName();
        games.add(0,tips);
        return Tools.success(games);
    }
    
    
    //获取主渠道
    @GetMapping("/getMainChannel")
    @ResponseBody
    Object getMainChannel() {
         List<String> mainChannelsName = allInOneMapper.getMainChannelName();
         mainChannelsName.add(0,tips);
         return Tools.success(mainChannelsName);
    }
    
    //获取入口类型
    @GetMapping("/getEntryType")
    Object getEntryType() {
        List<String> entryJsons = new ArrayList<>();
        entryJsons.add(tips);
        entryJsons.add("Facebook APP");
        entryJsons.add("Landing Page");
        return Tools.success(entryJsons);
    }

    //获取入口定义
    @GetMapping("/getEntryDefine")
    @ResponseBody
    Object getEntryDefine(HttpServletResponse response,@RequestParam String game, @RequestParam String entryType) throws IOException {
        List<String> res=null;
        if (entryType.equals("Facebook APP")){
            res = allInOneMapper.getEntryDefineFB(game,entryType);
        }else if (entryType.equals("Landing Page")){
            res=allInOneMapper.getEntryDefineLP(game,entryType);
        }
        if (res != null) {
            res.add(0,tips);
            return  Tools.success(res);
        }else{
         //   response.sendRedirect("error");
            return Tools.error(440,"error res is null");
        }
    }

    //提交信息，拼接字符串，存储渠道列表返回url
    @GetMapping("/channelGenerate")
    Object channelGenerate(HttpServletResponse response,@RequestParam String game,@RequestParam String entryType,
                           @RequestParam String define,@RequestParam String mainChannel,
                           @RequestParam String kws,@RequestParam String user,@RequestParam String time,
                           @RequestParam boolean useShort) throws IOException {
        //
        String[] subStr = kws.split("@");
        Date date = new Date(System.currentTimeMillis());
        time = sdf.format(date);
        String keyWords = Tools.createKeyWords(subStr);
        String url=null;
        List<String> shortMC = allInOneMapper.getMainChannel(mainChannel);
        String cid = shortMC.get(0)+keyWords;

        System.out.println("keywords = "+keyWords);
        if (entryType.equals("Facebook APP")){
            url = "apps.facebook.com/"+define+"/?fb_souce="+cid;
        }else if (entryType.equals("Landing Page")){
            List<ChannelGames> cgames = allInOneMapper.getChannelGame(game);
            ChannelGames cgame = cgames.isEmpty()?null:cgames.get(0);
            if (cgame==null) return "channel game is not exist";
            List<String> entryNames = allInOneMapper.getEntryNameLP(game,define);
            String entryName = entryNames.isEmpty()?"":entryNames.get(0);
            url=cgame.getPrefix()+".xcloudgame.com/index.php?m=landing&a=index&lang="+cgame.getLang()+ "&lp="+entryName+"&source="+cid;
        }
        System.out.println("mainID"+ mainChannel);
        System.out.println("url:"+url);
        System.out.println("cid:"+cid);

        
        
        if (url == null) {
//            response.sendRedirect("error");
//            return "url is null error!!!";
            return Tools.error(440,"error res is null");
        }
        
        //find url is not exist
        List<ChannelData>  cd = allInOneMapper.findChannelData(url);
        
        String sinaUrl = "http://api.t.sina.com.cn/short_url/shorten.json?source=3271760578&url_long=http://"+url;
        String result = Tools.funHTTP(sinaUrl);
        List<String> resStr=new ArrayList<>();

        System.out.println(result);
        if (cd.isEmpty()){
            allInOneMapper.insertChannelData(game,entryType,define,mainChannel,url,user, time);
            ChannelIndex channelIndex = allInOneMapper.selectOneChannelIndex(cid);
            if (channelIndex==null){
                System.out.println("insert newOne");
                int resInt = allInOneMapper.insertOneChannelIndex(mainChannel,cid);
                System.out.println("insert and result"+resInt);
            }
            if (useShort){
                resStr.add(result);
                return Tools.success(resStr);
            }else{
                resStr.add(url);
                return Tools.success(resStr);
            }
            
        }else{
//            response.sendRedirect("found");
//            return "exist";
            return Tools.error(302,"error exist channel");
        }
        
    }
    
    
    @GetMapping("getCountChannelData")
    Object getCountCD(){
        return Tools.success(allInOneMapper.countChannelData());
    }

    @GetMapping("/getChannelData")
    Object getChannelData(@RequestParam int count,@RequestParam int page) {
        List<ChannelData> res=null;
        int start = (page-1)*count;
        int allCount = allInOneMapper.countChannelData();
        res = allInOneMapper.selectChannelData(start,count);
        ChannelDataJson channelDataJson = new ChannelDataJson(res,allCount);
        return Tools.success(channelDataJson);
    }
    
    @GetMapping("findoutChannelData")
    Object findoutChannelData(@RequestParam int count,@RequestParam int page,@RequestParam String key,@RequestParam String time){
        List<ChannelData> res = null;
        int start = (page-1)*count;
        int allCount = allInOneMapper.findCountChannelData("%"+key+"%",time!=""?time:null);
        
        res = allInOneMapper.findOutChannelData("%"+key+"%",time!=""?"%"+time+"%":null,start,count);
        if (allCount==0|| res.isEmpty()){
            return Tools.error(302,"found nothing");
        }
        ChannelDataJson channelDataJson = new ChannelDataJson(res,allCount);
        return Tools.success(channelDataJson);
    }
    


    
}