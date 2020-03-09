package com.lec.mgb.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.IAdminPlannerDAO;


public class AdminUpdateNGoodCommand implements Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int planner_uid = (int)map.get("planner_uid");
		
		IAdminPlannerDAO dao = C.sqlSesssion.getMapper(IAdminPlannerDAO.class);
		//model.addAttribute("result", dao.update(dto));
		model.addAttribute("result", dao.updateNGood(planner_uid));
	}

}
