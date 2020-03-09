package com.lec.mgb.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.IAdminMemberDAO;

public class AdminMemberDeleteCommand implements Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int uid = (Integer) map.get("uid");
		
		IAdminMemberDAO dao = C.sqlSesssion.getMapper(IAdminMemberDAO.class);
		model.addAttribute("result", dao.deleteByUid(uid));
	}

}
