package com.lec.mgb.mybatis.beans;

import java.sql.Timestamp;

public class MyPageInfoDTO {
	private int member_uid;
	private String member_name;
	private String member_id;
	private String member_pw;
	private String member_email;
	private String member_gender;
	private Timestamp member_birth;
	private String member_pic;
	private String member_tel;
	private String member_pwEncode;
	
	public MyPageInfoDTO() {
		super();
	}


	public MyPageInfoDTO(int member_uid, String member_name, String member_id, String member_pw, String member_email,
			String member_gender, Timestamp member_birth, String member_pic, String member_tel,
			String member_pwEncode) {
		super();
		this.member_uid = member_uid;
		this.member_name = member_name;
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_email = member_email;
		this.member_gender = member_gender;
		this.member_birth = member_birth;
		this.member_pic = member_pic;
		this.member_tel = member_tel;
		this.member_pwEncode = member_pwEncode;
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


	public String getMember_id() {
		return member_id;
	}


	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}


	public String getMember_pw() {
		return member_pw;
	}


	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}


	public String getMember_email() {
		return member_email;
	}


	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}


	public String getMember_gender() {
		return member_gender;
	}


	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}


	public Timestamp getMember_birth() {
		return member_birth;
	}


	public void setMember_birth(Timestamp member_birth) {
		this.member_birth = member_birth;
	}


	public String getMember_pic() {
		return member_pic;
	}


	public void setMember_pic(String member_pic) {
		this.member_pic = member_pic;
	}


	public String getMember_tel() {
		return member_tel;
	}


	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}


	public String getMember_pwEncode() {
		return member_pwEncode;
	}


	public void setMember_pwEncode(String member_pwEncode) {
		this.member_pwEncode = member_pwEncode;
	}
	
	
	
	
	
	
}
