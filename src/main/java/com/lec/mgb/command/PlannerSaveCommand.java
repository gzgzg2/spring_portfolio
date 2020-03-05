package com.lec.mgb.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.PlannerDAO;

public class PlannerSaveCommand implements Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int member_uid = (Integer)map.get("member_uid");
		int planner_title = (Integer)map.get("planner_title");
		PlannerDAO dao = C.sqlSesssion.getMapper(PlannerDAO.class);
		int cnt = dao.insertPlanner(member_uid,planner_title);
		model.addAttribute("cnt", cnt);
	}

}
