package com.lec.mgb.command;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserActivDAO;
import com.lec.mgb.mybatis.beans.UserActivDTO;
import com.lec.mgb.mybatis.beans.UserInnDAO;
import com.lec.mgb.mybatis.beans.UserInnDTO;

public class MainCommand implements Command {

	@Override
	public void execute(Model model) {
		UserActivDTO [] activ = null;
		UserActivDAO activDao = C.sqlSesssion.getMapper(UserActivDAO.class);
		UserInnDTO [] inn = null;
		UserInnDAO innDao = C.sqlSesssion.getMapper(UserInnDAO.class);
		
		activ = activDao.selectActivSale();
		inn = innDao.selectInnSale();
		
		model.addAttribute("activ", activ);
		model.addAttribute("inn", inn);
	}

}