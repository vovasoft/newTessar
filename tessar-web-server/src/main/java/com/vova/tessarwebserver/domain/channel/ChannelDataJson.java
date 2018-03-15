package com.vova.tessarwebserver.domain.channel;

import java.util.List;

/**
 * @author vova
 * @version Create in 下午3:45 2018/3/1
 */


public class ChannelDataJson {
    List<ChannelData> list;
    Integer count;

    public List<ChannelData> getList() {
        return list;
    }

    public void setList(List<ChannelData> list) {
        this.list = list;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public ChannelDataJson(List<ChannelData> list, Integer count) {
    
        this.list = list;
        this.count = count;
    }

    public ChannelDataJson() {
    
    }
}
