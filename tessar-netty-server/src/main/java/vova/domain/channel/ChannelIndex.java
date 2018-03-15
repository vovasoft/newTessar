package vova.domain.channel;

/**
 * @author vova
 * @version Create in 下午3:20 2018/3/12
 */


public class ChannelIndex {
    private  int id;
    private String mainId;
    private String cid;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMainId() {
        return mainId;
    }

    public void setMainId(String mainId) {
        this.mainId = mainId;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public ChannelIndex(int id, String mainId, String cid) {
    
        this.id = id;
        this.mainId = mainId;
        this.cid = cid;
    }

    public ChannelIndex() {
    
    }
}
