package vova.domain.staypay;

import vova.domain.stayman.StayParent;

import java.util.Date;

/**
 * @author: Vova
 * @create: date 10:16 2018/1/5
 */
public class StayPayDay extends StayParent {
    public StayPayDay() {
    }

    public StayPayDay(int id, Date dateID, String mainId, String cID, String gID, String enter, long newAddNum, String stayList, String other1, String other2, String other3, String other4) {
        super(id, dateID, mainId, cID, gID, enter, newAddNum, stayList, other1, other2, other3, other4);
    }
}
