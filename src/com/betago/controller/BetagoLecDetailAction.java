package com.betago.controller;

import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;
import com.betago.dto.LecDetailSelectByHistory;

public class BetagoLecDetailAction implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, NamingException {
		BetagoDAO dao = BetagoDAO.getInstance();
		
		int historyno = Integer.parseInt(request.getParameter("historyno"));
		System.out.println("Action단 history_no : " + historyno);
		
		LecDetailSelectByHistory selectQ = dao.getLecDetail(historyno);
		
		request.setAttribute("selectedLecture", selectQ); 
		
		BetagoActionForward forward = new BetagoActionForward();
		
		forward.setRedirect(false);
		forward.setPath("./class/chapterList.jsp");
		
		return forward;
	}

}
