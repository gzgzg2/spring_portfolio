package com.lec.mgb.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.PathVariable;
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
	
	@RequestMapping("/AddPlan/{local_uid}")
	public LocalDTO planList(@PathVariable("local_uid") int local_uid){
	LocalDTO arr = new LocalDTO();
	LocalAjaxDAO dao = C.sqlSesssion.getMapper(LocalAjaxDAO.class);
	arr = dao.selectPlan(local_uid);
	
	return arr;
	}
	
	@RequestMapping("/Search/{SearchText}")
	public AjaxLocalList SearchList(@PathVariable("SearchText") String SearchText){
	
		AjaxLocalList result = new AjaxLocalList();
		ArrayList<LocalDTO> list = null;
		
		LocalAjaxDAO dao = C.sqlSesssion.getMapper(LocalAjaxDAO.class);
		SearchText = "%"+SearchText+"%";
		list = dao.search(SearchText);
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
