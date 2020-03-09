package com.lec.mgb.command;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.IAdminPlannerDAO;

public class AdminPlannerListCommand implements Command {

	@Override
	public void execute(Model model) {
	
		IAdminPlannerDAO dao = C.sqlSesssion.getMapper(IAdminPlannerDAO.class);
		model.addAttribute("list", dao.select());
		
	}

}
