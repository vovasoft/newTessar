package com.vova.tessarwebserver.domain.payrate;

import java.util.Date;

/**
 * @author: Vova
 * @create: date 11:17 2018/1/31
 */
public class ThreeNumJson {
    private String dateID;
    private String cID;
    private String gID;
    private String sID;
    private int newAddFirstPayNum;
    private String activePayRate;
    private String newAddPayRate;

    public String getDateID() {
        return dateID;
    }

    public void setDateID(String dateID) {
        this.dateID = dateID;
    }

    public String getcID() {
        return cID;
    }

    public void setcID(String cID) {
        this.cID = cID;
    }

    public String getgID() {
        return gID;
    }

    public void setgID(String gID) {
        this.gID = gID;
    }

    public String getsID() {
        return sID;
    }

    public void setsID(String sID) {
        this.sID = sID;
    }

    public int getNewAddFirstPayNum() {
        return newAddFirstPayNum;
    }

    public void setNewAddFirstPayNum(int newAddFirstPayNum) {
        this.newAddFirstPayNum = newAddFirstPayNum;
    }

    public String getActivePayRate() {
        return activePayRate;
    }

    public void setActivePayRate(String activePayRate) {
        this.activePayRate = activePayRate;
    }

    public String getNewAddPayRate() {
        return newAddPayRate;
    }

    public void setNewAddPayRate(String newAddPayRate) {
        this.newAddPayRate = newAddPayRate;
    }

    public ThreeNumJson(String dateID, String cID, String gID, String sID, int newAddFirstPayNum, String activePayRate, String newAddPayRate) {

        this.dateID = dateID;
        this.cID = cID;
        this.gID = gID;
        this.sID = sID;
        this.newAddFirstPayNum = newAddFirstPayNum;
        this.activePayRate = activePayRate;
        this.newAddPayRate = newAddPayRate;
    }

    public ThreeNumJson() {

    }
}
