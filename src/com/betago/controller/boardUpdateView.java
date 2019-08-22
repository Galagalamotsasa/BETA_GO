package com.betago.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BoardDAO;
import com.betago.dto.BoardVO;

public class boardUpdateView implements IBoardAction {

	@Override
	public BoardActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, IOException {
		int bno = Integer.parseInt(request.getParameter("board_no"));
		BoardDAO dao =BoardDAO.getInstance();
		
		BoardVO bvo= dao.boardUpdateView(bno);
		
		request.setAttribute("bu",bvo );
		
		BoardActionForward forward = new BoardActionForward();
		forward.setPath("./board/board_update.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
