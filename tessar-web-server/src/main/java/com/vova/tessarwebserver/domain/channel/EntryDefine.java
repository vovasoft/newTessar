package com.vova.tessarwebserver.domain.channel;

/**
 * @author: Vova
 * @create: date 14:14 2018/2/5
 */

//
//create TABLE EntryDefine
//        (id int PRIMARY KEY auto_increment
//        ,entryType VARCHAR (64)
//        ,game VARCHAR (64)
//        ,name VARCHAR (64)
//        ,appid VARCHAR (64)
//        ,des VARCHAR (64)
//        ,other2 VARCHAR (64)
//        );
public class EntryDefine {
    int id;
    String entryType;
    String game;
    String name;
    String appid;
    String des;
    String other2;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEntryType() {
        return entryType;
    }

    public void setEntryType(String entryType) {
        this.entryType = entryType;
    }

    public String getGame() {
        return game;
    }

    public void setGame(String game) {
        this.game = game;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAppid() {
        return appid;
    }

    public void setAppid(String appid) {
        this.appid = appid;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getOther2() {
        return other2;
    }

    public void setOther2(String other2) {
        this.other2 = other2;
    }

    public EntryDefine(int id, String entryType, String game, String name, String appid, String des, String other2) {
    
        this.id = id;
        this.entryType = entryType;
        this.game = game;
        this.name = name;
        this.appid = appid;
        this.des = des;
        this.other2 = other2;
    }

    public EntryDefine() {
    
    }
}
