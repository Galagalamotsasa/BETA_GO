package com.betago.dto;

public class ClassVO {
	private int class_no;
	private String class_title;
	private String class_object;
	private String class_desc;
	private int cc_no;
	private String class_img;
	private int class_candidates;
	
	public ClassVO(int class_no, String class_title, String class_object, String class_desc, int cc_no,
			String class_img, int class_candidates) {
	
		this.class_no = class_no;
		this.class_title = class_title;
		this.class_object = class_object;
		this.class_desc = class_desc;
		this.cc_no = cc_no;
		this.class_img = class_img;
		this.class_candidates = class_candidates;
	}

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

	@Override
	public String toString() {
		return "ClassVO [class_no=" + class_no + ", class_title=" + class_title + ", class_object=" + class_object
				+ ", class_desc=" + class_desc + ", cc_no=" + cc_no + ", class_img=" + class_img + ", class_candidates="
				+ class_candidates + "]";
	}		
				
}
