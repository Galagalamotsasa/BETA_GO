package com.betago.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.betago.dto.LecDetailSelectByHistory;
import com.ssj.util.DBManagement;

public class BetagoDAO {
	private static BetagoDAO instance = null;

	private BetagoDAO() {
	}

	public static BetagoDAO getInstance() {
		if (instance == null) {
			return new BetagoDAO();
		}
		return instance;
	}

	public LecDetailSelectByHistory getLecDetail(int historyno) throws NamingException, SQLException, ClassNotFoundException {
		String query = "{ call miniproject.selectLecDetailsWithJoin(?) }";
//		String query = "select * from class_history where history_no = ?";
//		String query = "select ch.history_no, ch.class_no, ch.account_id, ch.class_title, ch.class_startdate, ch.class_enddate, cl.class_object, cl.class_desc, cl.class_img, ac.user_name, cc.cc_quiz, cc.cc_mid, cc.cc_final, cc.cc_tot " + 
//				"from miniproject.class_history ch " + 
//				"inner join miniproject.class cl on ch.class_no = cl.class_no " + 
//				"inner join miniproject.account ac on ch.account_id = ac.account_id " + 
//				"inner join miniproject.cc cc on cl.cc_no = cc.cc_no " + 
//				"where history_no = ?";
		
		Connection con = DBManagement.getConnection();
		
		CallableStatement pstmt = con.prepareCall(query);
		
		pstmt.setInt(1, historyno);
		
		System.out.println(pstmt);
		
		ResultSet rs = pstmt.executeQuery();
		
		LecDetailSelectByHistory selectQ = null;
		
		while(rs.next()) {
		selectQ = new LecDetailSelectByHistory(rs.getInt("history_no"), rs.getInt("class_no"), rs.getString("account_id"), rs.getString("class_title"), rs.getDate("class_startdate"), rs.getDate("class_enddate"), rs.getString("class_object"), rs.getString("class_desc"), rs.getString("class_img"), rs.getString("user_name"), rs.getInt("cc_quiz"), rs.getInt("cc_mid"), rs.getInt("cc_final"), rs.getInt("cc_tot"));
		}
		System.out.println("DAO : " + selectQ);
		
		rs.close();
		pstmt.close();
		con.close();
		
		
		return selectQ;
	}
	
	
}
