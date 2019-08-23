package com.betago.dto;

public class VideoJoinCategory {
	private int video_no;
	private String video_title;
	private String video_link;
	private int video_viewcnt;
	private int video_category_no;
	private String video_category_title;
	private String video_category_desc;
	
	public VideoJoinCategory(int video_no, String video_title, String video_link, int video_viewcnt, int video_category_no,
			String video_category_title, String video_category_desc) {
		super();
		this.video_no = video_no;
		this.video_title = video_title;
		this.video_link = video_link;
		this.video_viewcnt = video_viewcnt;
		this.video_category_no = video_category_no;
		this.video_category_title = video_category_title;
		this.video_category_desc = video_category_desc;
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



	public int getVideo_viewcnt() {
		return video_viewcnt;
	}



	public void setVideo_viewcnt(int video_viewcnt) {
		this.video_viewcnt = video_viewcnt;
	}



	public int getVideo_category_no() {
		return video_category_no;
	}



	public void setVideo_category_no(int video_category_no) {
		this.video_category_no = video_category_no;
	}



	public String getVideo_category_title() {
		return video_category_title;
	}



	public void setVideo_category_title(String video_category_title) {
		this.video_category_title = video_category_title;
	}



	public String getVideo_category_desc() {
		return video_category_desc;
	}



	public void setVideo_category_desc(String video_category_desc) {
		this.video_category_desc = video_category_desc;
	}



	@Override
	public String toString() {
		return "VideoJoinCategory [video_no=" + video_no + ", video_title=" + video_title + ", video_link=" + video_link
				+ ", video_category_no=" + video_category_no + ", video_category_title=" + video_category_title
				+ ", video_category_desc=" + video_category_desc + "]";
	}
	
	
	
}
