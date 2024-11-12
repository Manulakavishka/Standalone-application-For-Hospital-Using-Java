/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hms.dto;

/**
 *
 * @author 1zt
 */
public class treatmentQtyDto {
    private double qty;
    private static String rid;
    private  static  String nic;
    private static String  PARID;

    public static String getPARID() {
        return PARID;
    }

    public static void setPARID(String PARID) {
        treatmentQtyDto.PARID = PARID;
    }

    public static String getNic() {
        return nic;
    }

    public static void setNic(String nic) {
        treatmentQtyDto.nic = nic;
    }


    public static String getRid() {
        return rid;
    }

    public static void setRid(String arid) {
        rid = arid;
    }
    
    public double getQty() {
        return qty;
    }

    public void setQty(double qty) {
        this.qty = qty;
    }
}
