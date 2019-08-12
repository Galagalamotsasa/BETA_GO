package com.betago.dao;

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
	
	
}
