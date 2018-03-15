package vova.domain.stayman;

import java.util.Date;

/**
 * @author: Vova
 * @create: date 11:20 2017/12/26
 */
public class StayWeek extends StayParent {
    public StayWeek() {
    }

    public StayWeek(int id, Date dateID, String mainId, String cID, String gID, String enter, long newAddNum, String stayList, String other1, String other2, String other3, String other4) {
        super(id, dateID, mainId, cID, gID, enter, newAddNum, stayList, other1, other2, other3, other4);
    }
}
