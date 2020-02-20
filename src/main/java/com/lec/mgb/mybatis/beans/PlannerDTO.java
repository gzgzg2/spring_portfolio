package com.lec.mgb.mybatis.beans;

public class PlannerDTO {
	private int planner_uid; 
	private String planner_title;
	private int lanner_view_cnt;
	private int planner_stat; 
	private int planner_cost_trans;
	private int planner_cost_inn;
	private int planner_cost_eat;
	private int planner_cost_etc;
	private int member_uid;
	
	
	public PlannerDTO() {
		super();
	}


	public PlannerDTO(int planner_uid, String planner_title, int lanner_view_cnt, int planner_stat,
			int planner_cost_trans, int planner_cost_inn, int planner_cost_eat, int planner_cost_etc, int member_uid) {
		super();
		this.planner_uid = planner_uid;
		this.planner_title = planner_title;
		this.lanner_view_cnt = lanner_view_cnt;
		this.planner_stat = planner_stat;
		this.planner_cost_trans = planner_cost_trans;
		this.planner_cost_inn = planner_cost_inn;
		this.planner_cost_eat = planner_cost_eat;
		this.planner_cost_etc = planner_cost_etc;
		this.member_uid = member_uid;
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


	public int getLanner_view_cnt() {
		return lanner_view_cnt;
	}


	public void setLanner_view_cnt(int lanner_view_cnt) {
		this.lanner_view_cnt = lanner_view_cnt;
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
	
	
}
