package com.lec.mgb.mybatis.beans;

public class PlannerListDTO {
	private int planner_uid; 
	private String planner_title;
	private int planner_view_cnt;
	private int planner_stat; 
	private int planner_cost_trans;
	private int planner_cost_inn;
	private int planner_cost_eat;
	private int planner_cost_etc;
	private int member_uid;
	private int plan_uid;
	private String plan_date;
	private int trans_uid;
	private int plan_local_uid;
	private int plan_next_local_uid;
	private int local_uid;
	private String local_name;
	private String local_hello;
	private String local_lat;
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
	public PlannerListDTO(int planner_uid, String planner_title, int planner_view_cnt, int planner_stat,
			int planner_cost_trans, int planner_cost_inn, int planner_cost_eat, int planner_cost_etc, int member_uid,
			int plan_uid, String plan_date, int trans_uid, int plan_local_uid, int plan_next_local_uid, int local_uid,
			String local_name, String local_hello, String local_lat, String local_lng, String local_loc,
			String local_tel, String local_pic) {
		super();
		this.planner_uid = planner_uid;
		this.planner_title = planner_title;
		this.planner_view_cnt = planner_view_cnt;
		this.planner_stat = planner_stat;
		this.planner_cost_trans = planner_cost_trans;
		this.planner_cost_inn = planner_cost_inn;
		this.planner_cost_eat = planner_cost_eat;
		this.planner_cost_etc = planner_cost_etc;
		this.member_uid = member_uid;
		this.plan_uid = plan_uid;
		this.plan_date = plan_date;
		this.trans_uid = trans_uid;
		this.plan_local_uid = plan_local_uid;
		this.plan_next_local_uid = plan_next_local_uid;
		this.local_uid = local_uid;
		this.local_name = local_name;
		this.local_hello = local_hello;
		this.local_lat = local_lat;
		this.local_lng = local_lng;
		this.local_loc = local_loc;
		this.local_tel = local_tel;
		this.local_pic = local_pic;
	}
	private String local_lng;
	private String local_loc;	
	private String local_tel;
	private String local_pic;
	
	
	
	public PlannerListDTO(int planner_uid, String planner_title, int planner_view_cnt, int planner_stat,
			int planner_cost_trans, int planner_cost_inn, int planner_cost_eat, int planner_cost_etc, int member_uid,
			int plan_uid, String plan_date, int trans_uid, int plan_local_uid, int plan_next_local_uid) {
		super();
		this.planner_uid = planner_uid;
		this.planner_title = planner_title;
		this.planner_view_cnt = planner_view_cnt;
		this.planner_stat = planner_stat;
		this.planner_cost_trans = planner_cost_trans;
		this.planner_cost_inn = planner_cost_inn;
		this.planner_cost_eat = planner_cost_eat;
		this.planner_cost_etc = planner_cost_etc;
		this.member_uid = member_uid;
		this.plan_uid = plan_uid;
		this.plan_date = plan_date;
		this.trans_uid = trans_uid;
		this.plan_local_uid = plan_local_uid;
		this.plan_next_local_uid = plan_next_local_uid;
	}
	public PlannerListDTO() {
		super();
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
	public int getPlanner_cost_inn() {
		return planner_cost_inn;
	}
	public void setPlanner_cost_inn(int planner_cost_inn) {
		this.planner_cost_inn = planner_cost_inn;
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
	public int getMember_uid() {
		return member_uid;
	}
	public void setMember_uid(int member_uid) {
		this.member_uid = member_uid;
	}
	public int getPlan_uid() {
		return plan_uid;
	}
	public void setPlan_uid(int plan_uid) {
		this.plan_uid = plan_uid;
	}
	public String getPlan_date() {
		return plan_date;
	}
	public void setPlan_date(String plan_date) {
		this.plan_date = plan_date;
	}
	public int getTrans_uid() {
		return trans_uid;
	}
	public void setTrans_uid(int trans_uid) {
		this.trans_uid = trans_uid;
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
	
}
