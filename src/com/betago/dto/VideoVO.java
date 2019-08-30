package com.betago.dto;

public class VideoVO {
	private int video_no;
	private String video_title;
	private String video_link;
	private String video_thumbnail;
	private int video_category;
	private int video_viewcnt;
	
	public VideoVO(int video_no, String video_title, String video_link, String video_thumbnail, int video_category,
			int video_viewcnt) {
		super();
		this.video_no = video_no;
		this.video_title = video_title;
		this.video_link = video_link;
		this.video_thumbnail = video_thumbnail;
		this.video_category = video_category;
		this.video_viewcnt = video_viewcnt;
	}
	
	public int getVideo_no() {
		return video_no;
	}
	public void setVideo_no(int video_no) {
		this.video_no = video_no;
	}
	public String getVideo_title() {
		return video_title;
	}
	public void setVideo_title(String video_title) {
		this.video_title = video_title;
	}
	public String getVideo_link() {
		return video_link;
	}
	public void setVideo_link(String video_link) {
		this.video_link = video_link;
	}
	public String getVideo_thumbnail() {
		return video_thumbnail;
	}
	public void setVideo_thumbnail(String video_thumbnail) {
		this.video_thumbnail = video_thumbnail;
	}
	public int getVideo_category() {
		return video_category;
	}
	public void setVideo_category(int video_category) {
		this.video_category = video_category;
	}
	public int getVideo_viewcnt() {
		return video_viewcnt;
	}
	public void setVideo_viewcnt(int video_viewcnt) {
		this.video_viewcnt = video_viewcnt;
	}

	@Override
	public String toString() {
		return "VideoVO [video_no=" + video_no + ", video_title=" + video_title + ", video_link=" + video_link
				+ ", video_thumbnail=" + video_thumbnail + ", video_category=" + video_category + ", video_viewcnt="
				+ video_viewcnt + "]";
	}
	
	
	
}
