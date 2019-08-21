package com.betago.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;

public class ClassHistoryAction implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("history");

		BetagoDAO dao=BetagoDAO.getInstance();
		
		
		BetagoActionForward forward=new BetagoActionForward();
		forward.setRedirect(false);
		forward.setPath("classHistory.jsp");
		
		return forward;
	}

}
