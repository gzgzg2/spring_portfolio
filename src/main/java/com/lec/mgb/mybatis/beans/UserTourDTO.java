package com.lec.mgb.mybatis.beans;

import java.sql.Timestamp;

public class UserTourDTO {
	private int tour_uid;
	private String tour_name;
	private int tour_cost;
	private int tour_period;
	private String tour_info;
	private String tour_pic;
	
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
	private String book_member_name;
	private int book_member_tel;
	private int member_uid;
	
	private String member_name;
	private String member_tel;
	
	// 기본 생성자
	public UserTourDTO() {
		super();
	}

	public UserTourDTO(int tour_uid, String tour_name, int tour_cost, int tour_period, String tour_info,
			String tour_pic, int review_uid, String review_title, int review_star, String review_content,
			String member_id, String member_pic, Timestamp book_date, int book_member_cnt, int book_cost,
			String book_name, String book_member_name, int book_member_tel, int member_uid, String member_name,
			String member_tel) {
		super();
		this.tour_uid = tour_uid;
		this.tour_name = tour_name;
		this.tour_cost = tour_cost;
		this.tour_period = tour_period;
		this.tour_info = tour_info;
		this.tour_pic = tour_pic;
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
		this.book_member_name = book_member_name;
		this.book_member_tel = book_member_tel;
		this.member_uid = member_uid;
		this.member_name = member_name;
		this.member_tel = member_tel;
	}

	public int getTour_uid() {
		return tour_uid;
	}

	public void setTour_uid(int tour_uid) {
		this.tour_uid = tour_uid;
	}

	public String getTour_name() {
		return tour_name;
	}

	public void setTour_name(String tour_name) {
		this.tour_name = tour_name;
	}

	public int getTour_cost() {
		return tour_cost;
	}

	public void setTour_cost(int tour_cost) {
		this.tour_cost = tour_cost;
	}

	public int getTour_period() {
		return tour_period;
	}

	public void setTour_period(int tour_period) {
		this.tour_period = tour_period;
	}

	public String getTour_info() {
		return tour_info;
	}

	public void setTour_info(String tour_info) {
		this.tour_info = tour_info;
	}

	public String getTour_pic() {
		return tour_pic;
	}

	public void setTour_pic(String tour_pic) {
		this.tour_pic = tour_pic;
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

	public String getBook_member_name() {
		return book_member_name;
	}

	public void setBook_member_name(String book_member_name) {
		this.book_member_name = book_member_name;
	}

	public int getBook_member_tel() {
		return book_member_tel;
	}

	public void setBook_member_tel(int book_member_tel) {
		this.book_member_tel = book_member_tel;
	}

	public int getMember_uid() {
		return member_uid;
	}

	public void setMember_uid(int member_uid) {
		this.member_uid = member_uid;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_tel() {
		return member_tel;
	}

	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}

	
}