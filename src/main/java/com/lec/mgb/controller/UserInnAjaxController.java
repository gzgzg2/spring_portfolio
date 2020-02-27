package com.lec.mgb.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserActivDTO;
import com.lec.mgb.mybatis.beans.UserInnDAO;
import com.lec.mgb.mybatis.beans.UserInnDTO;

@RestController
@RequestMapping("/user/inn/ajax")
public class UserInnAjaxController {

	@RequestMapping("/all/{inn_name}")
	public ArrayList<UserInnDTO> list(@PathVariable("inn_name")String inn_name) {
		UserInnDAO dao =  C.sqlSesssion.getMapper(UserInnDAO.class);
		inn_name = "%" + inn_name + "%";
		return dao.selectInnAjax("%%", inn_name);
	}
	
	@RequestMapping("/jeju/{inn_name}")
	public ArrayList<UserInnDTO> listByJeju(@PathVariable("inn_name")String inn_name) {
		UserInnDAO dao =  C.sqlSesssion.getMapper(UserInnDAO.class);
		inn_name = "%" + inn_name + "%";
		return dao.selectInnAjax("%제주시%", inn_name);
	}
	
	@RequestMapping("/seogwipo/{inn_name}")
	public ArrayList<UserInnDTO> listBySeogwipo(@PathVariable("inn_name")String inn_name) {
		UserInnDAO dao =  C.sqlSesssion.getMapper(UserInnDAO.class);
		inn_name = "%" + inn_name + "%";
		return dao.selectInnAjax("%서귀포%", inn_name);
	}
	
}