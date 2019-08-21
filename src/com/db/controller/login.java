package com.db.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.dao.BetagoDAO;
import com.db.dto.LoginVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import util.EncryptStr;

public class login implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
	
		System.out.println("dao갔다옴");
		String account_id = request.getParameter("account_id");
		String account_pwd = request.getParameter("account_pwd");

		EncryptStr es = new EncryptStr();
		String encPwd = es.encryptionStr(account_pwd);
		System.out.println(account_pwd);
	
		
		
		BetagoDAO dao = BetagoDAO.getInstance();

		//dao단에 싱글톤 불러오기
		
		//dao 에서 반환타입을 LoginVO 로 지정해서 여기도 이렇게 해줌 
		LoginVO login = dao.login(account_id, encPwd);
		
		HttpSession ses = request.getSession();
		ses.setAttribute("login", login);

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		if (login != null) {
			out.print("<script>");
			out.print("alert('로그인에 성공했습니다');");
			out.print("location.href='login.jsp';");
			out.print("</script>");
		} else {
			out.print("<script>");
			out.print("alert('회원 정보가 없습니다 확인 후 다시 로그인 해주세요!');");
			out.print("location.href='login.jsp';");
			out.print("</script>");
		}
		return null;
	}
	
}
