package com.betago.controller;

public class BetagoActionForward {
	private boolean isRedirect=false; // 리다이렉트 여부 (true : 리다이렉트 한다. false : dispatcher.forward 한다.)
	private String path=null; // 리다이렉트나 포워딩 될 페이지의 경로
	
	public boolean isRedirect() {
		return this.isRedirect;
	}
	
	public String getPath() {
		return this.path;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}

	public void setPath(String path) {
		this.path = path;
	}
	
}
