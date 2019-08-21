package com.db.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.db.dto.LoginVO;
import com.db.dao.BetagoDAO;

import util.DBManagement;

public class BetagoDAO {
	// 싱글톤
	private static BetagoDAO instance = null;

	private BetagoDAO() {
	}

	public static BetagoDAO getInstance() {

		if (instance == null) {
			return new BetagoDAO();
		}
		return instance;

	}

	public LoginVO login(String account_id, String account_pwd) throws NamingException, SQLException {
		
		
		String query = "select account_id,account_pwd from account where account_id= ? and account_pwd= ? ";
		
		Connection con = DBManagement.getConnection();
		PreparedStatement pstmt = con.prepareStatement(query);
		
		
		pstmt.setString(1, account_id);
		pstmt.setString(2, account_pwd);
		ResultSet rs = pstmt.executeQuery();
		LoginVO login=null;
		if(rs.next()) {
		 login = new LoginVO(rs.getString("account_id"), rs.getString("account_pwd"));
		}
		System.out.println(login);
		
		
		System.out.println(account_pwd);
	

		
	



	
		return login;

	}
}
