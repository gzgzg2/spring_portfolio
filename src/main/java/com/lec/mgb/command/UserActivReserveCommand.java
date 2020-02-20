package com.lec.mgb.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserActivDAO;
import com.lec.mgb.mybatis.beans.UserActivDTO;

public class UserActivReserveCommand implements Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int member_uid = (Integer)map.get("member_uid");
		int ticket_uid = (Integer)map.get("ticket_uid");
		int book_member_cnt = (Integer)map.get("book_member_cnt");
		
		UserActivDAO dao = C.sqlSesssion.getMapper(UserActivDAO.class);
		UserActivDTO [] member = dao.selectMemberByUid(member_uid);
		UserActivDTO [] ticket = dao.selectTicketNameByUid(ticket_uid);
		
		model.addAttribute("member", member);
		model.addAttribute("ticket", ticket);
		model.addAttribute("book_member_cnt", book_member_cnt);
	}

}