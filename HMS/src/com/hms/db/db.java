/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hms.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author 1zt
 */
public class db {
    private static Connection connection;
    
    private  static  void init_db() throws ClassNotFoundException,SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/hms", "root", "1234");      
    }
    
    public static void push(String sql) throws Exception{
        if (connection == null) {
            init_db();
        }
        connection.createStatement().executeUpdate(sql);
    }
    
    public static ResultSet search(String sql) throws Exception{
        if (connection==null){
            init_db();
        }
        return connection.createStatement().executeQuery(sql);
    }
    
    public static Connection getDBConnection() throws Exception{
        if (connection == null) {
            init_db();
        }
        return connection;
    }
    
}
