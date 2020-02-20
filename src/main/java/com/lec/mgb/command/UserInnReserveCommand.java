package com.lec.mgb.command;

import java.sql.Date;
import java.util.Map;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserInnDAO;
import com.lec.mgb.mybatis.beans.UserInnDTO;

public class UserInnReserveCommand implements Command {

	@Override
	public void execute(Model model) {
		UserInnDAO dao = C.sqlSesssion.getMapper(UserInnDAO.class);
		Map<String, Object> map = model.asMap();
		int member_uid = (int)map.get("member_uid");
		int room_uid = (int)map.get("room_uid");
		String book_date = (String)map.get("book_date");
		
		UserInnDTO member = dao.selectMemberByUid(member_uid);		
		UserInnDTO dto = dao.selectRoomNameByUid(room_uid);
		
		System.out.println(book_date);
		
		model.addAttribute("member", member);
		model.addAttribute("dto", dto);
		model.addAttribute("book_date", book_date);
	}

}