package vova.domain.overview;

import java.util.Date;

/**
 * @author: Vova
 * @create: date 15:34 2018/1/29
 */
public class ThreeNumWeek extends ThreeNum{
    public ThreeNumWeek() {
    }

    public ThreeNumWeek(int id, Date dateID, String mainId, String cID, String gID, String enter, int newAddFirstPayNum, int activePayNum, float newAddPayRate, String other1, String other2, String other3, String other4) {
        super(id, dateID, mainId, cID, gID, enter, newAddFirstPayNum, activePayNum, newAddPayRate, other1, other2, other3, other4);
    }
}
