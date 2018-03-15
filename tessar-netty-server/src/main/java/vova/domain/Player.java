package vova.domain;

import java.io.Serializable;

/**
 * @author: Vova
 * @create: date 11:03 2017/12/25
 */


//PHP传输过来的json文件
//"uid":10023722086,"regdate":1514185002,
// "lastdate":1514185002,"channel_from":"ngBrazil","gid":"bloodstrke","sub":"lp-fb","sid":"0"

public class Player{
    private String uid;
    private long regdate; //registerTime
//    private String ucID;  //user channel create id
//    private String gameID;
    private long lastdate;//
    private String cid; //game channel create id
    private String gid;
    private String sid;
    private String enter;

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public long getRegdate() {
        return regdate;
    }

    public void setRegdate(long regdate) {
        this.regdate = regdate;
    }

    public long getLastdate() {
        return lastdate;
    }

    public void setLastdate(long lastdate) {
        this.lastdate = lastdate;
    }



    public String getGid() {
        return gid;
    }

    public void setGid(String gid) {
        this.gid = gid;
    }

    public String getEnter() {
        return enter;
    }

    public void setEnter(String enter) {
        this.enter = enter;
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public Player() {

    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public Player(String uid, long regdate, long lastdate, String cid, String gid, String sid, String enter) {
        this.uid = uid;
        this.regdate = regdate;
        this.lastdate = lastdate;
        this.cid = cid;
        this.gid = gid;
        this.sid = sid;
        this.enter = enter;
    }
}
