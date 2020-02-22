package com.lec.mgb.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserActivDAO;
import com.lec.mgb.mybatis.beans.UserActivDTO;
import com.lec.mgb.mybatis.beans.UserInnDAO;
import com.lec.mgb.mybatis.beans.UserInnDTO;

public class UserInnCheckCommand implements Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int member_uid = (Integer)map.get("member_uid");
		int book_uid = (Integer)map.get("book_uid");
		
		UserInnDAO dao = C.sqlSesssion.getMapper(UserInnDAO.class);
		UserInnDTO dto = dao.selectCheckByUid(member_uid, book_uid);
		
		
		model.addAttribute("dto", dto);
	}

}