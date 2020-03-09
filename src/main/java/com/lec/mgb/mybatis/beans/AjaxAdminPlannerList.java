package com.lec.mgb.mybatis.beans;

import java.util.ArrayList;

public class AjaxAdminPlannerList {
	
	int count;   // 데이터 개수
	int cnt;	// 데이터 총 개수
	String status;   // 처리 결과
	ArrayList<AdminPlannerDTO> list; // 데이터

	public AjaxAdminPlannerList() {}
	public AjaxAdminPlannerList(int count, int cnt, String status, ArrayList<AdminPlannerDTO> list) {
		super();
		this.count = count;
		this.cnt = cnt;
		this.status = status;
		this.list = list;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public ArrayList<AdminPlannerDTO> getList() {
		return list;
	}
	public void setList(ArrayList<AdminPlannerDTO> list) {
		this.list = list;
	}
	
	
}
