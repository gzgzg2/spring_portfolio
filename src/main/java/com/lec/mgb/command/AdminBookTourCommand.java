package com.lec.mgb.command;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.IAdminBookDAO;

public class AdminBookTourCommand implements Command {

	@Override
	public void execute(Model model) {
		
		IAdminBookDAO dao = C.sqlSesssion.getMapper(IAdminBookDAO.class);
		model.addAttribute("list", dao.select_tour());
	}
	
}
