package com.lec.mgb.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.AdminLocalDTO;
import com.lec.mgb.mybatis.beans.AjaxAdminLocalList;
import com.lec.mgb.mybatis.beans.IAdminLocalDAO;

@RestController
@RequestMapping("/AdminLocalAJAX")
public class AdminLocalRestController {
	
	@RequestMapping("/admin_LocalManage/{writePages}/{page}")
	public AjaxAdminLocalList list(
			@PathVariable("writePages") int writePages,
			@PathVariable("page") int page ) {
		AjaxAdminLocalList result = new AjaxAdminLocalList();
		ArrayList<AdminLocalDTO> list = null;
		
		int cnt = 0;
		
		IAdminLocalDAO dao = C.sqlSesssion.getMapper(IAdminLocalDAO.class);
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
	
	@RequestMapping("/admin_LocalManage/{search_option}/{keyword}/{writePages}/{page}")
	public AjaxAdminLocalList searchlist(
			@PathVariable("search_option") String search_option,
			@PathVariable("keyword") String keyword,
			@PathVariable("writePages") int writePages,
			@PathVariable("page") int page ) {
		
		System.out.println("Controller search_option:"+ search_option);
		System.out.println("Controller keyword:"+keyword);
		
		AjaxAdminLocalList result = new AjaxAdminLocalList();
		ArrayList<AdminLocalDTO> list = null;
		int cnt = 0;
		
		// 페이징 처리 결과 --> list
		IAdminLocalDAO dao = C.sqlSesssion.getMapper(IAdminLocalDAO.class);
		System.out.println("keyword = " + keyword);
		if(search_option.equals("local_name")) {
			list = dao.searchname(search_option, keyword, (page - 1) * writePages, writePages);
			System.out.println("cnt = " + cnt);
		}
		if(search_option.equals("local_loc")) {
			list = dao.searchloc(search_option, keyword, (page - 1) * writePages, writePages);
			System.out.println("cnt : " + cnt);
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
	
}
