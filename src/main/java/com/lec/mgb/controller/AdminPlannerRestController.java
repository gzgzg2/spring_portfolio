package com.lec.mgb.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.AdminPlannerDTO;
import com.lec.mgb.mybatis.beans.AjaxAdminPlannerList;
import com.lec.mgb.mybatis.beans.IAdminPlannerDAO;

@RestController
@RequestMapping("/AdminPlannerAJAX")
public class AdminPlannerRestController {
	
	@RequestMapping("/admin_PlannerManage/{writePages}/{page}")
	public AjaxAdminPlannerList list(
			@PathVariable("writePages") int writePages,
			@PathVariable("page") int page ) {
		AjaxAdminPlannerList result = new AjaxAdminPlannerList();
		ArrayList<AdminPlannerDTO> list = null;
		int cnt = 0;
		
		IAdminPlannerDAO dao = C.sqlSesssion.getMapper(IAdminPlannerDAO.class);
		list = dao.selectByRow((page - 1) * writePages, writePages);
		cnt = dao.countAll();
		
		System.out.println("전체 플래너 개수 : " + cnt);
		
		result.setList(list);
		result.setCnt(cnt);
		
		if(list != null && list.size() > 0) {
			result.setStatus("OK");
			result.setCount(list.size());
		} else {
			result.setStatus("FAIL");
		}
		
		return result;
	}
	
	@RequestMapping("/admin_GoodPlannerManage/good/{writePages}/{page}")
	public AjaxAdminPlannerList GoodPlannerlist(
			@PathVariable("writePages") int writePages,
			@PathVariable("page") int page ) {
		AjaxAdminPlannerList result = new AjaxAdminPlannerList();
		ArrayList<AdminPlannerDTO> list = null;
		int cnt = 0;
		
		IAdminPlannerDAO dao = C.sqlSesssion.getMapper(IAdminPlannerDAO.class);
		list = dao.select_good();
		cnt = dao.count_goodPlanner();
		
		System.out.println("우수 플래너 개수 : " + cnt);
		
		result.setList(list);
		result.setCnt(cnt);
		
		if(list != null && list.size() > 0) {
			result.setStatus("OK");
			result.setCount(list.size());
		} else {
			result.setStatus("FAIL");
		}
		
		return result;
	}
	
	@RequestMapping("/admin_GoodPlannerManage/{writePages}/{page}")
	public AjaxAdminPlannerList Goodlist(
			@PathVariable("writePages") int writePages,
			@PathVariable("page") int page ) {
		AjaxAdminPlannerList result = new AjaxAdminPlannerList();
		ArrayList<AdminPlannerDTO> list = null;
		int cnt = 0;
		
		IAdminPlannerDAO dao = C.sqlSesssion.getMapper(IAdminPlannerDAO.class);
		list = dao.selectViewByRow((page - 1) * writePages, writePages);
		cnt = dao.countAll();
		
		System.out.println("전체 플래너 개수 : " + cnt);
		
		result.setList(list);
		result.setCnt(cnt);
		
		if(list != null && list.size() > 0) {
			result.setStatus("OK");
			result.setCount(list.size());
		} else {
			result.setStatus("FAIL");
		}
		
		return result;
	}

	@RequestMapping("/admin_PlannerManage/{search_option}/{keyword}/{writePages}/{page}")
	public AjaxAdminPlannerList searchlist(
			@PathVariable("search_option") String search_option,
			@PathVariable("keyword") String keyword,
			@PathVariable("writePages") int writePages,
			@PathVariable("page") int page ) {
		
		System.out.println("Controller search_option:"+ search_option);
		System.out.println("Controller keyword:"+keyword);
		
		AjaxAdminPlannerList result = new AjaxAdminPlannerList();
		ArrayList<AdminPlannerDTO> list = null;
		
		// 페이징 처리 결과 --> list
		IAdminPlannerDAO dao = C.sqlSesssion.getMapper(IAdminPlannerDAO.class);
		System.out.println("keyword = " + keyword);
		if(search_option.equals("planner_title")) {
			list = dao.search_title(search_option, keyword, (page - 1) * writePages, writePages);
		}

		
		result.setList(list);
		if(list != null && list.size() > 0) {
			result.setStatus("OK");
			result.setCount(list.size());
		} else {
			result.setStatus("FAIL");
		}
		
		System.out.println(result.getStatus());
		
		return result;
	}
	
	@RequestMapping("/admin_GoodPlannerManage/{search_option}/{keyword}/{writePages}/{page}")
	public AjaxAdminPlannerList Goodsearchlist(
			@PathVariable("search_option") String search_option,
			@PathVariable("keyword") String keyword,
			@PathVariable("writePages") int writePages,
			@PathVariable("page") int page ) {
		AjaxAdminPlannerList result = new AjaxAdminPlannerList();
		ArrayList<AdminPlannerDTO> list = null;
		
		IAdminPlannerDAO dao = C.sqlSesssion.getMapper(IAdminPlannerDAO.class);
		list = dao.search_Goodtitle(search_option, keyword, (page - 1) * writePages, writePages);
		
		
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
