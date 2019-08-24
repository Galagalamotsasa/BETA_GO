package com.betago.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;

public class boardLast implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, IOException {
		BetagoDAO dao =BetagoDAO.getInstance();

		return null;
	}

}
