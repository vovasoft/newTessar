package com.vova.tessarwebserver.domain.newadd;

import org.springframework.web.servlet.mvc.method.annotation.AbstractJsonpResponseBodyAdvice;

import java.util.Date;

/**
 * @author: Vova
 * @create: date 15:57 2018/1/2
 */
public class NewAddJson{
    private String dateID;
    private String cID;
    private long newAddNum;
    private long activeNum;
    private long loginCount;
    private float averageLogin;
    private long allPlayerNum;

    public String getcID() {
        return cID;
    }

    public void setcID(String cID) {
        this.cID = cID;
    }

    public String getDateID() {
        return dateID;
    }

    public void setDateID(String dateID) {
        this.dateID = dateID;
    }

    public long getNewAddNum() {
        return newAddNum;
    }

    public void setNewAddNum(long newAddNum) {
        this.newAddNum = newAddNum;
    }

    public long getActiveNum() {
        return activeNum;
    }

    public void setActiveNum(long activeNum) {
        this.activeNum = activeNum;
    }

    public long getLoginCount() {
        return loginCount;
    }

    public void setLoginCount(long loginCount) {
        this.loginCount = loginCount;
    }

    public float getAverageLogin() {
        return averageLogin;
    }

    public void setAverageLogin(float averageLogin) {
        this.averageLogin = averageLogin;
    }

    public long getAllPlayerNum() {
        return allPlayerNum;
    }

    public void setAllPlayerNum(long allPlayerNum) {
        this.allPlayerNum = allPlayerNum;
    }

    public NewAddJson(){
    }

    public NewAddJson(String dateID,String cID, long newAddNum, long activeNum, long loginCount, float averageLogin, long allPlayerNum) {

        this.dateID = dateID;
        this.cID=cID;
        this.newAddNum = newAddNum;
        this.activeNum = activeNum;
        this.loginCount = loginCount;
        this.averageLogin = averageLogin;
        this.allPlayerNum = allPlayerNum;
    }

}
