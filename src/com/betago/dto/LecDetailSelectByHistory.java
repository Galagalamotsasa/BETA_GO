package com.betago.dto;

import java.sql.Date;

public class LecDetailSelectByHistory {
	int history_no;
	int class_no;
	String account_id;
	String class_title;
	Date class_startdate;
	Date class_enddate;
	String class_object;
	String class_desc;
	String class_img;
	String user_name;
	int cc_quiz;
	int cc_mid;
	int cc_final;
	int cc_tot;
	
	public LecDetailSelectByHistory(int history_no, int class_no, String account_id, String class_title,
			Date class_startdate, Date class_enddate, String class_object, String class_desc, String class_img,
			String user_name, int cc_quiz, int cc_mid, int cc_final, int cc_tot) {
		super();
		this.history_no = history_no;
		this.class_no = class_no;
		this.account_id = account_id;
		this.class_title = class_title;
		this.class_startdate = class_startdate;
		this.class_enddate = class_enddate;
		this.class_object = class_object;
		this.class_desc = class_desc;
		this.class_img = class_img;
		this.user_name = user_name;
		this.cc_quiz = cc_quiz;
		this.cc_mid = cc_mid;
		this.cc_final = cc_final;
		this.cc_tot = cc_tot;
	}

	public int getHistory_no() {
		return history_no;
	}

	public void setHistory_no(int history_no) {
		this.history_no = history_no;
	}

	public int getClass_no() {
		return class_no;
	}

	public void setClass_no(int class_no) {
		this.class_no = class_no;
	}

	public String getAccount_id() {
		return account_id;
	}

	public void setAccount_id(String account_id) {
		this.account_id = account_id;
	}

	public String getClass_title() {
		return class_title;
	}

	public void setClass_title(String class_title) {
		this.class_title = class_title;
	}

	public Date getClass_startdate() {
		return class_startdate;
	}

	public void setClass_startdate(Date class_startdate) {
		this.class_startdate = class_startdate;
	}

	public Date getClass_enddate() {
		return class_enddate;
	}

	public void setClass_enddate(Date class_enddate) {
		this.class_enddate = class_enddate;
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

	public String getClass_img() {
		return class_img;
	}

	public void setClass_img(String class_img) {
		this.class_img = class_img;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public int getCc_quiz() {
		return cc_quiz;
	}

	public void setCc_quiz(int cc_quiz) {
		this.cc_quiz = cc_quiz;
	}

	public int getCc_mid() {
		return cc_mid;
	}

	public void setCc_mid(int cc_mid) {
		this.cc_mid = cc_mid;
	}

	public int getCc_final() {
		return cc_final;
	}

	public void setCc_final(int cc_final) {
		this.cc_final = cc_final;
	}

	public int getCc_tot() {
		return cc_tot;
	}

	public void setCc_tot(int cc_tot) {
		this.cc_tot = cc_tot;
	}

	@Override
	public String toString() {
		return "LecDetailSelectByHistory [history_no=" + history_no + ", class_no=" + class_no + ", account_id="
				+ account_id + ", class_title=" + class_title + ", class_startdate=" + class_startdate
				+ ", class_enddate=" + class_enddate + ", class_object=" + class_object + ", class_desc=" + class_desc
				+ ", class_img=" + class_img + ", user_name=" + user_name + ", cc_quiz=" + cc_quiz + ", cc_mid="
				+ cc_mid + ", cc_final=" + cc_final + ", cc_tot=" + cc_tot + "]";
	}
	
	
}
