package com.betago.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BoardDAO;
import com.betago.dao.DBManagement;

public class BoardDelAction implements IBoardAction {

	@Override
	public BoardActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, IOException {
		int bno = Integer.parseInt(request.getParameter("bno"));
		BoardDAO dao = BoardDAO.getInstance();
		dao.BoardDel(bno);

		PrintWriter out = response.getWriter();
		out.print("<script>");
		out.print("alert('삭제 되었습니다')");
		out.print("</script>");
		BoardActionForward forward =  new BoardActionForward();
		forward.setRedirect(true);
		forward.setPath("./board/board_detail.jsp");
		return null;
	}

}
