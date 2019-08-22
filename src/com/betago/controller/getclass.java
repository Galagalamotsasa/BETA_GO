package com.betago.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BoardDAO;
import com.betago.dto.ClassVO;
import com.google.gson.Gson;

public class getclass implements IBoardAction {

	@Override
	public BoardActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, IOException {
		BoardDAO dao = BoardDAO.getInstance();
		List<ClassVO> lst =dao.viewClass();
		Gson gson = new Gson();
		String sb="";
		sb+="[";
		for(int i =0; i<lst.size();i++) {
			if(i!=lst.size()-1) {
				sb+=gson.toJson(lst.get(i))+",";
			}else {
				sb +=gson.toJson(lst.get(i));
			}
		}
		sb+="]";
		System.out.println(sb);
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print(sb);
		return null;
	}

}
