package com.betago.dto;

import java.sql.Date;

public class BoardVO {
	private int board_no ;
	private int classification_no;
	private String board_title;
	private String account_id;
	private String board_content;
	private int board_hits;
	private int board_recomm;
	private Date board_write_date;
	private int board_active;
	private String board_img;
	private int board_a_no;
	private int board_a_reply;
	private int board_a_reply_order;
	private int maxbno;
	private int maxreply;
	private int maxreplyorder;
	

	
	// 전체 조회 디테일에 활용
	public BoardVO(int board_no, int classification_no, String board_title, String account_id, String board_content,
			int board_hits, int board_recomm, Date board_write_date, int board_active, String board_img, int board_a_no,
			int board_a_reply, int board_a_reply_order) {
		super();
		this.board_no = board_no;
		this.classification_no = classification_no;
		this.board_title = board_title;
		this.account_id = account_id;
		this.board_content = board_content;
		this.board_hits = board_hits;
		this.board_recomm = board_recomm;
		this.board_write_date = board_write_date;
		this.board_active = board_active;
		this.board_img = board_img;
		this.board_a_no = board_a_no;
		this.board_a_reply = board_a_reply;
		this.board_a_reply_order = board_a_reply_order;
	}
	// 글등록에 활용
	
	public BoardVO(int classification, String title, String content, String id, String board_img) {
		this.classification_no = classification;
		this.board_title = title;
		this.board_content = content;
		this.account_id =id;
		this.board_img = board_img;
	}
	// 댓글
//	account_id, board_content, board_a_no,board_a_reply, board_a_reply_order) 
	public BoardVO(String account_id, String board_content, int board_a_no) {
		this.account_id = account_id;
		this.board_content = board_content;
		this.board_a_no = board_a_no;

	}
	public BoardVO(int maxbno) {
		// TODO Auto-generated constructor stub
		this.maxbno = maxbno;
	}
	public BoardVO(int maxreply, int maxreplyorder) {
		this.maxreply = maxreply;
		this.maxreplyorder = maxreplyorder;
	}

	public BoardVO(String account_id, String board_content, int board_a_no, int board_a_reply) {
		this.account_id =account_id;
		this.board_content = board_content;
		this.board_a_no = board_a_no;
		this.board_a_reply = board_a_reply;
	}

	public BoardVO(String board_img) {
		// TODO Auto-generated constructor stub
		this.board_img = board_img;
	}

	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public int getClassification_no() {
		return classification_no;
	}
	public void setClassification_no(int classification_no) {
		this.classification_no = classification_no;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getAccount_id() {
		return account_id;
	}
	public void setAccount_id(String account_id) {
		this.account_id = account_id;
	}
	public String getBoard_content() {
		return board_content;
	}

	public int getBoard_hits() {
		return board_hits;
	}
	public void setBoard_hits(int board_hits) {
		this.board_hits = board_hits;
	}
	public int getBoard_recomm() {
		return board_recomm;
	}
	public void setBoard_recomm(int board_recomm) {
		this.board_recomm = board_recomm;
	}

	public Date getBoard_write_date() {
		return board_write_date;
	}
	public void setBoard_write_date(Date board_write_date) {
		this.board_write_date = board_write_date;
	}
	public int getBoard_active() {
		return board_active;
	}
	public void setBoard_active(int board_active) {
		this.board_active = board_active;
	}
	public int getBoard_a_no() {
		return board_a_no;
	}
	public void setBoard_a_no(int board_a_no) {
		this.board_a_no = board_a_no;
	}
	
	
	
	public int getBoard_a_reply() {
		return board_a_reply;
	}
	public void setBoard_a_reply(int board_a_reply) {
		this.board_a_reply = board_a_reply;
	}
	public String getBoard_img() {
		return board_img;
	}
	public void setBoard_img(String board_img) {
		this.board_img = board_img;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	
	public int getBoard_a_reply_order() {
		return board_a_reply_order;
	}
	public void setBoard_a_reply_order(int board_a_reply_order) {
		this.board_a_reply_order = board_a_reply_order;
	}
	public int getMaxbno() {
		return maxbno;
	}

	public void setMaxbno(int maxbno) {
		this.maxbno = maxbno;
	}
	

	public int getMaxreply() {
		return maxreply;
	}

	public void setMaxreply(int maxreply) {
		this.maxreply = maxreply;
	}

	public int getMaxreplyorder() {
		return maxreplyorder;
	}

	public void setMaxreplyorder(int maxreplyorder) {
		this.maxreplyorder = maxreplyorder;
	}

	@Override
	public String toString() {
		return "BoardVO [board_no=" + board_no + ", classification_no=" + classification_no + ", board_title="
				+ board_title + ", account_id=" + account_id + ", board_content=" + board_content + ", board_hits="
				+ board_hits + ", board_recomm=" + board_recomm + ", board_write_date=" + board_write_date
				+ ", board_active=" + board_active + ", board_img=" + board_img + ", board_a_no=" + board_a_no
				+ ", board_a_reply=" + board_a_reply + ", board_a_reply_order=" + board_a_reply_order + "]";
	}
	
	
	
	
	
	
	
}
