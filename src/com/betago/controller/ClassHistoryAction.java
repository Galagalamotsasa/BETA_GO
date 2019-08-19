package com.betago.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;

public class ClassHistoryAction implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("history");

		BetagoDAO dao=dao.getInstance();
		dao.classHistory();
		
		BetagoActionForward forward=new BetagoActionForward();
		forward.setRedirect(false);
		forward.setPath("");
		
		return forward;
	}

}
