package com.betago.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;
import com.betago.dto.ChapterJoinVideo;

public class BetagoChapterDescAction implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException {
		BetagoDAO dao = BetagoDAO.getInstance();

		int chapterno = Integer.parseInt(request.getParameter("chapterno"));
		System.out.println("Action단 chapter_no : " + chapterno);

		ChapterJoinVideo chapter = dao.getChapterDetail(chapterno);

		request.setAttribute("selectedChapter", chapter);
		
		BetagoActionForward forward = new BetagoActionForward();

		forward.setRedirect(false);
		forward.setPath("./class/chapterDetail.jsp");

		return forward;
	}

}
