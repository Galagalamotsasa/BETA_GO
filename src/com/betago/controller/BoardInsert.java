package com.betago.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;
import com.betago.dto.BoardVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardInsert implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException
 {
		String saveFileFolder = "uploads";
		ServletContext context = request.getServletContext();
		String upfilePath = context.getRealPath(saveFileFolder);
		int fileSize = 5*1024*1024;
		MultipartRequest mr;
		
		try {
			mr= new MultipartRequest(request, upfilePath, fileSize, "utf-8", new DefaultFileRenamePolicy());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			mr = null;
		}
		
		BetagoDAO dao = BetagoDAO.getInstance();
		
		
		System.out.println("boardInsert");
		
		int classification = Integer.parseInt(mr.getParameter("classification"));
		String title = mr.getParameter("title");
		String content = mr.getParameter("content");
		String img  = mr.getFilesystemName("board_img");
		String id = "kxodud1005";
		System.out.println(img);
		System.out.println(request.getRealPath("/uploadFile"));
		if(img==null) {
			img = "";
		}else {
			img = "uploads/" + img;
		}
		BoardVO bvo = new BoardVO(classification, title, content , id, img);
		System.out.println(bvo);
		response.setContentType("text/html; charset=utf-8;");
		
		
		try {
			PrintWriter out = response.getWriter();
			dao.insertBoard(bvo);
			out.println("<script>");
			out.println("alert('�� ��� �Ϸ�!')");
			out.println("</script");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		BetagoActionForward forward = new BetagoActionForward();
		forward.setRedirect(true);
		forward.setPath("./board_wirte.jsp");
		
		return forward;
	}

}
