package com.betago.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;

public class ClassViewAction implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("뷰");
		
//		BetagoDAO dao=BetagoDAO.getInstance();
//		dao.viewClass();
		
		
		BetagoActionForward forward=new BetagoActionForward();
		forward.setRedirect(false);
		forward.setPath("classView.jsp");
		
		return forward;
	}

}
