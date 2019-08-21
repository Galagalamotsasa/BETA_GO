package com.betago.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;
import com.betago.dto.LecDetailSelectByHistory;

public class BetagoLecDetailAction implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		BetagoDAO dao = BetagoDAO.getInstance();
		
		int historyno = Integer.parseInt(request.getParameter("historyno"));		
		
		LecDetailSelectByHistory selectQ = dao.getLecDetail(historyno);
		
		request.setAttribute("selectedLecture", selectQ); 
		
		BetagoActionForward forward = new BetagoActionForward();
		
		forward.setRedirect(false);
		forward.setPath("./class/chapterList.jsp");
		
		return forward;
	}

}
