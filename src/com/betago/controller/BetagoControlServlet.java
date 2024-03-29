package com.betago.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BetagoControlServlet
 */

@WebServlet({"/BetagoControlServlet", "/BetagoController.bo"})

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPro(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPro(request, response);
	}

	protected void doPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("BetagoControlServlet 호출");
		
		String mode = request.getParameter("mode");
		System.out.println("mode : " + mode);
		
		BetagoActionForward forward=null;
		IBetagoAction action=null;
		
		if (mode != null) {
			System.out.println("mode : " + mode);
			
			if (mode.equals("lecDetail.bo")) {	
				System.out.println("강의 상세 페이지 보기");
				
				action = new BetagoLecDetailAction();
				
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if(mode.equals("getChapterList.bo")) {
				System.out.println("챕터리스트 JSON으로 불러오기");
				
				action = new BetagoChapterListJSON();
				
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if(mode.equals("chapterDesc.bo")) {
				System.out.println("챕터 상세 페이지 보기");
				
				action = new BetagoChapterDescAction();
				
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if(mode.equals("videoWatch.bo")) {
				System.out.println("클릭한 비디오 보기");
				
				action = new BetagoVideoWatchAction();
				
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if(mode.equals("videoList.bo")) {
				System.out.println("비디오 리스트 보기");
				
				action = new BetagoVideoListAction();
				
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			// --------------- 페이지 이동 -------------------------------------
			
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
			out.print("location.href='Home.jsp';");
			out.print("</script>");
		}
		
		
		
	}
	
}
