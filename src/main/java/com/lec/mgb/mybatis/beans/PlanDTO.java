package com.lec.mgb.mybatis.beans;

import java.sql.Date;

public class PlanDTO {
	private int plan_uid; 
	private Date plan_date;
	private int plan_stay; 
	private int trans_uid; 
	private int planner_uid;
	private int plan_local_uid;
	private int plan_next_local_uid;
	
	
	public int getPlan_uid() {
		return plan_uid;
	}
	public void setPlan_uid(int plan_uid) {
		this.plan_uid = plan_uid;
	}
	public Date getPlan_date() {
		return plan_date;
	}
	public void setPlan_date(Date plan_date) {
		this.plan_date = plan_date;
	}
	public int getPlan_stay() {
		return plan_stay;
	}
	public void setPlan_stay(int plan_stay) {
		this.plan_stay = plan_stay;
	}
	public int getTrans_uid() {
		return trans_uid;
	}
	public void setTrans_uid(int trans_uid) {
		this.trans_uid = trans_uid;
	}
	public int getPlanner_uid() {
		return planner_uid;
	}
	public void setPlanner_uid(int planner_uid) {
		this.planner_uid = planner_uid;
	}
	public int getPlan_local_uid() {
		return plan_local_uid;
	}
	public void setPlan_local_uid(int plan_local_uid) {
		this.plan_local_uid = plan_local_uid;
	}
	public int getPlan_next_local_uid() {
		return plan_next_local_uid;
	}
	public void setPlan_next_local_uid(int plan_next_local_uid) {
		this.plan_next_local_uid = plan_next_local_uid;
	}
	public PlanDTO(int plan_uid, Date plan_date, int plan_stay, int trans_uid, int planner_uid, int plan_local_uid,
			int plan_next_local_uid) {
		super();
		this.plan_uid = plan_uid;
		this.plan_date = plan_date;
		this.plan_stay = plan_stay;
		this.trans_uid = trans_uid;
		this.planner_uid = planner_uid;
		this.plan_local_uid = plan_local_uid;
		this.plan_next_local_uid = plan_next_local_uid;
	}
	public PlanDTO() {
		super();
	}
	
}
