package com.lec.mgb.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.AjaxPlannerList;
import com.lec.mgb.mybatis.beans.MainAjaxDAO;
import com.lec.mgb.mybatis.beans.PlannerDTO;


@RestController
@RequestMapping("/AJAXMain")
public class MainAjaxController {

	@RequestMapping("/list")
	public AjaxPlannerList listCnt(){
		
		AjaxPlannerList result = new AjaxPlannerList();
		ArrayList<PlannerDTO> list = null;
		
		MainAjaxDAO dao = C.sqlSesssion.getMapper(MainAjaxDAO.class);
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
