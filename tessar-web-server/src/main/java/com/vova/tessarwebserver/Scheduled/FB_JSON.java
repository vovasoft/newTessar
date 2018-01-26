package com.vova.tessarwebserver.Scheduled;

import java.util.ArrayList;

/**
 * @author: Vova
 * @create: date 11:30 2018/1/25
 */
public class FB_JSON {
    ArrayList<Fb_Ad> data;
    Paging paging;

    public FB_JSON() {
    }

    public ArrayList<Fb_Ad> getData() {

        return data;
    }

    public void setData(ArrayList<Fb_Ad> data) {
        this.data = data;
    }

    public Paging getPaging() {
        return paging;
    }

    public void setPaging(Paging paging) {
        this.paging = paging;
    }

    public FB_JSON(ArrayList<Fb_Ad> data, Paging paging) {

        this.data = data;
        this.paging = paging;
    }
}
