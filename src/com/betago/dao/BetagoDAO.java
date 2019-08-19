package com.betago.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.betago.dto.ClassVO;

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
	
	public List<ClassVO> selectClass() throws NamingException, SQLException{
		List<ClassVO> classlst=new ArrayList<ClassVO>();
		Connection con = DBManagement.getConnection();
		String query="SELECT * FROM miniproject.class";
		PreparedStatement pstmt = con.prepareStatement(query);
		ResultSet rs = pstmt.executeQuery();	
	
		while (rs.next()) {
			classlst.add(new ClassVO(rs.getInt("class_no"),rs.getString("class_title"), rs.getString("class_object"), rs.getString("class_desc"), 
					rs.getInt("cc_no"), rs.getString("class_img"), rs.getInt("class_candidates")));
				
		System.out.println(classlst);
		}		
		return classlst;
	}

	public void viewClass() throws NamingException, SQLException {
		Connection con = DBManagement.getConnection();
		String query="select * from miniproject.class where class_no=?";
		PreparedStatement pstmt = con.prepareStatement(query);
		ResultSet rs = pstmt.executeQuery();	
		
		
	}
	
	

	public void classHistory() throws NamingException, SQLException {
		Connection con=DBManagement.getConnection();
		String query="";
		
		
	}
	
	
}
