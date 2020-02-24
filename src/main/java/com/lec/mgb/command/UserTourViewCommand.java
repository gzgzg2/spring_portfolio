package com.lec.mgb.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserTourDAO;
import com.lec.mgb.mybatis.beans.UserTourDTO;

public class UserTourViewCommand implements Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int tour_uid = (Integer)map.get("tour_uid");
		
		UserTourDAO dao = C.sqlSesssion.getMapper(UserTourDAO.class);
		UserTourDTO [] dto = dao.selectTourByUid(tour_uid);
		UserTourDTO [] review = dao.selectReviewStarByUid(tour_uid);
		
		model.addAttribute("dto", dto);
		model.addAttribute("review", review);
		model.addAttribute("tour_uid", tour_uid);
	}

}