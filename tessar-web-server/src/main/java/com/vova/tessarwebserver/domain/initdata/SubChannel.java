package com.vova.tessarwebserver.domain.initdata;

/**
 * @author: Vova
 * @create: date 10:44 2018/2/7
 */

//保存渠道id生成的一些信息
public class SubChannel {
    int id;
    String mainChannel;
    String longUrl;
    String shortUrl;
    String keyWords;

    public String getKeyWords() {
        return keyWords;
    }

    public void setKeyWords(String keyWords) {
        this.keyWords = keyWords;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMainChannel() {
        return mainChannel;
    }

    public void setMainChannel(String mainChannel) {
        this.mainChannel = mainChannel;
    }

    public String getLongUrl() {
        return longUrl;
    }

    public void setLongUrl(String longUrl) {
        this.longUrl = longUrl;
    }

    public String getShortUrl() {
        return shortUrl;
    }

    public void setShortUrl(String shortUrl) {
        this.shortUrl = shortUrl;
    }

    public SubChannel(int id, String mainChannel, String longUrl, String shortUrl,String keyWords) {
        this.keyWords=keyWords;
        this.id = id;
        this.mainChannel = mainChannel;
        this.longUrl = longUrl;
        this.shortUrl = shortUrl;
    }

    public SubChannel() {

    }
}
