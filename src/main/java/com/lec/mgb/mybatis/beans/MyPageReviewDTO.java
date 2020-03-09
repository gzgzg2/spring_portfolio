package com.lec.mgb.mybatis.beans;

import java.sql.Date;

public class MyPageReviewDTO {
	private int review_uid;
	private String review_title;
	private int review_star;
	private String review_id;
	private String review_content;

	// uid
	private int book_uid;
	private int member_uid;
	private int room_uid;
	private int tour_uid;
	private int ticket_uid;
	private int inn_uid;

	//Name
	private String ticket_name;
	private String activ_name;
	private String room_name;
	private String tour_name;
	private String inn_name;
	private String member_name;
	private String book_date;

	//TOUR
	private String tour_period;

	//Sep
	private String inn_sep; 

	//loc
	private String activ_loc;
	private String inn_loc;
	
	public MyPageReviewDTO(int review_uid, String review_title, int review_star, String review_id,
			String review_content, int book_uid, int member_uid, int room_uid, int tour_uid, int ticket_uid,
			int inn_uid, String ticket_name, String activ_name, String room_name, String tour_name, String inn_name,
			String book_date, String tour_period, String inn_sep, String activ_loc, String inn_loc, String member_name) {
		super();
		this.review_uid = review_uid;
		this.review_title = review_title;
		this.review_star = review_star;
		this.review_id = review_id;
		this.review_content = review_content;
		this.book_uid = book_uid;
		this.member_uid = member_uid;
		this.room_uid = room_uid;
		this.tour_uid = tour_uid;
		this.ticket_uid = ticket_uid;
		this.inn_uid = inn_uid;
		this.ticket_name = ticket_name;
		this.activ_name = activ_name;
		this.room_name = room_name;
		this.tour_name = tour_name;
		this.inn_name = inn_name;
		this.book_date = book_date;
		this.tour_period = tour_period;
		this.inn_sep = inn_sep;
		this.activ_loc = activ_loc;
		this.inn_loc = inn_loc;
		this.member_name = member_name;
	}
	
	public MyPageReviewDTO() {
		super();
		// TODO Auto-generated constructor stub
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
	public String getReview_id() {
		return review_id;
	}
	public void setReview_id(String review_id) {
		this.review_id = review_id;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public int getBook_uid() {
		return book_uid;
	}
	public void setBook_uid(int book_uid) {
		this.book_uid = book_uid;
	}
	public int getMember_uid() {
		return member_uid;
	}
	public void setMember_uid(int member_uid) {
		this.member_uid = member_uid;
	}
	public int getRoom_uid() {
		return room_uid;
	}
	public void setRoom_uid(int room_uid) {
		this.room_uid = room_uid;
	}
	public int getTour_uid() {
		return tour_uid;
	}
	public void setTour_uid(int tour_uid) {
		this.tour_uid = tour_uid;
	}
	public int getTicket_uid() {
		return ticket_uid;
	}
	public void setTicket_uid(int ticket_uid) {
		this.ticket_uid = ticket_uid;
	}
	public int getInn_uid() {
		return inn_uid;
	}
	public void setInn_uid(int inn_uid) {
		this.inn_uid = inn_uid;
	}
	public String getTicket_name() {
		return ticket_name;
	}
	public void setTicket_name(String ticket_name) {
		this.ticket_name = ticket_name;
	}
	public String getActiv_name() {
		return activ_name;
	}
	public void setActiv_name(String activ_name) {
		this.activ_name = activ_name;
	}
	public String getRoom_name() {
		return room_name;
	}
	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}
	public String getTour_name() {
		return tour_name;
	}
	public void setTour_name(String tour_name) {
		this.tour_name = tour_name;
	}
	public String getInn_name() {
		return inn_name;
	}
	public void setInn_name(String inn_name) {
		this.inn_name = inn_name;
	}
	public String getBook_date() {
		return book_date;
	}
	public void setBook_date(String book_date) {
		this.book_date = book_date;
	}
	public String getTour_period() {
		return tour_period;
	}
	public void setTour_period(String tour_period) {
		this.tour_period = tour_period;
	}
	public String getInn_sep() {
		return inn_sep;
	}
	public void setInn_sep(String inn_sep) {
		this.inn_sep = inn_sep;
	}
	public String getActiv_loc() {
		return activ_loc;
	}
	public void setActiv_loc(String activ_loc) {
		this.activ_loc = activ_loc;
	}
	public String getInn_loc() {
		return inn_loc;
	}
	public void setInn_loc(String inn_loc) {
		this.inn_loc = inn_loc;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}



}