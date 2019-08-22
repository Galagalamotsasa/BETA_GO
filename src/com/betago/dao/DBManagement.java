package com.betago.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.naming.NamingException;
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
	         String url = "jdbc:mariadb://192.168.2.13/miniproject";
	         String id = "root";
	         String pwd = "1234";
	         
	         Class.forName("org.mariadb.jdbc.Driver");
	         if(con == null){
	            return DriverManager.getConnection( url, id, pwd);
	        }
	         
	       return con;
	   }
	}

