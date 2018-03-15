package com.vova.tessarwebserver.domain.stayman;

import org.springframework.web.servlet.mvc.method.annotation.AbstractJsonpResponseBodyAdvice;

import java.util.Date;

/**
 * @author: Vova
 * @create: date 15:36 2018/1/2
 */
public class StayJson {
    private String dateID;
    private String cID;
    private long newAddNum;
//    private String[] stayScale;
//    private int[] stayList;
    private String[] stayAll;

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

    public String[] getStayAll() {
        return stayAll;
    }

    public void setStayAll(String[] stayAll) {
        this.stayAll = stayAll;
    }

    public StayJson(String dateID,String cID, long newAddNum, String[] stayAll) {

        this.dateID = dateID;
        this.cID=cID;
        this.newAddNum = newAddNum;
        this.stayAll = stayAll;
    }

    public StayJson() {

    }
}
