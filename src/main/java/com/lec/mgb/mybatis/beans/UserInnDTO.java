package com.lec.mgb.mybatis.beans;

import java.sql.Timestamp;

public class UserInnDTO {
	private int inn_uid;
	private String inn_name;
	private String inn_loc;
	private String inn_ment;
	private String inn_info;
	private int inn_sep;
	
	private int room_uid;
	private String room_name;
	private String room_info;
	private String room_pic;
	private int room_first_cost;
	private int room_last_cost;
	private int room_fee;

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
	public UserInnDTO() {
		super();
	}

	public UserInnDTO(int inn_uid, String inn_name, String inn_loc, String inn_ment, String inn_info, int inn_sep,
			int room_uid, String room_name, String room_info, String room_pic, int room_first_cost, int room_last_cost,
			int room_fee, int review_uid, String review_title, int review_star, String review_content, String member_id,
			String member_pic, Timestamp book_date, int book_member_cnt, int book_cost, String book_name) {
		super();
		this.inn_uid = inn_uid;
		this.inn_name = inn_name;
		this.inn_loc = inn_loc;
		this.inn_ment = inn_ment;
		this.inn_info = inn_info;
		this.inn_sep = inn_sep;
		this.room_uid = room_uid;
		this.room_name = room_name;
		this.room_info = room_info;
		this.room_pic = room_pic;
		this.room_first_cost = room_first_cost;
		this.room_last_cost = room_last_cost;
		this.room_fee = room_fee;
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

	public int getInn_uid() {
		return inn_uid;
	}

	public void setInn_uid(int inn_uid) {
		this.inn_uid = inn_uid;
	}

	public String getInn_name() {
		return inn_name;
	}

	public void setInn_name(String inn_name) {
		this.inn_name = inn_name;
	}

	public String getInn_loc() {
		return inn_loc;
	}

	public void setInn_loc(String inn_loc) {
		this.inn_loc = inn_loc;
	}

	public String getInn_ment() {
		return inn_ment;
	}

	public void setInn_ment(String inn_ment) {
		this.inn_ment = inn_ment;
	}

	public String getInn_info() {
		return inn_info;
	}

	public void setInn_info(String inn_info) {
		this.inn_info = inn_info;
	}

	public int getInn_sep() {
		return inn_sep;
	}

	public void setInn_sep(int inn_sep) {
		this.inn_sep = inn_sep;
	}

	public int getRoom_uid() {
		return room_uid;
	}

	public void setRoom_uid(int room_uid) {
		this.room_uid = room_uid;
	}

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public String getRoom_info() {
		return room_info;
	}

	public void setRoom_info(String room_info) {
		this.room_info = room_info;
	}

	public String getRoom_pic() {
		return room_pic;
	}

	public void setRoom_pic(String room_pic) {
		this.room_pic = room_pic;
	}

	public int getRoom_first_cost() {
		return room_first_cost;
	}

	public void setRoom_first_cost(int room_first_cost) {
		this.room_first_cost = room_first_cost;
	}

	public int getRoom_last_cost() {
		return room_last_cost;
	}

	public void setRoom_last_cost(int room_last_cost) {
		this.room_last_cost = room_last_cost;
	}

	public int getRoom_fee() {
		return room_fee;
	}

	public void setRoom_fee(int room_fee) {
		this.room_fee = room_fee;
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

	
	

	// getter / setter
	
}