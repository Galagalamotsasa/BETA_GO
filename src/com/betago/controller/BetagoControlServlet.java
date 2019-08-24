package com.betago.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardController
 */
@WebServlet({ "/BoardController", "/boardController.bo", "/BetagoControlServlet", "/BetagoController.bo", "/login.do" })
public class BetagoControlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BetagoControlServlet() {
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
		request.setCharacterEncoding("utf-8");
		String mode = request.getParameter("mode");
		System.out.println("mod" + mode);

		BetagoActionForward forward = null;
		IBetagoAction action = null;

		if (mode != null) {
			// 게시물 등록
			if (mode.equals("board_insert.bo")) {
				action = new BoardInsert();
				try {
					try {
						forward = action.execute(request, response);
					} catch (ClassNotFoundException | SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} catch (NamingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				// 게시물 상세페이지
			} else if (mode.equals("boardView")) {
				action = new BoardViewAction();
				try {
					try {
						forward = action.execute(request, response);
					} catch (ClassNotFoundException | SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} catch (NamingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			// 게시물 삭제
			else if (mode.equals("delBoard")) {
				action = new BoardDelAction();
				try {
					try {
						forward = action.execute(request, response);
					} catch (ClassNotFoundException | SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} catch (NamingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				// 댓글 입력
			} else if (mode.equals("replyInsert")) {
				action = new replyInsertAction();
				try {
					try {
						forward = action.execute(request, response);
					} catch (ClassNotFoundException | SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} catch (NamingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			// 대댓글 처리
			else if (mode.equals("reReplyInsert")) {
				action = new reReplyInsert();
				try {
					try {
						forward = action.execute(request, response);
					} catch (ClassNotFoundException | SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} catch (NamingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			// 게시물 수정하기위해서 리스트 불러옴
			else if (mode.equals("boardUpdate")) {
				action = new boardUpdateView();
				try {
					try {
						forward = action.execute(request, response);
					} catch (ClassNotFoundException | SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} catch (NamingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			} else if (mode.equals("boardupdates")) {
				action = new boardUpdateAction();
				try {
					try {
						forward = action.execute(request, response);
					} catch (ClassNotFoundException | SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} catch (NamingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (mode.equals("lastsBoard")) {
				action = new boardLast();
				try {
					try {
						forward = action.execute(request, response);
					} catch (ClassNotFoundException | SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} catch (NamingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				// 강의 가져오기
			} else if (mode.equals("getclass.bo")) {
				action = new getclass();
				try {
					try {
						forward = action.execute(request, response);
					} catch (ClassNotFoundException | SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} catch (NamingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (mode.equals("getevent.bo")) {
				action = new getevent();
				try {
					try {
						forward = action.execute(request, response);
					} catch (ClassNotFoundException | SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} catch (NamingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			else if (mode.equals("login.bo")) {
				System.out.println("안녕");
				action = new login();
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (mode.equals("insert.do")) {
				System.out.println("Account insert");
				action = new AccountInsertAction();
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			else {
				action = new BoardInsert();

				try {
					try {
						forward = action.execute(request, response);
					} catch (ClassNotFoundException | SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} catch (NamingException e) {
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
