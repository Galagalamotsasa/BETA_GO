package com.betago.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;
import com.betago.dto.VideoJoinCategory;

public class BetagoVideoWatchAction implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException {
		BetagoDAO dao = BetagoDAO.getInstance();
		
		int videono = Integer.parseInt(request.getParameter("videono"));
		System.out.println("Action단 video_no : " + videono);
		
		VideoJoinCategory video = dao.getVideoDetail(videono);
		
		request.setAttribute("selectedVideo",video);
		
		BetagoActionForward forward = new BetagoActionForward();
		
		forward.setRedirect(false);
		forward.setPath("./class/watchVideo.jsp");
		
		return forward;
	}

}
