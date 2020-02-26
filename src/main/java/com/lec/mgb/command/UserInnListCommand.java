package com.lec.mgb.command;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserInnDAO;
import com.lec.mgb.mybatis.beans.UserInnDTO;

public class UserInnListCommand implements Command {

	@Override
	public void execute(Model model) {
		UserInnDAO dao = C.sqlSesssion.getMapper(UserInnDAO.class);
		UserInnDTO [] dto = null;
		UserInnDTO [] sale = null;
		UserInnDTO [] popular = null;
		String inn_loc = (String) model.getAttribute("searchOption");
		String inn_name = (String) model.getAttribute("searchKeyword");
		
		if (inn_loc != null) {
			inn_loc = "%" + inn_loc + "%";
			if (inn_loc.equals("%all%")) inn_loc = "%%";
			inn_loc = "%" + inn_loc + "%";
			inn_name = "%" + inn_name + "%";
			System.out.println(inn_loc);
			System.out.println(inn_name);
			dto = dao.selectInnByKeyword(inn_loc, inn_name);
			model.addAttribute("inn_loc", inn_loc);
			model.addAttribute("inn_name", inn_name.replaceAll("%", ""));
		} else {
			dto = dao.selectInn();
			sale = dao.selectInnSale();
			popular = dao.selectInnPopular();
		}
		
		model.addAttribute("dto", dto);
		model.addAttribute("sale", sale);
		model.addAttribute("popular", popular);
	}

}