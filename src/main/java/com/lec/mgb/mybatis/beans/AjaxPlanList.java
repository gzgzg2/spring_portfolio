package com.lec.mgb.mybatis.beans;

import java.util.ArrayList;

public class AjaxPlanList {
	ArrayList<PlanDTO> list; // 데이터
	int count;  // 데이터 갯수
	String status; // 처리결과
	public ArrayList<PlanDTO> getList() {
		return list;
	}
	public void setList(ArrayList<PlanDTO> list) {
		this.list = list;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public AjaxPlanList(ArrayList<PlanDTO> list, int count, String status) {
		super();
		this.list = list;
		this.count = count;
		this.status = status;
	}
	public AjaxPlanList() {
		super();
	}
	
	
}
