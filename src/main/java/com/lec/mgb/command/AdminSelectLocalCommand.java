package com.lec.mgb.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.AdminLocalDTO;
import com.lec.mgb.mybatis.beans.IAdminLocalDAO;

public class AdminSelectLocalCommand implements Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int uid = (Integer)map.get("uid");
		
		IAdminLocalDAO dao = C.sqlSesssion.getMapper(IAdminLocalDAO.class);
		AdminLocalDTO dto = dao.selectByUid(uid);
		model.addAttribute("dto", dto);
	}

}
