package com.betago.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.betago.dao.BoardDAO;
import com.betago.dto.BoardVO;
import com.google.gson.Gson;

public class getevent implements IBoardAction {

	@Override
	public BoardActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, IOException {
		BoardDAO dao  = BoardDAO.getInstance();
		List<BoardVO> vo = dao.getEvent();
		Gson gson = new Gson();
		String sb="";
		sb+="[";
		for(int i=0; i<vo.size(); i++) {
			if(i!=vo.size()-1) {
				sb+=gson.toJson(vo.get(i))+",";
			}else {
				sb+=gson.toJson(vo.get(i));
			}
		}
		sb+="]";
		response.setContentType("applivation/json");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print(sb);
		return null;
	}

}
