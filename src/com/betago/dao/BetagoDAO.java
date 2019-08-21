package com.betago.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.betago.dto.ClassVO;
import com.betago.dto.LecDetailSelectByHistory;

import util.DBManagement;

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

	public List<ClassVO> selectClass() throws NamingException, SQLException {
		List<ClassVO> classlst = new ArrayList<ClassVO>();
		Connection con = DBManagement.getConnection();
		String query = "SELECT * FROM miniproject.class";
		PreparedStatement pstmt = con.prepareStatement(query);
		ResultSet rs = pstmt.executeQuery();

		while (rs.next()) {
			classlst.add(new ClassVO(rs.getInt("class_no"), rs.getString("class_title"), rs.getString("class_object"),
					rs.getString("class_desc"), rs.getInt("cc_no"), rs.getString("class_img"),
					rs.getInt("class_candidates")));

			System.out.println(classlst);
		}
		return classlst;
	}

	public LecDetailSelectByHistory getLecDetail(int historyno)
			throws NamingException, SQLException, ClassNotFoundException {
		String query = "{ call miniproject.selectLecDetailsWithJoin(?) }";

		Connection con = DBManagement.getConnection();
		CallableStatement pstmt = con.prepareCall(query);

		pstmt.setInt(1, historyno);
		System.out.println(pstmt);
		ResultSet rs = pstmt.executeQuery();

		LecDetailSelectByHistory selectQ = null;

		while (rs.next()) {
			selectQ = new LecDetailSelectByHistory(rs.getInt("history_no"), rs.getInt("class_no"),
					rs.getString("account_id"), rs.getString("class_title"), rs.getDate("class_startdate"),
					rs.getDate("class_enddate"), rs.getString("class_object"), rs.getString("class_desc"),
					rs.getString("class_img"), rs.getString("user_name"), rs.getInt("cc_quiz"), rs.getInt("cc_mid"),
					rs.getInt("cc_final"), rs.getInt("cc_tot"));
		}

		rs.close();
		pstmt.close();
		con.close();

		return selectQ;
	}

	public void classHistory(LecDetailSelectByHistory lsb) throws NamingException, SQLException {
		Connection con = DBManagement.getConnection();
//		String query = "INSERT INTO miniproject.class_history (history_no,class_no,account_id,class_title"
//				+ "class_startdate,class_enddate) VALUES (?,?,?,?,?,?)";
		String query = "INSERT INTO miniproject.class_history (class_no,account_id,class_title,"
				+ "class_startdate,class_enddate) VALUES (?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(query);	
		pstmt.setInt(1, lsb.getClass_no());
		pstmt.setString(2, lsb.getAccount_id());
		pstmt.setString(3, lsb.getClass_title());
		pstmt.setDate(4, lsb.getClass_startdate());
		pstmt.setDate(5, lsb.getClass_enddate());		

		pstmt.executeUpdate();

		pstmt.close();
		con.close();

	}
}
