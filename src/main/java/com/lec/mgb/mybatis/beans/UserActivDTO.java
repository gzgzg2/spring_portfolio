package com.lec.mgb.mybatis.beans;

import java.sql.Timestamp;

public class UserActivDTO {
	private int activ_uid;
	private String activ_name;
	private String activ_loc;
	private String activ_info;
	private String activ_shop_info;
	private String activ_img;

	private int ticket_uid;
	private String ticket_name;
	private int ticket_first_cost;
	private int ticket_last_cost;
	private String ticket_info;

	private int review_uid;
	private String review_title;
	private int review_star;
	private String review_content;
	private String member_id;
	private String member_pic;
	
	private Timestamp book_date;
	private int book_member_cnt;
	private int book_cost;
	private String book_name;
	
	// 기본 생성자
	public UserActivDTO() {
		super();
	}

	public UserActivDTO(int activ_uid, String activ_name, String activ_loc, String activ_info, String activ_shop_info,
			String activ_img, int ticket_uid, String ticket_name, int ticket_first_cost, int ticket_last_cost,
			String ticket_info, int review_uid, String review_title, int review_star, String review_content,
			String member_id, String member_pic, Timestamp book_date, int book_member_cnt, int book_cost,
			String book_name) {
		super();
		this.activ_uid = activ_uid;
		this.activ_name = activ_name;
		this.activ_loc = activ_loc;
		this.activ_info = activ_info;
		this.activ_shop_info = activ_shop_info;
		this.activ_img = activ_img;
		this.ticket_uid = ticket_uid;
		this.ticket_name = ticket_name;
		this.ticket_first_cost = ticket_first_cost;
		this.ticket_last_cost = ticket_last_cost;
		this.ticket_info = ticket_info;
		this.review_uid = review_uid;
		this.review_title = review_title;
		this.review_star = review_star;
		this.review_content = review_content;
		this.member_id = member_id;
		this.member_pic = member_pic;
		this.book_date = book_date;
		this.book_member_cnt = book_member_cnt;
		this.book_cost = book_cost;
		this.book_name = book_name;
	}



	// getter / setter
	public int getActiv_uid() {
		return activ_uid;
	}

	public void setActiv_uid(int activ_uid) {
		this.activ_uid = activ_uid;
	}

	public String getActiv_name() {
		return activ_name;
	}

	public void setActiv_name(String activ_name) {
		this.activ_name = activ_name;
	}

	public String getActiv_loc() {
		return activ_loc;
	}

	public void setActiv_loc(String activ_loc) {
		this.activ_loc = activ_loc;
	}

	public String getActiv_info() {
		return activ_info;
	}

	public void setActiv_info(String activ_info) {
		this.activ_info = activ_info;
	}

	public String getActiv_shop_info() {
		return activ_shop_info;
	}

	public void setActiv_shop_info(String activ_shop_info) {
		this.activ_shop_info = activ_shop_info;
	}

	public String getActiv_img() {
		return activ_img;
	}

	public void setActiv_img(String activ_img) {
		this.activ_img = activ_img;
	}

	public int getTicket_uid() {
		return ticket_uid;
	}

	public void setTicket_uid(int ticket_uid) {
		this.ticket_uid = ticket_uid;
	}

	public String getTicket_name() {
		return ticket_name;
	}

	public void setTicket_name(String ticket_name) {
		this.ticket_name = ticket_name;
	}

	public int getTicket_first_cost() {
		return ticket_first_cost;
	}

	public void setTicket_first_cost(int ticket_first_cost) {
		this.ticket_first_cost = ticket_first_cost;
	}

	public int getTicket_last_cost() {
		return ticket_last_cost;
	}

	public void setTicket_last_cost(int ticket_last_cost) {
		this.ticket_last_cost = ticket_last_cost;
	}

	public String getTicket_info() {
		return ticket_info;
	}

	public void setTicket_info(String ticket_info) {
		this.ticket_info = ticket_info;
	}

	public int getReview_uid() {
		return review_uid;
	}

	public void setReview_uid(int review_uid) {
		this.review_uid = review_uid;
	}

	public String getReview_title() {
		return review_title;
	}

	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}

	public int getReview_star() {
		return review_star;
	}

	public void setReview_star(int review_star) {
		this.review_star = review_star;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pic() {
		return member_pic;
	}

	public void setMember_pic(String member_pic) {
		this.member_pic = member_pic;
	}

	public Timestamp getBook_date() {
		return book_date;
	}

	public void setBook_date(Timestamp book_date) {
		this.book_date = book_date;
	}

	public int getBook_member_cnt() {
		return book_member_cnt;
	}

	public void setBook_member_cnt(int book_member_cnt) {
		this.book_member_cnt = book_member_cnt;
	}

	public int getBook_cost() {
		return book_cost;
	}

	public void setBook_cost(int book_cost) {
		this.book_cost = book_cost;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}


	
}