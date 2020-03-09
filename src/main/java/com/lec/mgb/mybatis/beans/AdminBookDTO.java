package com.lec.mgb.mybatis.beans;

public class AdminBookDTO {
	private int book_uid;
	private String book_date;
	private int book_member_cnt;
	private String book_cost;
	private String book_name;
	private String book_member_name;
	private String book_member_tel;
	private int member_uid;
	private int room_uid;
	private int ticket_uid;
	private int tour_uid;
	private int plan_uid;
	
	public AdminBookDTO() {}

	public AdminBookDTO(int book_uid, String book_date, int book_member_cnt, String book_cost, String book_name,
			String book_member_name, String book_member_tel, int member_uid, int room_uid, int ticket_uid, int tour_uid,
			int plan_uid) {
		super();
		this.book_uid = book_uid;
		this.book_date = book_date;
		this.book_member_cnt = book_member_cnt;
		this.book_cost = book_cost;
		this.book_name = book_name;
		this.book_member_name = book_member_name;
		this.book_member_tel = book_member_tel;
		this.member_uid = member_uid;
		this.room_uid = room_uid;
		this.ticket_uid = ticket_uid;
		this.tour_uid = tour_uid;
		this.plan_uid = plan_uid;
	}

	public int getBook_uid() {
		return book_uid;
	}

	public void setBook_uid(int book_uid) {
		this.book_uid = book_uid;
	}

	public String getBook_date() {
		return book_date;
	}

	public void setBook_date(String book_date) {
		this.book_date = book_date;
	}

	public int getBook_member_cnt() {
		return book_member_cnt;
	}

	public void setBook_member_cnt(int book_member_cnt) {
		this.book_member_cnt = book_member_cnt;
	}

	public String getBook_cost() {
		return book_cost;
	}

	public void setBook_cost(String book_cost) {
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

	public String getBook_member_tel() {
		return book_member_tel;
	}

	public void setBook_member_tel(String book_member_tel) {
		this.book_member_tel = book_member_tel;
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

	public int getTicket_uid() {
		return ticket_uid;
	}

	public void setTicket_uid(int ticket_uid) {
		this.ticket_uid = ticket_uid;
	}

	public int getTour_uid() {
		return tour_uid;
	}

	public void setTour_uid(int tour_uid) {
		this.tour_uid = tour_uid;
	}

	public int getPlan_uid() {
		return plan_uid;
	}

	public void setPlan_uid(int plan_uid) {
		this.plan_uid = plan_uid;
	}

	

	
	
	
	
	
}
