package com.betago.dto;

import java.sql.Date;

public class ChapterVO {
	int chapter_no;
	int class_no;
	String chapter_title;
	String chapter_object;
	String chapter_detail;
	Date chapter_startdate;
	Date chapter_enddate;
	int video_no;
	
	public int getChapter_no() {
		return chapter_no;
	}
	public void setChapter_no(int chapter_no) {
		this.chapter_no = chapter_no;
	}
	public int getClass_no() {
		return class_no;
	}
	public void setClass_no(int class_no) {
		this.class_no = class_no;
	}
	public String getChapter_title() {
		return chapter_title;
	}
	public void setChapter_title(String chapter_title) {
		this.chapter_title = chapter_title;
	}
	public String getChapter_object() {
		return chapter_object;
	}
	public void setChapter_object(String chapter_object) {
		this.chapter_object = chapter_object;
	}
	public String getChapter_detail() {
		return chapter_detail;
	}
	public void setChapter_detail(String chapter_detail) {
		this.chapter_detail = chapter_detail;
	}
	public Date getChapter_startdate() {
		return chapter_startdate;
	}
	public void setChapter_startdate(Date chapter_startdate) {
		this.chapter_startdate = chapter_startdate;
	}
	public Date getChapter_enddate() {
		return chapter_enddate;
	}
	public void setChapter_enddate(Date chapter_enddate) {
		this.chapter_enddate = chapter_enddate;
	}
	public int getVideo_no() {
		return video_no;
	}
	public void setVideo_no(int video_no) {
		this.video_no = video_no;
	}
	
	public ChapterVO(int chapter_no, int class_no, String chapter_title, String chapter_object, String chapter_detail,
			Date chapter_startdate, Date chapter_enddate, int video_no) {
		super();
		this.chapter_no = chapter_no;
		this.class_no = class_no;
		this.chapter_title = chapter_title;
		this.chapter_object = chapter_object;
		this.chapter_detail = chapter_detail;
		this.chapter_startdate = chapter_startdate;
		this.chapter_enddate = chapter_enddate;
		this.video_no = video_no;
	}
	
	@Override
	public String toString() {
		return "ChapterVO [chapter_no=" + chapter_no + ", class_no=" + class_no + ", chapter_title=" + chapter_title
				+ ", chapter_object=" + chapter_object + ", chapter_detail=" + chapter_detail + ", chapter_startdate="
				+ chapter_startdate + ", chapter_enddate=" + chapter_enddate + ", video_no=" + video_no + "]";
	}
	
	
}
