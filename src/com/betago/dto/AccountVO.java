package com.betago.dto;

import java.sql.Date;

public class AccountVO {
	private String account_id;
	private String account_pwd;
	private String user_name;
	private Date user_birth;
	private String user_gender;
	private String user_phone;
	private String user_addr;
	private String user_img;
	private String user_email;
	private String user_education;
	private String user_major;
	private Date user_date;
	private int auth_no;
	private String account_active;
	
	
	public AccountVO(String account_id, String account_pwd, String user_name, Date user_birth, String user_gender,
			String user_phone, String user_addr, String user_img, String user_email, String user_education,
			String user_major, Date user_date, int auth_no, String account_active) {
		super();
		this.account_id = account_id;
		this.account_pwd = account_pwd;
		this.user_name = user_name;
		this.user_birth = user_birth;
		this.user_gender = user_gender;
		this.user_phone = user_phone;
		this.user_addr = user_addr;
		this.user_img = user_img;
		this.user_email = user_email;
		this.user_education = user_education;
		this.user_major = user_major;
		this.user_date = user_date;
		this.auth_no = auth_no;
		this.account_active = account_active;
		
	}



	public AccountVO(String account_id, String account_pwd, String user_name, Date user_birth, String user_gender,
			String user_phone, String user_addr, String user_img, String user_email, String user_education,
			String user_major, int auth_no) {
		this.account_id = account_id;
		this.account_pwd = account_pwd;
		this.user_name = user_name;
		this.user_birth = user_birth;
		this.user_gender = user_gender;
		this.user_phone = user_phone;
		this.user_addr = user_addr;
		this.user_img = user_img;
		this.user_email = user_email;
		this.user_education = user_education;
		this.user_major = user_major;
		this.auth_no = auth_no;
	}



	public String getAccount_id() {
		return account_id;
	}


	public void setAccount_id(String account_id) {
		this.account_id = account_id;
	}


	public String getAccount_pwd() {
		return account_pwd;
	}


	public void setAccount_pwd(String account_pwd) {
		this.account_pwd = account_pwd;
	}


	public String getUser_name() {
		return user_name;
	}


	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}


	public Date getUser_birth() {
		return user_birth;
	}


	public void setUser_birth(Date user_birth) {
		this.user_birth = user_birth;
	}


	public String getUser_gender() {
		return user_gender;
	}


	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}


	public String getUser_phone() {
		return user_phone;
	}


	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}


	public String getUser_addr() {
		return user_addr;
	}


	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}


	public String getUser_img() {
		return user_img;
	}


	public void setUser_img(String user_img) {
		this.user_img = user_img;
	}


	public String getUser_email() {
		return user_email;
	}


	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}


	public String getUser_education() {
		return user_education;
	}


	public void setUser_education(String user_education) {
		this.user_education = user_education;
	}


	public String getUser_major() {
		return user_major;
	}


	public void setUser_major(String user_major) {
		this.user_major = user_major;
	}


	public Date getUser_date() {
		return user_date;
	}


	public void setUser_date(Date user_date) {
		this.user_date = user_date;
	}



	public int getAuth_no() {
		return auth_no;
	}



	public void setAuth_no(int auth_no) {
		this.auth_no = auth_no;
	}

	


	public String getAccount_active() {
		return account_active;
	}



	public void setAccount_active(String account_active) {
		this.account_active = account_active;
	}



	@Override
	public String toString() {
		return "AccountVO [account_id=" + account_id + ", account_pwd=" + account_pwd + ", user_name=" + user_name
				+ ", user_birth=" + user_birth + ", user_gender=" + user_gender + ", user_phone=" + user_phone
				+ ", user_addr=" + user_addr + ", user_img=" + user_img + ", user_email=" + user_email
				+ ", user_education=" + user_education + ", user_major=" + user_major + ", user_date=" + user_date
				+ ", auth_no=" + auth_no + ", account_active=" + account_active + "]";
	}




	
	
	
}
