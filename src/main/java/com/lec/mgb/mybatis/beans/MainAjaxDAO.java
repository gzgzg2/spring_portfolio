package com.lec.mgb.mybatis.beans;

import java.util.ArrayList;

public interface MainAjaxDAO {
	public ArrayList<PlannerDTO> select(int planner_uid);
	public ArrayList<PlannerDTO> selectPlannerUid();
}
