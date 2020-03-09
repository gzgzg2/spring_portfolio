package com.lec.mgb.command;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.IAdminLocalDAO;

public class AdminLocalListCommand implements Command {

	@Override
	public void execute(Model model) {
		IAdminLocalDAO dao = C.sqlSesssion.getMapper(IAdminLocalDAO.class);
		model.addAttribute("list", dao.select());

	}

}
