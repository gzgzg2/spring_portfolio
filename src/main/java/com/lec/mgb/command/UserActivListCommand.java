package com.lec.mgb.command;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserActivDAO;
import com.lec.mgb.mybatis.beans.UserActivDTO;
import com.lec.mgb.mybatis.beans.UserInnDAO;
import com.lec.mgb.mybatis.beans.UserInnDTO;

public class UserActivListCommand implements Command {

	@Override
	public void execute(Model model) {
		UserActivDAO dao = C.sqlSesssion.getMapper(UserActivDAO.class);
		UserActivDTO [] dto = null;
		UserActivDTO [] sale = null;
		UserActivDTO [] popular = null;
		String activ_loc = (String) model.getAttribute("searchOption");
		String activ_name = (String) model.getAttribute("searchKeyword");
		
		if (activ_loc != null) {
			activ_loc = "%" + activ_loc + "%";
			if (activ_loc.equals("%all%")) activ_loc = "%%";
			activ_loc = "%" + activ_loc + "%";
			activ_name = "%" + activ_name + "%";
			System.out.println(activ_loc);
			System.out.println(activ_name);
			dto = dao.selectActivByKeyword(activ_loc, activ_name);
			model.addAttribute("activ_loc", activ_loc);
			model.addAttribute("activ_name", activ_name.replaceAll("%", ""));
		} else {
			dto = dao.selectActiv();
			sale = dao.selectActivSale();
			popular = dao.selectActivPopular();
		}
		
		model.addAttribute("dto", dto);
		model.addAttribute("sale", sale);
		model.addAttribute("popular", popular);
	}

}