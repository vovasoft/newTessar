package vova.domain.newadd;

import java.util.Date;

/**
 * @author: Vova
 * @create: date 11:20 2017/12/26
 */
public class NewAddDay extends NewAdd{
    public NewAddDay() {
    }

    public NewAddDay(int id, Date dateID, String mainId, String cID, String gID, String enter, long newAddNum, long activeNum, long loginCount, float averageLogin, long allPlayerNum, String other1, String other2, String other3, String other4) {
        super(id, dateID, mainId, cID, gID, enter, newAddNum, activeNum, loginCount, averageLogin, allPlayerNum, other1, other2, other3, other4);
    }
}
