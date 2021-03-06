package com.vova.tessarwebserver.domain.request;

import org.springframework.web.servlet.mvc.method.annotation.AbstractJsonpResponseBodyAdvice;

/**
 * @author: Vova
 * @create: date 16:23 2018/1/9
 */
public class RequestData {
    //app, cid, gid, sid, sdf.parse(sDate), sdf.parse(eDate)
    String app;
    String cid;
    String gid;
    String sid;
    String sDate;
    String eDate;

    public String getApp() {
        return app;
    }

    public void setApp(String app) {
        this.app = app;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getGid() {
        return gid;
    }

    public void setGid(String gid) {
        this.gid = gid;
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getsDate() {
        return sDate;
    }

    public void setsDate(String sDate) {
        this.sDate = sDate;
    }

    public String geteDate() {
        return eDate;
    }

    public void seteDate(String eDate) {
        this.eDate = eDate;
    }

    public RequestData() {

    }

    public RequestData(String app, String cid, String gid, String sid, String sDate, String eDate) {

        this.app = app;
        this.cid = cid;
        this.gid = gid;
        this.sid = sid;
        this.sDate = sDate;
        this.eDate = eDate;
    }
}
