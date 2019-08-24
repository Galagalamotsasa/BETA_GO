package com.betago.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;

public class boardUpdateAction implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, IOException {
		int bno = Integer.parseInt("boardno");
		String title = request.getParameter("board_title");
		String content = request.getParameter("board_content");
		String img = request.getParameter("img");
		BetagoDAO dao = BetagoDAO.getInstance();
		PrintWriter out = response.getWriter();
		int result = dao.boardUpdate(title, content,img);
		if(result ==1) {
			
			out.print("<script> alter('변경완료되었습니다.')");
			out.print("</script>");
			
			
		}else{
			out.print("<scritp> altert('변경 실패하였습니다.')");
			out.print("</script>");
		}
		BetagoActionForward forward = new BetagoActionForward();
		forward.setPath("./boardController.bo?mod=boardView&boardno="+bno);
		forward.setRedirect(true);
		return null;
	}

}
