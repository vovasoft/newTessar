package com.vova.tessarwebserver.controler;

import com.vova.tessarwebserver.dbmapper.AllInOneMapper;
import com.vova.tessarwebserver.domain.channel.ChannelFactory;
import com.vova.tessarwebserver.domain.initdata.CreateChannelRule;
import com.vova.tessarwebserver.domain.initdata.MainChannel;
import com.vova.tessarwebserver.domain.initdata.SubChannel;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.ParseException;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**
 * @author: Vova
 * @create: date 13:51 2018/2/5
 */

@Slf4j
@RestController
//@SpringBootApplication

@RequestMapping("/channel")
public class ControlerChannel {
    @Value("${upload.filepath}")
    private String UPLOADED_FOLDER;

//    private static Lock lock = new ReentrantLock();// 锁对象

    @Autowired
    private AllInOneMapper allInOneMapper;
    //  static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");


    //getGameDate
    @PostMapping("/upload")
    @ResponseBody
    Object uploadChannel(@RequestParam String pcid, @RequestParam String cid,
                         @RequestParam(value = "file") MultipartFile file, RedirectAttributes redirectAttributes, @RequestParam String des, @RequestParam String tags) throws ParseException {
//        lock.lock();
        if (file.isEmpty()) {
            redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
//            lock.unlock();
            return "redirect:uploadStatus";
        }
        try {
            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
            log.info(UPLOADED_FOLDER);
            Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
            Files.write(path, bytes);

            redirectAttributes.addFlashAttribute("message",
                    "You successfully uploaded '" + file.getOriginalFilename() + "'");

        } catch (IOException e) {
//            lock.unlock();
            e.printStackTrace();
        }
        ChannelFactory cf = new ChannelFactory();
        cf.setCid(cid);
        cf.setDes(des);
        cf.setImg(UPLOADED_FOLDER + file.getOriginalFilename());
        cf.setPcid(pcid);
        cf.setTags(tags);
        List<ChannelFactory> cfList = allInOneMapper.findchannel(cid);
        if (cfList.size() > 0) {
//            lock.unlock();
            return "error cid exist in DB";
        }
        int res = allInOneMapper.insertChannel(cf);
        System.out.println("res:" + res);
//        lock.unlock();
        return "redirect:/uploadStatus";
    }


    @GetMapping("/download")
    @ResponseBody
    Object downloadChannel(@RequestParam String cid) throws ParseException {
        List<ChannelFactory> cfList = allInOneMapper.findchannel(cid);
        if (cfList.size() == 0) {
//            lock.unlock();
            return "error There is not Exist Please check it again!";
        }

        return cfList.get(0);
    }

    /*===========================================以上需求暂时不用2018-2-7=============================================*/

    @GetMapping("/getMainChannel")
    @ResponseBody
    Object getMainChannel() {
         List<MainChannel> mainChannels = allInOneMapper.getMainChannel();
         return mainChannels;
    }


    @GetMapping("/getCreateChannelRule")
    @ResponseBody
    Object getCreateChannelRule() {
        List<CreateChannelRule> createChannelRules = allInOneMapper.getCreateChannelRule();
        return createChannelRules;
    }


    @GetMapping("/uploadNewChannel")
    @ResponseBody
    Object uploadNewChannel(@RequestParam String mainChannel,@RequestParam String longUrl,@RequestParam String shortUrl,@RequestParam String keyWords) {
        List<SubChannel> subChannels = allInOneMapper.getSubChannel(mainChannel,keyWords);
        if (subChannels.size()>0){
            return -1;
        }

        allInOneMapper.insertSubChannel(mainChannel,longUrl,shortUrl,keyWords);

        return 1;
    }

}