package com.vova;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
/**
 * @author: Vova
 * @create: date 19:00 2018/2/5
 */

@Component
public class MyMain {
    @Value("${admin.username}")
    private String adminName;
    @Value("${admin.password}")
    private String adminPassword;
    public String getAdminName() {
        return adminName;
    }
    public String getAdminPassword() {
        return adminPassword;
    }

    public static void main(String[] args) {
        ApplicationContext context=new ClassPathXmlApplicationContext("aa.xml");
        MyMain p=context.getBean(MyMain.class);
        System.out.println(p.getAdminName());
        System.out.println(p.getAdminPassword());
    }
}
