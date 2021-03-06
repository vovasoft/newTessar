package com.vova.tessarwebserver.controler;

/**
 * @author: Vova
 * @create: date 9:44 2018/1/2
 */


import com.vova.tessarwebserver.dbmapper.AllInOneMapper;
import com.vova.tessarwebserver.domain.initdata.SelectList;
import com.vova.tessarwebserver.domain.initdata.InitJson;
import com.vova.tessarwebserver.domain.newadd.NewAdd;
import com.vova.tessarwebserver.domain.newadd.NewAddJson;

import com.vova.tessarwebserver.domain.stayman.StayJson;
import com.vova.tessarwebserver.domain.stayman.StayParent;
import com.vova.tessarwebserver.util.Tools;


import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * @author: Vova
 * @create: date 14:10 2017/12/29
 */

@Slf4j
@RestController
//@SpringBootApplication
@RequestMapping("/app")
public class ControlerGame {


    @Autowired
    private AllInOneMapper allInOneMapper;
    //  static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");


    //getGameDate
    @GetMapping("/getGameDate")
    @ResponseBody
    Object getGameDate(@RequestParam String app, @RequestParam String cid, @RequestParam String gid, @RequestParam String sid, @RequestParam String sDate, @RequestParam String eDate) throws ParseException {
        try {
            List<NewAdd> nadList = null;
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");

            nadList = allInOneMapper.findCGSNewAddListByTimes(app,
                    cid != "" ? cid : null,
                    gid != "" ? gid : null,
                    sid != "" ? sid : null, sdf.parse(sDate), sdf.parse(eDate));
            ArrayList<NewAddJson> nj = new ArrayList<>();
            for (int i = 0; i < nadList.size(); i++) {
                NewAdd nad = nadList.get(i);
                nj.add(new NewAddJson(sdf.format(nad.getDateID()),nad.getcID(), nad.getNewAddNum(), nad.getActiveNum(), nad.getLoginCount(), nad.getAverageLogin(), nad.getAllPlayerNum()));
            }
            return nj;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @GetMapping("/getStayDate")
    @ResponseBody
    Object getStayDate(@RequestParam String app, @RequestParam String cid, @RequestParam String gid, @RequestParam String sid, @RequestParam String sDate, @RequestParam String eDate) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        List<StayParent> spList = allInOneMapper.findCGSStayListByTimes(app, cid != "" ? cid : null,
                gid != "" ? gid : null,
                sid != "" ? sid : null, sdf.parse(sDate), sdf.parse(eDate));
        ArrayList<StayJson> sj = new ArrayList<>();
        for (int i = 0; i < spList.size(); i++) {
            StayParent sp = spList.get(i);
            String [] combinStr=Tools.combine2Str(Tools.strToNumArrayScale(sp.getStayList(), ",", sp.getNewAddNum()), Tools.strToStrArray(sp.getStayList(), ","));
            sj.add(new StayJson(sdf.format(sp.getDateID()),sp.getcID(), sp.getNewAddNum(),combinStr));
        }

        return sj;
    }

    @GetMapping("/getStayDateOnly")
    @ResponseBody
    Object getStayDateOnly(@RequestParam String app, @RequestParam String cid, @RequestParam String gid, @RequestParam String sid, @RequestParam String sDate, @RequestParam String eDate) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        List<StayParent> spList = allInOneMapper.findCGSStayListByTimes(app, cid != "" ? cid : null,
                gid != "" ? gid : null,
                sid != "" ? sid : null, sdf.parse(sDate), sdf.parse(eDate));
        ArrayList<StayJson> sj = new ArrayList<>();
        for (int i = 0; i < spList.size(); i++) {
            StayParent sp = spList.get(i);
//            String [] combinStr=Tools.combine2Str(Tools.strToNumArrayScale(sp.getStayList(), ",", sp.getNewAddNum()), Tools.strToStrArray(sp.getStayList(), ","));
            sj.add(new StayJson(sdf.format(sp.getDateID()),sp.getcID(), sp.getNewAddNum(), Tools.strToStrArray(sp.getStayList(),",")));
        }

        return sj;
    }
    @GetMapping("/getGameDateFather")
    @ResponseBody
    Object getGameDateFather(@RequestParam String app, @RequestParam String father, @RequestParam String gid, @RequestParam String sid, @RequestParam String sDate, @RequestParam String eDate) throws ParseException {
        try {

            List<String> cNames = allInOneMapper.findCidsByFather("channellist", father);
            List<NewAdd> nadList = null;
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
            ArrayList<ArrayList<NewAddJson>> fatherList = new ArrayList<>();
            for (String cName : cNames) {
                nadList = allInOneMapper.findCGSNewAddListByTimes(app,
                        cName != "" ? cName : null,
                        gid != "" ? gid : null,
                        sid != "" ? sid : null, sdf.parse(sDate), sdf.parse(eDate));
                ArrayList<NewAddJson> nj = new ArrayList<>();
                for (int i = 0; i < nadList.size(); i++) {
                    NewAdd nad = nadList.get(i);
                    nj.add(new NewAddJson(sdf.format(nad.getDateID()),nad.getcID(), nad.getNewAddNum(), nad.getActiveNum(), nad.getLoginCount(), nad.getAverageLogin(), nad.getAllPlayerNum()));
                }
                fatherList.add(nj);
            }
            return fatherList;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    @GetMapping("/getCGS")
    @ResponseBody
    Object getCGS() {
        InitJson ij = new InitJson();
        List<SelectList> cl = allInOneMapper.findCGS("channellist");
        ArrayList<String> str = new ArrayList<>();
        for (SelectList selectList : cl) {
            str.add(selectList.getName());
        }
        ij.setcNames(str);

        str = new ArrayList<>();
        List<SelectList> gl = allInOneMapper.findCGS("gamelist");
        for (SelectList selectList : gl) {
            str.add(selectList.getName());
        }
        ij.setgNames(str);

        List<SelectList> sl = allInOneMapper.findCGS("serverlist");
        str = new ArrayList<>();
        for (SelectList selectList : sl) {
            str.add(selectList.getName());
        }
        ij.setsNames(str);

        return ij;

    }

}