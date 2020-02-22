package com.lec.mgb.mybatis.beans;

import java.util.ArrayList;


public class AjaxMemberList {
	int count;   // 데이터 개수
	String status;   // 처리 결과
	ArrayList<MyPageInfoDTO> list; // 데이터
	
	// 기본생성자, 매개변수 생성자, getter,setter 만들기
	
	public AjaxMemberList() {}
	public AjaxMemberList(int count, String status, ArrayList<MyPageInfoDTO> list) {
		super();
		this.count = count;
		this.status = status;
		this.list = list;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int num) {
		this.count = num;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public ArrayList<MyPageInfoDTO> getList() {
		return list;
	}
	public void setList(ArrayList<MyPageInfoDTO> list) {
		this.list = list;
	}
}
