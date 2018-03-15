package com.vova.tessarwebserver.domain.channel;

/**
 * @author vova
 * @version Create in 下午3:38 2018/2/27
 */


//create TABLE ChannelData
//        (id int PRIMARY KEY auto_increment
//        ,game VARCHAR (64)
//        ,entry VARCHAR (64)
//        ,define VARCHAR (64)
//        ,mainChannel VARCHAR (64)
//        ,url VARCHAR (128)
//        ,creator VARCHAR (64)
//        ,createTime VARCHAR (64)
//        );

public class ChannelData {
    int id;
    String game;
    String entry;
    String define;
    String mainChannel;
    String url;
    String creator;
    String createTime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGame() {
        return game;
    }

    public void setGame(String game) {
        this.game = game;
    }

    public String getEntry() {
        return entry;
    }

    public void setEntry(String entry) {
        this.entry = entry;
    }

    public String getDefine() {
        return define;
    }

    public void setDefine(String define) {
        this.define = define;
    }

    public String getMainChannel() {
        return mainChannel;
    }

    public void setMainChannel(String mainChannel) {
        this.mainChannel = mainChannel;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public ChannelData() {
    
    }

    public ChannelData(int id, String game, String entry, String define, String mainChannel, String url, String creator, String createTime) {
    
        this.id = id;
        this.game = game;
        this.entry = entry;
        this.define = define;
        this.mainChannel = mainChannel;
        this.url = url;
        this.creator = creator;
        this.createTime = createTime;
    }
}
