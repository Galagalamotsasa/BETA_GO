package com.db.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IBetagoAction {
	public BetagoActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
