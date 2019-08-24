package com.betago.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;
import com.betago.dto.BoardVO;

public class BoardViewAction implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException {
		System.out.println("view����");
		BetagoDAO dao = BetagoDAO.getInstance();
		int bno = Integer.parseInt(request.getParameter("boardno"));
		System.out.println(bno);
		List<BoardVO> bvo = dao.BoardView( bno);
		int cnt = 0 ;
//		String id = "kxodu1005";
//		request.setAttribute("id", id);
		
		
		// ������ ��� �ȵǴ� ���ڵ��� ó��
//		String tmpContent = bvo.getBoard_content();
//		tmpContent = tmpContent.replace("\r\n", "<br/>");

//		bvo.setBoard_countent(tmpContent);
		request.setAttribute("board_content", bvo);
		request.setAttribute("cnt", cnt);
		
		BetagoActionForward forward = new BetagoActionForward();
		forward.setPath("./board/board_detail.jsp");
		forward.setRedirect(false	);
		return forward;
	}

}
