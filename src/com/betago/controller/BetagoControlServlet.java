package com.betago.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.controller.AccountInsertAction;

/**
 * Servlet implementation class BetagoControlServlet
 */

@WebServlet({ "/BetagoControlServlet", "/BetagoController.bo" })

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
		doPro(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPro(request, response);
	}

	protected void doPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("서블릿호출");
		String mode = request.getParameter("mode");

		BetagoActionForward forward = null;
		IBetagoAction action = null;

		if (mode != null) {
			System.out.println("mode: " + mode);

			if (mode.equals("insert.do")) {
				// System.out.println("Account insert");
				action = new AccountInsertAction();
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}
			if (forward != null) {
				if (forward.isRedirect()) { // 리다이렉트 해야 할때 - forward.isRedirect 값이 참
					response.sendRedirect(forward.getPath()); // forward 객체의 path 경로로 redirect
				} else { // 포워딩 해야 할 때 - forward.isRedirect 값이 거짓
					RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
					dispatcher.forward(request, response); // forward 객체의 path 경로로 forward
				}
			}

		} else {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();

			out.print("<script>");
			out.print("alert('잘못된 요청입니다!');");
			out.print("location.href='index.jsp';");
			out.print("</script>");

		}

	}

}
