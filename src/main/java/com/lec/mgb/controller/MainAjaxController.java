package com.lec.mgb.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.AjaxLocalList;
import com.lec.mgb.mybatis.beans.AjaxPlannerList;
import com.lec.mgb.mybatis.beans.MainAjaxDAO;
import com.lec.mgb.mybatis.beans.PlannerDTO;


@RestController
@RequestMapping("/AJAXMain")
public class MainAjaxController {

	@RequestMapping("/list/{planner_uid}")
	public AjaxPlannerList list(@PathVariable("planner_uid") int planner_uid){
		
		AjaxPlannerList result = new AjaxPlannerList();
		ArrayList<PlannerDTO> list = null;
		
		MainAjaxDAO dao = C.sqlSesssion.getMapper(MainAjaxDAO.class);
		list = dao.select(planner_uid);
		result.setList(list);
		
		if(list != null && list.size() > 0) {
			result.setStatus("OK");
			result.setCount(list.size());
		} else {
			result.setStatus("FAIL");
		}
		
		return result;
	}
	
	
	@RequestMapping("/listCnt")
	public AjaxPlannerList listCnt(){
		
		AjaxPlannerList result = new AjaxPlannerList();
		ArrayList<PlannerDTO> list = null;
		
		MainAjaxDAO dao = C.sqlSesssion.getMapper(MainAjaxDAO.class);
		list = dao.selectPlannerUid();
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
