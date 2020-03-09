package com.lec.mgb.mybatis.beans;

import java.util.ArrayList;

public interface PlannerListDAO {
	public ArrayList<PlannerDTO> select(int planner_uid);
	public ArrayList<PlannerDTO> selectPlannerUid(int planner_uid);
}
