package com.lec.mgb.mybatis.beans;

public class LocalDTO {
	private int local_uid;
	private String local_name;
	private String local_hello;
	private String local_lat;
	private String local_lng;
	private String local_loc;	
	private String local_tel;
	private String local_pic;

	public LocalDTO() {
		super();
	}
	
	public LocalDTO(int local_uid, String local_name, String local_hello, String local_lat, String local_lng,
			String local_loc, String local_tel, String local_pic) {
		super();
		this.local_uid = local_uid;
		this.local_name = local_name;
		this.local_hello = local_hello;
		this.local_lat = local_lat;
		this.local_lng = local_lng;
		this.local_loc = local_loc;
		this.local_tel = local_tel;
		this.local_pic = local_pic;
	}
	
	public int getLocal_uid() {
		return local_uid;
	}
	
	public void setLocal_uid(int local_uid) {
		this.local_uid = local_uid;
	}
	
	public String getLocal_name() {
		return local_name;
	}
	
	public void setLocal_name(String local_name) {
		this.local_name = local_name;
	}
	
	public String getLocal_hello() {
		return local_hello;
	}
	
	public void setLocal_hello(String local_hello) {
		this.local_hello = local_hello;
	}
	
	public String getLocal_lat() {
		return local_lat;
	}
	
	public void setLocal_lat(String local_lat) {
		this.local_lat = local_lat;
	}
	
	public String getLocal_lng() {
		return local_lng;
	}
	
	public void setLocal_lng(String local_lng) {
		this.local_lng = local_lng;
	}
	
	public String getLocal_loc() {
		return local_loc;
	}
	
	public void setLocal_loc(String local_loc) {
		this.local_loc = local_loc;
	}
	
	public String getLocal_tel() {
		return local_tel;
	}
	
	public void setLocal_tel(String local_tel) {
		this.local_tel = local_tel;
	}
	
	public String getLocal_pic() {
		return local_pic;
	}
	
	public void setLocal_pic(String local_pic) {
		this.local_pic = local_pic;
	}
	
	
	
}
