package com.vova.tessarwebserver.controler;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * @author: Vova
 * @create: date 18:15 2018/1/11
 */

@Controller
public class ControlerHome {

    @RequestMapping("/login")
    public String login(HttpServletRequest request, Map<String, Object> map) throws Exception{
        System.out.println("HomeController.login()");
        // 登录失败从request中获取shiro处理的异常信息。
        // shiroLoginFailure:就是shiro异常类的全类名.
        String exception = (String) request.getAttribute("shiroLoginFailure");
        System.out.println("exception=" + exception);
        String msg = "";
        if (exception != null) {
            if (UnknownAccountException.class.getName().equals(exception)) {
                System.out.println("UnknownAccountException -- > 账号不存在：");
                msg = "UnknownAccountException -- > 账号不存在：";
            } else if (IncorrectCredentialsException.class.getName().equals(exception)) {
                System.out.println("IncorrectCredentialsException -- > 密码不正确：");
                msg = "IncorrectCredentialsException -- > 密码不正确：";
            } else if ("kaptchaValidateFailed".equals(exception)) {
                System.out.println("kaptchaValidateFailed -- > 验证码错误");
                msg = "kaptchaValidateFailed -- > 验证码错误";
            } else {
                msg = "else >> "+exception;
                System.out.println("else -- >" + exception);
            }
        }
        map.put("msg", msg);
        // 此方法不处理登录成功,由shiro进行处理
        return "/login";
    }


    @RequestMapping("/")
    public String home(HttpServletRequest httpRequest){
        httpRequest.getCookies();
        return"overview";
    }

    @RequestMapping("/test")
    public String test(){
        return"test";
    }


    @RequestMapping("/403")
    public String unauthorizedRole(){
        System.out.println("------没有权限-------");
        return "403";
    }

    @RequestMapping("/overview")
    public String overview(){
        return"overview";
    }


    @RequestMapping("/pay")
    public String pay(){
        return"pay";
    }

    @RequestMapping("/active")
    public String active(){
        return"active";
    }

    @RequestMapping("/stay")
    public String stay(){
        return"stay";
    }

    @RequestMapping("/frequency")
    public String frequency(){
        return"frequency";
    }

    @RequestMapping("/generate_channel")
    public String generate_channel(){
        return"generate_channel";
    }

    @RequestMapping("/channel_list")
    public String channel_list(){
        return"channel_list";
    }
}
