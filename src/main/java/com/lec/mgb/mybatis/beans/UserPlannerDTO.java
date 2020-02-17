package com.lec.mgb.mybatis.beans;

import java.sql.Timestamp;

public class UserPlannerDTO {
	private String memeber_name;
	private String memeber_pic;
	
	private int planner_uid;
	private String planner_title;
	private Timestamp planner_dep_time;
	private int planner_sleep;
	private Timestamp planner_end_time;
	private int planner_view_cnt;
	private int planner_stat;
	private int planner_cost_trans;
	private int planner_cost_eat;
	private int planner_cost_etc;
	
	private int plan_uid;
	private Timestamp plan_date;
	private int plan_stay;
	private int plan_local_uid;
	private int plan_next_local_uid;
	
	// 기본 생성자
	private int trans_uid;
	private String trans_name;
	private String trans_icon;
	public UserPlannerDTO(String memeber_name, String memeber_pic, int planner_uid, String planner_title,
			Timestamp planner_dep_time, int planner_sleep, Timestamp planner_end_time, int planner_view_cnt,
			int planner_stat, int planner_cost_trans, int planner_cost_eat, int planner_cost_etc, int plan_uid,
			Timestamp plan_date, int plan_stay, int plan_local_uid, int plan_next_local_uid, int trans_uid,
			String trans_name, String trans_icon) {
		super();
		this.memeber_name = memeber_name;
		this.memeber_pic = memeber_pic;
		this.planner_uid = planner_uid;
		this.planner_title = planner_title;
		this.planner_dep_time = planner_dep_time;
		this.planner_sleep = planner_sleep;
		this.planner_end_time = planner_end_time;
		this.planner_view_cnt = planner_view_cnt;
		this.planner_stat = planner_stat;
		this.planner_cost_trans = planner_cost_trans;
		this.planner_cost_eat = planner_cost_eat;
		this.planner_cost_etc = planner_cost_etc;
		this.plan_uid = plan_uid;
		this.plan_date = plan_date;
		this.plan_stay = plan_stay;
		this.plan_local_uid = plan_local_uid;
		this.plan_next_local_uid = plan_next_local_uid;
		this.trans_uid = trans_uid;
		this.trans_name = trans_name;
		this.trans_icon = trans_icon;
	}
	
	// getter / setter
	public String getMemeber_name() {
		return memeber_name;
	}
	public void setMemeber_name(String memeber_name) {
		this.memeber_name = memeber_name;
	}
	public String getMemeber_pic() {
		return memeber_pic;
	}
	public void setMemeber_pic(String memeber_pic) {
		this.memeber_pic = memeber_pic;
	}
	public int getPlanner_uid() {
		return planner_uid;
	}
	public void setPlanner_uid(int planner_uid) {
		this.planner_uid = planner_uid;
	}
	public String getPlanner_title() {
		return planner_title;
	}
	public void setPlanner_title(String planner_title) {
		this.planner_title = planner_title;
	}
	public Timestamp getPlanner_dep_time() {
		return planner_dep_time;
	}
	public void setPlanner_dep_time(Timestamp planner_dep_time) {
		this.planner_dep_time = planner_dep_time;
	}
	public int getPlanner_sleep() {
		return planner_sleep;
	}
	public void setPlanner_sleep(int planner_sleep) {
		this.planner_sleep = planner_sleep;
	}
	public Timestamp getPlanner_end_time() {
		return planner_end_time;
	}
	public void setPlanner_end_time(Timestamp planner_end_time) {
		this.planner_end_time = planner_end_time;
	}
	public int getPlanner_view_cnt() {
		return planner_view_cnt;
	}
	public void setPlanner_view_cnt(int planner_view_cnt) {
		this.planner_view_cnt = planner_view_cnt;
	}
	public int getPlanner_stat() {
		return planner_stat;
	}
	public void setPlanner_stat(int planner_stat) {
		this.planner_stat = planner_stat;
	}
	public int getPlanner_cost_trans() {
		return planner_cost_trans;
	}
	public void setPlanner_cost_trans(int planner_cost_trans) {
		this.planner_cost_trans = planner_cost_trans;
	}
	public int getPlanner_cost_eat() {
		return planner_cost_eat;
	}
	public void setPlanner_cost_eat(int planner_cost_eat) {
		this.planner_cost_eat = planner_cost_eat;
	}
	public int getPlanner_cost_etc() {
		return planner_cost_etc;
	}
	public void setPlanner_cost_etc(int planner_cost_etc) {
		this.planner_cost_etc = planner_cost_etc;
	}
	public int getPlan_uid() {
		return plan_uid;
	}
	public void setPlan_uid(int plan_uid) {
		this.plan_uid = plan_uid;
	}
	public Timestamp getPlan_date() {
		return plan_date;
	}
	public void setPlan_date(Timestamp plan_date) {
		this.plan_date = plan_date;
	}
	public int getPlan_stay() {
		return plan_stay;
	}
	public void setPlan_stay(int plan_stay) {
		this.plan_stay = plan_stay;
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
	public int getTrans_uid() {
		return trans_uid;
	}
	public void setTrans_uid(int trans_uid) {
		this.trans_uid = trans_uid;
	}
	public String getTrans_name() {
		return trans_name;
	}
	public void setTrans_name(String trans_name) {
		this.trans_name = trans_name;
	}
	public String getTrans_icon() {
		return trans_icon;
	}
	public void setTrans_icon(String trans_icon) {
		this.trans_icon = trans_icon;
	}
	
}