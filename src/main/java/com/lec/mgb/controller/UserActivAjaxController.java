package com.lec.mgb.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserActivDAO;
import com.lec.mgb.mybatis.beans.UserActivDTO;

@RestController
@RequestMapping("/user/activ/ajax")
public class UserActivAjaxController {

	@RequestMapping("/all/{activ_name}")
	public ArrayList<UserActivDTO> list(@PathVariable("activ_name")String activ_name) {
		UserActivDAO dao =  C.sqlSesssion.getMapper(UserActivDAO.class);
		activ_name = "%" + activ_name + "%";
		return dao.selectActivAjax("%%", activ_name);
	}
	
	@RequestMapping("/jeju/{activ_name}")
	public ArrayList<UserActivDTO> listByJeju(@PathVariable("activ_name")String activ_name) {
		UserActivDAO dao =  C.sqlSesssion.getMapper(UserActivDAO.class);
		activ_name = "%" + activ_name + "%";
		return dao.selectActivAjax("%제주시%", activ_name);
	}
	
	@RequestMapping("/seogwipo/{activ_name}")
	public ArrayList<UserActivDTO> listBySeogwipo(@PathVariable("activ_name")String activ_name) {
		UserActivDAO dao =  C.sqlSesssion.getMapper(UserActivDAO.class);
		activ_name = "%" + activ_name + "%";
		return dao.selectActivAjax("%서귀포%", activ_name);
	}
	
}