package com.lec.mgb.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserInnDAO;
import com.lec.mgb.mybatis.beans.UserInnDTO;

public class UserInnReserveOkCommand implements Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		UserInnDAO dao = C.sqlSesssion.getMapper(UserInnDAO.class);
		int member_uid = (int)map.get("member_uid");
		UserInnDTO dto = (UserInnDTO)map.get("dto");
		
		int cnt = dao.insertBook(member_uid, dto);
		if (cnt == 1) {
			int book_uid = dao.selectBookUidByUid(member_uid).getBook_uid();
			model.addAttribute("book_uid", book_uid);
		}
		
		model.addAttribute("cnt", cnt);
	}

}