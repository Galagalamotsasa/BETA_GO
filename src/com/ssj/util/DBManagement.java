package com.ssj.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DBManagement {



      private static DBManagement instance = new DBManagement();
      private static Connection con = null;
         
      public static DBManagement getInstance() {
         if (instance == null) {
            return new DBManagement();
         }
         return instance;
      }
         
      public static Connection getConnection() throws ClassNotFoundException, SQLException  {
            String url = "jdbc:mariadb://192.168.2.13:3306/miniproject";
            String id = "chr";
            String pwd = "1234";
            
            Class.forName("org.mariadb.jdbc.Driver");
            if(con == null){
               return DriverManager.getConnection( url, id, pwd);
           }
            
          return con;
      }
   }
