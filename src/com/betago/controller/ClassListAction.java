package com.betago.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;
import com.betago.dto.ClassVO;

public class ClassListAction implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("액션단");
								
		BetagoDAO dao=BetagoDAO.getInstance();
		List<ClassVO>lst=dao.selectClass();
		
		request.setAttribute("cla", lst);
		
		BetagoActionForward forward=new BetagoActionForward();
		forward.setRedirect(false);
		forward.setPath("classList.jsp");
		
		return forward;
	}

}
