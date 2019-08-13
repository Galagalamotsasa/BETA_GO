package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.naming.NamingException;

public class DBManagement {
	private static Connection con;
	public static Connection getConnection() throws NamingException, SQLException {		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	      con = DriverManager.getConnection("jdbc:mariadb://192.168.2.13:3306/miniproject",
	            "chr","1234");
	      if(con!=null){
	    	  System.out.println("데이터베이스에 연결 되었습니다");
	      }	      
		
		return con;		
	}
}
