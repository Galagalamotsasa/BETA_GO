package com.betago.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardController
 */
@WebServlet({ "/BoardController", "/boardController.bo" })
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BoardController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		System.out.println("controller�떒 �룄李�");
		request.setCharacterEncoding("utf-8");
		String qParam = request.getParameter("mode");
		System.out.println("mod" + qParam);

		BoardActionForward forward = null;
		IBoardAction action = null;

		if (qParam != null) {
			// 게시물 등록
			if (qParam.equals("board_insert.bo")) {
				action = new BoardInsert();
				try {
					forward = action.execute(request, response);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				// 게시물 상세페이지
			} else if (qParam.equals("boardView")) {
				action = new BoardViewAction();
				try {
					forward = action.execute(request, response);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			// 게시물 삭제
			else if (qParam.equals("delBoard")) {
				action = new BoardDelAction();
				try {
					forward = action.execute(request, response);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				// 댓글 입력
			} else if (qParam.equals("replyInsert")) {
				action = new replyInsertAction();
				try {
					forward = action.execute(request, response);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			// 대댓글 처리
			else if (qParam.equals("reReplyInsert")) {
				action = new reReplyInsert();
				try {
					forward = action.execute(request, response);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			// 게시물 수정하기위해서 리스트 불러옴
			else if (qParam.equals("boardUpdate")) {
				action = new boardUpdateView();
				try {
					forward = action.execute(request, response);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			} else if (qParam.equals("boardupdates")) {
				action = new boardUpdateAction();
				try {
					forward = action.execute(request, response);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (qParam.equals("lastsBoard")) {
				action = new boardLast();
				try {
					forward = action.execute(request, response);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				// 강의 가져오기
			} else if(qParam.equals("getclass.bo")) {
				action = new getclass();
				try {
					forward = action.execute(request, response);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}else if(qParam.equals("getevent.bo")) {
				action = new getevent();
				try {
					forward = action.execute(request, response);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			else {
				action = new BoardInsert();

				try {
					forward = action.execute(request, response);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (forward != null) { // redirect true
				if (forward.isRedirect()) {
					response.sendRedirect(forward.getPath());
				} else { // forward false
					RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
					dispatcher.forward(request, response);
				}
			}
		}

	}
}
