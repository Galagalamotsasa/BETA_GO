package com.betago.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;
import com.betago.dao.DBManagement;

public class BoardDelAction implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, IOException {
		int bno = Integer.parseInt(request.getParameter("bno"));
		BetagoDAO dao = BetagoDAO.getInstance();
		dao.BoardDel(bno);

		PrintWriter out = response.getWriter();
		out.print("<script>");
		out.print("alert('삭제 되었습니다')");
		out.print("</script>");
		BetagoActionForward forward =  new BetagoActionForward();
		forward.setRedirect(true);
		forward.setPath("./board/board_detail.jsp");
		return null;
	}

}
