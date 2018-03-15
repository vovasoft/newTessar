package com.vova.tessarwebserver.domain.channel;

/**
 * @author vova
 * @version Create in 下午3:25 2018/2/27
 */

//create TABLE ChannelGames
//        (id int PRIMARY KEY auto_increment
//        ,name VARCHAR (64)
//        ,prefix VARCHAR (64)
//        ,lang VARCHAR (64)
//        ,other1 VARCHAR (64)
//        ,other2 VARCHAR (64)
//        );

public class ChannelGames {
    int id;
    String name;
    String prefix;
    String lang;
    String other1;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrefix() {
        return prefix;
    }

    public void setPrefix(String prefix) {
        this.prefix = prefix;
    }

    public String getLang() {
        return lang;
    }

    public void setLang(String lang) {
        this.lang = lang;
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

    public ChannelGames(int id, String name, String prefix, String lang, String other1, String other2) {
    
        this.id = id;
        this.name = name;
        this.prefix = prefix;
        this.lang = lang;
        this.other1 = other1;
        this.other2 = other2;
    }

    public ChannelGames() {
    
    }

    String other2;
    
}
