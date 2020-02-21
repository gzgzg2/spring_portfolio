package com.lec.mgb.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserTourDAO;
import com.lec.mgb.mybatis.beans.UserTourDTO;

public class UserTourReserveCommand implements Command {

	@Override
	public void execute(Model model) {
		UserTourDAO dao = C.sqlSesssion.getMapper(UserTourDAO.class);
		Map<String, Object> map = model.asMap();
		int member_uid = (Integer)map.get("member_uid");
		int tour_uid = (Integer)map.get("tour_uid");
		int book_member_cnt = (Integer)map.get("book_member_cnt");
		
		UserTourDTO member = dao.selectMemberByUid(member_uid);
		UserTourDTO [] tour = dao.selectTourByUid(tour_uid);
		
		model.addAttribute("member", member);
		model.addAttribute("tour", tour);
		model.addAttribute("book_member_cnt", book_member_cnt);
	}

}