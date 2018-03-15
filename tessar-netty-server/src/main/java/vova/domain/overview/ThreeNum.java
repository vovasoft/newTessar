package vova.domain.overview;


import java.util.Date;

/**
 * @author: Vova
 * @create: date 15:32 2018/1/29
 */
public class ThreeNum {
    private int id;
    private Date dateID;
    private String mainId;
    private String cID;
    private String gID;
    private String enter;
    private int newAddFirstPayNum;
    private int activePayNum;
    private float newAddPayRate;
    private String other1;
    private String other2;
    private String other3;
    private String other4;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDateID() {
        return dateID;
    }

    public void setDateID(Date dateID) {
        this.dateID = dateID;
    }

    public String getMainId() {
        return mainId;
    }

    public void setMainId(String mainId) {
        this.mainId = mainId;
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

    public String getEnter() {
        return enter;
    }

    public void setEnter(String enter) {
        this.enter = enter;
    }

    public int getNewAddFirstPayNum() {
        return newAddFirstPayNum;
    }

    public void setNewAddFirstPayNum(int newAddFirstPayNum) {
        this.newAddFirstPayNum = newAddFirstPayNum;
    }

    public int getActivePayNum() {
        return activePayNum;
    }

    public void setActivePayNum(int activePayNum) {
        this.activePayNum = activePayNum;
    }

    public float getNewAddPayRate() {
        return newAddPayRate;
    }

    public void setNewAddPayRate(float newAddPayRate) {
        this.newAddPayRate = newAddPayRate;
    }

    public String getOther1() {
        return other1;
    }

    public void setOther1(String other1) {
        this.other1 = other1;
    }

    public String getOther2() {
        return other2;
    }

    public void setOther2(String other2) {
        this.other2 = other2;
    }

    public String getOther3() {
        return other3;
    }

    public void setOther3(String other3) {
        this.other3 = other3;
    }

    public String getOther4() {
        return other4;
    }

    public void setOther4(String other4) {
        this.other4 = other4;
    }

    public ThreeNum(int id, Date dateID, String mainId, String cID, String gID, String enter, int newAddFirstPayNum, int activePayNum, float newAddPayRate, String other1, String other2, String other3, String other4) {
    
        this.id = id;
        this.dateID = dateID;
        this.mainId = mainId;
        this.cID = cID;
        this.gID = gID;
        this.enter = enter;
        this.newAddFirstPayNum = newAddFirstPayNum;
        this.activePayNum = activePayNum;
        this.newAddPayRate = newAddPayRate;
        this.other1 = other1;
        this.other2 = other2;
        this.other3 = other3;
        this.other4 = other4;
    }

    public ThreeNum() {

    }
}