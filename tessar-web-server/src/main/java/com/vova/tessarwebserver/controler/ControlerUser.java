package com.vova.tessarwebserver.controler;

import com.vova.tessarwebserver.dbmapper.UserInfoDao;
import com.vova.tessarwebserver.dbmapper.AllInOneMapper;
import com.vova.tessarwebserver.domain.User;
import com.vova.tessarwebserver.util.PassWord;
import com.vova.tessarwebserver.domain.security.UserInfo;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * @author: Vova
 * @create: date 15:30 2018/1/8
 */
@RestController
@RequestMapping("/user")
public class ControlerUser {
    @Resource

    private UserInfoDao userInfoDao;

    @Autowired
    private AllInOneMapper allInOneMapper;

    @GetMapping("/add")
    @ResponseBody
    public Object add(@RequestParam String name,@RequestParam String passwd) {

        UserInfo u = userInfoDao.findByUsername(name);
        if (u != null) {
            return "Sorry Name is existed !!!!!!!!";
        }

        UserInfo userInfo = new UserInfo();
        userInfo.setName("管理员");
        userInfo.setUsername(name);
        String salt = PassWord.getRandom(24, PassWord.TYPE.LETTER_CAPITAL_NUMBER);
        userInfo.setSalt(salt);
        userInfo.setPassword(new SimpleHash("md5",passwd,name+salt,2).toString());
        return userInfoDao.save(userInfo);

//        List<User> uList = allInOneMapper.findUserList(user.getName());
//        if (uList.size()!=0) {
//            return -2;
//        } else {
//            return allInOneMapper.insertUser(user.getName(),user.getPasswd());
//        }
    }

//    @PostMapping("/login")
//    @ResponseBody
//    public Object login(@RequestBody User user) {
//        List<User> uList = allInOneMapper.checkUser(user.getName(),user.getPasswd());
//        if (uList.size()!=0) {
//            return 1;
//        }
//        return 0;
//    }



}
