package com.betago.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.betago.dto.AccountVO;

import util.DBManagement;

public class BetagoDAO {
	//-------------------------------- BetagoDAO 싱글톤 --------------------------------------------
	private static BetagoDAO instance = null;

	private BetagoDAO() {
	}

	public static BetagoDAO getInstance() {
		if (instance == null) {
			return new BetagoDAO();
		}
		return instance;
	}
	
	//------------------회원가입을 위한 메서드--------------------
	public boolean insertAccount(AccountVO vo) throws NamingException, SQLException {
		boolean result = false;
		Connection con = DBManagement.getConnection();
		
		String sql = "{call insert_accountActive(?,?,?,?,?,?,?,?,?,?,?,?)}";
		

		CallableStatement pstmt = con.prepareCall(sql);
		System.out.println(vo);
		pstmt.setString(1,  vo.getAccount_id());
		pstmt.setString(2, vo.getAccount_pwd());
		pstmt.setString(3, vo.getUser_name());
		pstmt.setDate(4, vo.getUser_birth());
		pstmt.setString(5, vo.getUser_gender());
		pstmt.setString(6, vo.getUser_phone());
		pstmt.setString(7, vo.getUser_addr());
		pstmt.setString(8,  vo.getUser_img());
		pstmt.setString(9, vo.getUser_email());
		pstmt.setString(10, vo.getUser_education());
		pstmt.setString(11, vo.getUser_major());
		pstmt.setInt(12, vo.getAuth_no());

		
		
		result =pstmt.execute();
		pstmt.close();
		con.close();
		
		return result;
	}

	
}
