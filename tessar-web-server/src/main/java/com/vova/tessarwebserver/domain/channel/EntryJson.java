package com.vova.tessarwebserver.domain.channel;

/**
 * @author vova
 * @version Create in 上午11:13 2018/3/1
 */


public class EntryJson {
    String entry1;
    String entry2;

    public String getEntry1() {
        return entry1;
    }

    public void setEntry1(String entry1) {
        this.entry1 = entry1;
    }

    public String getEntry2() {
        return entry2;
    }

    public void setEntry2(String entry2) {
        this.entry2 = entry2;
    }

    public EntryJson(String entry1, String entry2) {
    
        this.entry1 = entry1;
        this.entry2 = entry2;
    }

    public EntryJson() {
    
    }
}
