package com.vova.tessarwebserver.domain;

/**
 * @author: Vova
 * @create: date 15:30 2018/1/8
 */
public class User {
    private String name;
    private String passwd;



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public User() {

    }

    public User(int id, String name, String passwd) {

        this.name = name;
        this.passwd = passwd;
    }
}
