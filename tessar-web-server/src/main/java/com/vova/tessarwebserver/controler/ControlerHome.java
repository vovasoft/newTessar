package com.vova.tessarwebserver.controler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;

/**
 * @author: Vova
 * @create: date 18:15 2018/1/11
 */

@Controller
public class ControlerHome {
    @RequestMapping("/")
    public String home(){
        return"index";
    }


}
