package com.lec.mgb.mybatis.beans;

import java.util.ArrayList;

public interface LocalAjaxDAO {
	public ArrayList<LocalDTO> select();
	public PlanDTO insertPlan();
	public PlannerDTO insertPlanner();
	public LocalDTO selectPlan(int local_uid);
	public ArrayList<LocalDTO> search(String SearchText);
	public ArrayList<LocalDTO> save();
}
