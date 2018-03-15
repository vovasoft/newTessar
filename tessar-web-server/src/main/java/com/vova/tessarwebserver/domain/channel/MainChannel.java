package com.vova.tessarwebserver.domain.channel;

/**
 * @author: Vova
 * @create: date 14:14 2018/2/5
 */



public class MainChannel {
    int id;
    String name;
    String prefix;
    String other1;
    String other2;

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

    public MainChannel(int id, String name, String prefix, String other1, String other2) {
    
        this.id = id;
        this.name = name;
        this.prefix = prefix;
        this.other1 = other1;
        this.other2 = other2;
    }

    public MainChannel() {
    
    }
}
