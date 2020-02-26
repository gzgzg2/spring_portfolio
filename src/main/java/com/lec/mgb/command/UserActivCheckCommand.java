package com.lec.mgb.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserActivDAO;
import com.lec.mgb.mybatis.beans.UserActivDTO;

public class UserActivCheckCommand implements Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int member_uid = (Integer)map.get("member_uid");
		int book_uid = (Integer)map.get("book_uid");
		
		UserActivDAO dao = C.sqlSesssion.getMapper(UserActivDAO.class);
		UserActivDTO dto = dao.selectCheckByUid(member_uid, book_uid);
		
		model.addAttribute("dto", dto);
	}

}