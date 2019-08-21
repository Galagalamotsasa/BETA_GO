package com.betago.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BetagoControlServlet
 */
@WebServlet({"/BetagoControlServlet" , "/BetagoController.bo"})
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
		// TODO Auto-generated method stub
		doPro(request, response);
	}
	
	protected void doPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서블릿 호출");
		request.setCharacterEncoding("utf-8");
		
		String mode=request.getParameter("mode");		
		
		IBetagoAction action=null;
		BetagoActionForward forward=null;
		
		if (mode.equals("classList.bo")) {
			System.out.println("강의 리스트 보기");			
			action=new ClassListAction();
						
				try {
					forward=action.execute(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}			
		} else if(mode.equals("classHistory.bo")){
			System.out.println("class_history");
			
			action=new ClassHistoryAction();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (mode.equals("lecDetail.bo")) {   
            System.out.println("강의 상세 페이지 보기");
            
            action = new BetagoLecDetailAction();
            
            try {
               forward = action.execute(request, response);
            } catch (Exception e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
            }
         } else if(mode.equals("classView.bo")) {
        	 System.out.println("수강신청");
        	 action=new BetagoClassViewAction();
        	 
        	 try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        	 
         } else if(mode.equals("classInsert.bo")) {
        	 action=new ClassInsertAction();
        	 
        	 try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
         }
		
		
		if(forward!=null) {
			if (forward.isRedirect()) { // 리다이렉트 해야 할때 - forward.isRedirect 값이 참
				response.sendRedirect(forward.getPath()); // forward 객체의 path 경로로 redirect
			} else { // 포워딩 해야 할때 - forward.isRedirect 값이 거짓
				RequestDispatcher dispatcher=request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response); // forward 객체의 path 경로로 forward
			}
		}
		
		
		
	}	

}
