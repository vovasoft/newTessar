package com.vova.tessarwebserver.domain.staypay;

import com.vova.tessarwebserver.domain.stayman.StayParent;

import java.util.Date;

/**
 * @author: Vova
 * @create: date 12:05 2018/1/8
 */
public class StayPayMon extends StayParent {
    public StayPayMon() {
    }

    public StayPayMon(int id, Date dateID, String cID, String gID, String sID, long newAddNum, String stayList) {
        super(id, dateID, cID, gID, sID, newAddNum, stayList);
    }
}
