package com.lec.mgb.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserTourDAO;
import com.lec.mgb.mybatis.beans.UserTourDTO;

public class UserTourCheckCommand implements Command {

	@Override
	public void execute(Model model) {
		UserTourDAO dao = C.sqlSesssion.getMapper(UserTourDAO.class);
		Map<String, Object> map = model.asMap();
		int member_uid = (int) model.getAttribute("member_uid");
		UserTourDTO dto = (UserTourDTO) model.getAttribute("dto");
		
		int cnt = dao.insertBook(member_uid, dto);
		
		if (cnt == 1) {
			dto = dao.selectCheckNameByUid(member_uid);
			model.addAttribute("dto", dto);
		}
	}

}