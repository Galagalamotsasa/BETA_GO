package com.betago.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IBetagoAction {
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException, NamingException;
}
