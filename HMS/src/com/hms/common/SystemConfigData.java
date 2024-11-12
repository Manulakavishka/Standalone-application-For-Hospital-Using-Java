/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hms.common;

import java.util.Date;

/**
 *
 * @author 1zt
 */
public class SystemConfigData {
    private static String activeUser;
    private static String userType;

    public static String getActiveUser() {
        return activeUser;
    }

    public static void setActiveUser(String activeUser) {
        SystemConfigData.activeUser = activeUser;
    }

    public static String getUserType() {
        return userType;
    }

    public static void setUserType(String userType) {
        SystemConfigData.userType = userType;
    }
    
}
