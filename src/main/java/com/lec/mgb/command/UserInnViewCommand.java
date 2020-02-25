package com.lec.mgb.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserInnDAO;
import com.lec.mgb.mybatis.beans.UserInnDTO;

public class UserInnViewCommand implements Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int inn_uid = (Integer)map.get("inn_uid");
		
		UserInnDAO dao = C.sqlSesssion.getMapper(UserInnDAO.class);
		UserInnDTO dto [] = dao.selectInnByUid(inn_uid);
		UserInnDTO review [] = dao.selectReviewStarByUid(inn_uid);
		UserInnDTO popular [] = dao.selectInnPopular();
		
		model.addAttribute("dto", dto);
		model.addAttribute("review", review);
		model.addAttribute("popular", popular);
	}

}