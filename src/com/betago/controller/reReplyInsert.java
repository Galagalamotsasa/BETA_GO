package com.betago.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;
import com.betago.dto.BoardVO;

public class reReplyInsert implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, IOException {
		System.out.println("대댓글");
		int board_a_no = Integer.parseInt(request.getParameter("board_a_no"));
		int board_a_reply =Integer.parseInt(request.getParameter("board_a_reply"));
		String account_id = "kxodud1005";
		String board_content = request.getParameter("reply");
		System.out.println(board_a_no+"/" +board_content);
		BoardVO vo = new BoardVO(account_id, board_content, board_a_no,board_a_reply);
		BetagoDAO dao = BetagoDAO.getInstance();
		dao.reReplyInsert(vo);
		BetagoActionForward forward = new BetagoActionForward();
		forward.setRedirect(true);
		forward.setPath("./boardController.bo?mod=boardView&boardno="+board_a_no);
	
		return forward;
	}

}
