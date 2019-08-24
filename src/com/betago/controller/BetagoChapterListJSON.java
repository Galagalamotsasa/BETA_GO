package com.betago.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BetagoDAO;
import com.betago.dto.ChapterVO;
import com.google.gson.Gson;

public class BetagoChapterListJSON implements IBetagoAction {
 
	@Override
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException {
		// DAO단 처리
		int classno = Integer.parseInt(request.getParameter("classno"));
		System.out.println("Action 받은 파라메터 값 : " + classno);
		
		BetagoDAO dao = BetagoDAO.getInstance();
		List<ChapterVO> lst = dao.getChapterJSON(classno);
		
		// json 출력
		Gson gson = new Gson();
		
		String sb = "";
		
		sb += "[";
		for (int i = 0; i < lst.size(); i++) {
			if (i != lst.size() - 1) {
				sb += gson.toJson(lst.get(i)) + ",";
			} else {
				sb +=gson.toJson(lst.get(i));
			}
		}
		
		sb += "]" ;
		
		System.out.println("Action 완성된 JSON : " + sb);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		out.print(sb);
		
		return null;
	}

}
