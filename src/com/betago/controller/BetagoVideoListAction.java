package com.betago.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;
import com.betago.dto.VideoVO;



public class BetagoVideoListAction implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		BetagoDAO dao = BetagoDAO.getInstance();
		int page_no = 1;
		// DAO단 처리
		if (request.getParameter("page_no") != null) {
			page_no = Integer.parseInt(request.getParameter("page_no"));
		}
		System.out.println("Action 받은 파라메터 값 : " + page_no);

		// -------------------------------------------- 페이징 처리 ----------------------------------------------

		int totCnt = dao.getVideoCnt(); // 전체 글 수 : 22
		System.out.println("totCnt(BoardListAction) : " + totCnt);

		int pagePerRow = 9; // 1페이지 당 보여질 글 수 : 9

		int totalPage = totCnt / pagePerRow; // 페이지 수 : 5

		if (totCnt % pagePerRow > 0) { // 남은 글이 있다면.. 페이지 1 증가 시켜서 페이징 수를 보정
			totalPage++; // 총 페이지 수 : 6
		}

		int block = 3; // 페이지 그룹화 단위
		// 게시판 리스트 페이지에서 한번에 보여줄 페이저
		int startPage = ((page_no - 1) / block) * block + 1; // 현재 페이지 번호가 : 1 -> 이 공식에 의한 시작 페이지는 1
		int endPage = startPage + block - 1; // 현재 페이지 번호가 : 1 -> 이 공식에 의한 끝 페이지 2

		// endPage 보정
		if (endPage > totalPage) {
			endPage = totalPage;
		}

		request.setAttribute("totalPage", totalPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);

		// --------------------------- 페이지 번호에 해당하는 글을 얻어오는 부분 ---------------------------------

		List<VideoVO> lst = dao.getVideo(page_no);

		request.setAttribute("video", lst); // 실제 글 목록 : request 영역의 boards 속성에 저장

		BetagoActionForward forward = new BetagoActionForward();
		forward.setRedirect(false); // 포워딩 해야 함.
		forward.setPath("./class/videoList.jsp"); // 포워딩 할 경로

		return forward;
	}

}
