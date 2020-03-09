package com.lec.mgb.mybatis.beans;

public class AdminPlannerDTO {
	private int planner_uid;
	private String planner_title;
	private int planner_view_cnt;
	private int planner_stat;
	private String planner_cost_trans;
	private String planner_cost_inn;
	
	public AdminPlannerDTO() {}

	public AdminPlannerDTO(int planner_uid, String planner_title, int planner_view_cnt, int planner_stat,
			String planner_cost_trans, String planner_cost_inn) {
		super();
		this.planner_uid = planner_uid;
		this.planner_title = planner_title;
		this.planner_view_cnt = planner_view_cnt;
		this.planner_stat = planner_stat;
		this.planner_cost_trans = planner_cost_trans;
		this.planner_cost_inn = planner_cost_inn;
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

	public String getPlanner_cost_trans() {
		return planner_cost_trans;
	}

	public void setPlanner_cost_trans(String planner_cost_trans) {
		this.planner_cost_trans = planner_cost_trans;
	}

	public String getPlanner_cost_inn() {
		return planner_cost_inn;
	}

	public void setPlanner_cost_inn(String planner_cost_inn) {
		this.planner_cost_inn = planner_cost_inn;
	}
	
	
	
	
}
