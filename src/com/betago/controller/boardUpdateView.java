package com.betago.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;
import com.betago.dto.BoardVO;

public class boardUpdateView implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, IOException {
		int bno = Integer.parseInt(request.getParameter("board_no"));
		BetagoDAO dao =BetagoDAO.getInstance();
		
		BoardVO bvo= dao.boardUpdateView(bno);
		
		request.setAttribute("bu",bvo );
		
		BetagoActionForward forward = new BetagoActionForward();
		forward.setPath("./board/board_update.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
