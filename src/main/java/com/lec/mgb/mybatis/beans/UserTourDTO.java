package com.lec.mgb.mybatis.beans;

import java.sql.Timestamp;

public class UserTourDTO {
	private int tour_uid;
	private String tour_name;
	private int tour_cost;
	private int tour_period;
	private int tour_info;
	private int tour_img;
	
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
	public UserTourDTO() {
		super();
	}

	public UserTourDTO(int tour_uid, String tour_name, int tour_cost, int tour_period, int tour_info, int tour_img,
			int review_uid, String review_title, int review_star, String review_content, String member_id,
			String member_pic, Timestamp book_date, int book_member_cnt, int book_cost, String book_name) {
		super();
		this.tour_uid = tour_uid;
		this.tour_name = tour_name;
		this.tour_cost = tour_cost;
		this.tour_period = tour_period;
		this.tour_info = tour_info;
		this.tour_img = tour_img;
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

	public int getTour_info() {
		return tour_info;
	}

	public void setTour_info(int tour_info) {
		this.tour_info = tour_info;
	}

	public int getTour_img() {
		return tour_img;
	}

	public void setTour_img(int tour_img) {
		this.tour_img = tour_img;
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