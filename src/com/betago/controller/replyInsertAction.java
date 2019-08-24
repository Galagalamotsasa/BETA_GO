package com.betago.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;
import com.betago.dto.BoardVO;

public class replyInsertAction implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, IOException {
		BetagoDAO dao = BetagoDAO.getInstance();
		System.out.println("확인");
		String board_content = request.getParameter("reply");
		String account_id = "kxodud1005";
		int board_a_no = Integer.parseInt(request.getParameter("board_no"));
		System.out.println(board_content + "/" +board_a_no);
		BoardVO bvo = new BoardVO(account_id, board_content, board_a_no);
		dao.replyInsert(bvo);
		BetagoActionForward forward =  new BetagoActionForward();
		forward.setRedirect(true);
		forward.setPath("./boardController.bo?mod=boardView&boardno="+board_a_no);
		
		return forward;
	}

}
