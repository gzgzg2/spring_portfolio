package com.lec.mgb.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserActivDAO;
import com.lec.mgb.mybatis.beans.UserActivDTO;

public class UserActivViewCommand implements Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int activ_uid = (Integer)map.get("activ_uid");
		
		UserActivDAO dao = C.sqlSesssion.getMapper(UserActivDAO.class);
		UserActivDTO dto [] = dao.selectActivByUid(activ_uid);
		
		model.addAttribute("dto", dto);
	}

}