package com.betago.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IBoardAction {
	public BoardActionForward execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException;
}
