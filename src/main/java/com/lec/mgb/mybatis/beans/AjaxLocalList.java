package com.lec.mgb.mybatis.beans;

import java.util.ArrayList;

public class AjaxLocalList {
	ArrayList<LocalDTO> list; // 데이터
	int count;  // 데이터 갯수
	String status; // 처리결과
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public ArrayList<LocalDTO> getList() {
		return list;
	}
	public void setList(ArrayList<LocalDTO> list) {
		this.list = list;
	}
	public int getCount() {
		return count;
	}
	public AjaxLocalList(ArrayList<LocalDTO> list, int count, String status) {
		super();
		this.list = list;
		this.count = count;
		this.status = status;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	public AjaxLocalList() {
		super();
	}
	
	
}
