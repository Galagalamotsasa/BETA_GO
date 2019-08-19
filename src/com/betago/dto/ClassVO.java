package com.betago.dto;

public class ClassVO {
	int class_no; // 강의 번호
	String class_title; // 강의 제목
	String class_object; // 강의 목표
	String class_desc; // 강의 상세 정보
	int cc_no; // 이수 조건 번호
	String class_img; // 강의 썸네일 주소
	int class_candidates; // 누적된 강의 수강생
	
	public int getClass_no() {
		return class_no;
	}
	public void setClass_no(int class_no) {
		this.class_no = class_no;
	}
	public String getClass_title() {
		return class_title;
	}
	public void setClass_title(String class_title) {
		this.class_title = class_title;
	}
	public String getClass_object() {
		return class_object;
	}
	public void setClass_object(String class_object) {
		this.class_object = class_object;
	}
	public String getClass_desc() {
		return class_desc;
	}
	public void setClass_desc(String class_desc) {
		this.class_desc = class_desc;
	}
	public int getCc_no() {
		return cc_no;
	}
	public void setCc_no(int cc_no) {
		this.cc_no = cc_no;
	}
	public String getClass_img() {
		return class_img;
	}
	public void setClass_img(String class_img) {
		this.class_img = class_img;
	}
	public int getClass_candidates() {
		return class_candidates;
	}
	public void setClass_candidates(int class_candidates) {
		this.class_candidates = class_candidates;
	}
	
	public ClassVO(int class_no, String class_title, String class_object, String class_desc, int cc_no,
			String class_img, int class_candidates) {
		super();
		this.class_no = class_no;
		this.class_title = class_title;
		this.class_object = class_object;
		this.class_desc = class_desc;
		this.cc_no = cc_no;
		this.class_img = class_img;
		this.class_candidates = class_candidates;
	}
	
	@Override
	public String toString() {
		return "ClassVO [class_no=" + class_no + ", class_title=" + class_title + ", class_object=" + class_object
				+ ", class_desc=" + class_desc + ", cc_no=" + cc_no + ", class_img=" + class_img + ", class_candidates="
				+ class_candidates + "]";
	}
	
	
}
