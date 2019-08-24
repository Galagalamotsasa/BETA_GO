package com.betago.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;
import com.betago.dto.AccountVO;
import com.betago.util.EncryptStr;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;



public class AccountInsertAction implements IBetagoAction {

	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ClassNotFoundException {
		boolean result = false;
		
		String path = "img";
		ServletContext context = request.getServletContext(); 
		String uploadPath = context.getRealPath(path);  // 파일이 업로드 될 실제 경로 (WAS서버 내의)
		int sizeLimit = 5 * 1024 * 1024; // 하나의 파일이 업로드 될 수 있는  maximum 사이즈
		String encodingType = "UTF-8"; // 파일 이름의 인코딩 타입

		MultipartRequest mr = new MultipartRequest(request, uploadPath, sizeLimit, encodingType, new DefaultFileRenamePolicy());
		
		
		String account_id = mr.getParameter("account_id"); // 아이디
		String account_pwd = mr.getParameter("account_pwd"); // 패스워드
		String user_name = mr.getParameter("user_name"); //이름
		Date user_birth = Date.valueOf(mr.getParameter("user_birth")); //생년월일
		String user_gender = mr.getParameter("user_gender"); //성별
		String user_phone = mr.getParameter("user_phone"); //핸드폰번호
		String sample3_postcode = mr.getParameter("sample3_postcode");
		String sample3_address = mr.getParameter("sample3_address");
		String sample3_detailAddress = mr.getParameter("sample3_detailAddress");
		String user_addr = sample3_postcode + " " + sample3_address + " " + sample3_detailAddress  ; //주소
		System.out.println(user_addr);
		
		String user_img = "img/" + mr.getFilesystemName("user_img");
		String user_email = mr.getParameter("user_email"); //이메일
		String user_education = mr.getParameter("user_education"); // 학력
		String user_major = mr.getParameter("user_major"); //전공
		int auth_no = Integer.parseInt(mr.getParameter("auth_no")); //권한
		String account_active = mr.getParameter("account_acctive"); //활동
		
		//암호화
		EncryptStr es = new EncryptStr();
		String encPwd = es.encryptionStr(account_pwd);

		//사진올리기
		String upFileName = "";
		if (mr.getFilesystemName("user_img") == null) { // 유저가 이미지를 올리지 않은 경우
			upFileName = "img/user.png"; // 기본 이미지로..
		} else { // 유저가 이미지를 올린 경우
			upFileName = "img/" + mr.getFilesystemName("user_img");
		}
		
		BetagoDAO dao = BetagoDAO.getInstance();
		AccountVO account = new AccountVO(account_id, encPwd, user_name, user_birth, user_gender, user_phone, user_addr, upFileName, user_email, user_education, user_major, auth_no);
		
		response.setContentType("text/html; charset=utf-8"); // 인코딩 설정
		
		PrintWriter out = response.getWriter();
		
		try {
		dao.insertAccount(account);
		out.print("<script> alert('회원가입 성공!'); location.href='Account.jsp';</script>");
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			if (e instanceof SQLIntegrityConstraintViolationException) {
				out.print("<script>alert('회원가입 실패! 아이디가 중복됨'); history.back();</script>");
				e.printStackTrace();
			} else {
//				out.print("<script>alert('회원가입 실패!'); history.back();</script>");
				e.printStackTrace();
			}
		}

		return  null;
	}

}
