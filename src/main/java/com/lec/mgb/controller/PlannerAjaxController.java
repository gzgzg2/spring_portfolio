package com.lec.mgb.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.AjaxLocalList;
import com.lec.mgb.mybatis.beans.LocalAjaxDAO;
import com.lec.mgb.mybatis.beans.LocalDTO;

@RestController
@RequestMapping("/AJAXLocal")
public class PlannerAjaxController {

	@RequestMapping("/list")
	public AjaxLocalList list(){
		
		AjaxLocalList result = new AjaxLocalList();
		ArrayList<LocalDTO> list = null;
		
		LocalAjaxDAO dao = C.sqlSesssion.getMapper(LocalAjaxDAO.class);
		list = dao.select();
		result.setList(list);
		
		if(list != null && list.size() > 0) {
			result.setStatus("OK");
			result.setCount(list.size());
		} else {
			result.setStatus("FAIL");
		}
		
		return result;
		
	}
	
}
