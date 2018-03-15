package vova.domain.stayman;

import org.springframework.context.annotation.Primary;

import java.security.PrivateKey;
import java.util.Date;

/**
 * @author: Vova
 * @create: date 17:01 2017/12/26
 */

public class StayParent {
    private int id;
    private Date dateID;
    private String mainId;
    private String cID;
    private String gID;
    private String enter;
    private long newAddNum;
    private String stayList;
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

    public long getNewAddNum() {
        return newAddNum;
    }

    public void setNewAddNum(long newAddNum) {
        this.newAddNum = newAddNum;
    }

    public String getStayList() {
        return stayList;
    }

    public void setStayList(String stayList) {
        this.stayList = stayList;
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

    public StayParent(int id, Date dateID, String mainId, String cID, String gID, String enter, long newAddNum, String stayList, String other1, String other2, String other3, String other4) {
    
        this.id = id;
        this.dateID = dateID;
        this.mainId = mainId;
        this.cID = cID;
        this.gID = gID;
        this.enter = enter;
        this.newAddNum = newAddNum;
        this.stayList = stayList;
        this.other1 = other1;
        this.other2 = other2;
        this.other3 = other3;
        this.other4 = other4;
    }

    public StayParent() {
    
    }
}
