package com.lec.mgb.admin.beans;

public class AMWriteDTO {
	private int member_uid;
	private String member_name;
	private String member_id;
	
	public AMWriteDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AMWriteDTO(int member_uid, String member_name, String member_id) {
		super();
		this.member_uid = member_uid;
		this.member_name = member_name;
		this.member_id = member_id;
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

	
	
}
