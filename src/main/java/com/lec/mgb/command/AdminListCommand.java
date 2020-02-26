package com.lec.mgb.command;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.AdminMemberDAO;

public class AdminListCommand implements Command {

	@Override
	public void execute(Model model) {
		
		AdminMemberDAO dao = C.sqlSesssion.getMapper(AdminMemberDAO.class);
		model.addAttribute("list", dao.select());
	}

}
