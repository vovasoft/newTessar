package com.vova.tessarwebserver.domain.initdata;

import org.springframework.web.servlet.mvc.method.annotation.AbstractJsonpResponseBodyAdvice;

import java.util.ArrayList;

/**
 * @author: Vova
 * @create: date 17:31 2018/1/2
 * 用于给前端界面返回当前的cid，gid，sid
 */

public class InitJson{
    ArrayList<String> cNames;
    ArrayList<String> gNames;
    ArrayList<String> sNames;

    public ArrayList<String> getcNames() {
        return cNames;
    }

    public void setcNames(ArrayList<String> cNames) {
        this.cNames = cNames;
    }

    public ArrayList<String> getgNames() {
        return gNames;
    }

    public void setgNames(ArrayList<String> gNames) {
        this.gNames = gNames;
    }

    public ArrayList<String> getsNames() {
        return sNames;
    }

    public void setsNames(ArrayList<String> sNames) {
        this.sNames = sNames;
    }

    public InitJson() {
    }

    public InitJson(ArrayList<String> cNames, ArrayList<String> gNames, ArrayList<String> sNames) {

        this.cNames = cNames;
        this.gNames = gNames;
        this.sNames = sNames;
    }
}
