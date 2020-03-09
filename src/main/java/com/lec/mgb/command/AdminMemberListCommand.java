package com.lec.mgb.command;


import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.IAdminMemberDAO;

public class AdminMemberListCommand implements Command {

	@Override
	public void execute(Model model) {

		IAdminMemberDAO dao = C.sqlSesssion.getMapper(IAdminMemberDAO.class);
		model.addAttribute("list", dao.select());
	}

}
