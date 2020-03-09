package com.lec.mgb.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.AdminBookDTO;
import com.lec.mgb.mybatis.beans.AjaxAdminBookList;
import com.lec.mgb.mybatis.beans.IAdminBookDAO;

@RestController
@RequestMapping("/AdminBookAJAX")
public class AdminBookRestController {
	
	@RequestMapping("/admin_InnManage/{writePages}/{page}")
	public AjaxAdminBookList Innlist(
			@PathVariable("writePages") int writePages,
			@PathVariable("page") int page ) {
		AjaxAdminBookList result = new AjaxAdminBookList();
		ArrayList<AdminBookDTO> list = null;
		
		// 페이징 처리 결과 --> list
		IAdminBookDAO dao = C.sqlSesssion.getMapper(IAdminBookDAO.class);
		list = dao.selectByRow_room((page - 1) * writePages, writePages);
		result.setList(list);
		if(list != null && list.size() > 0) {
			result.setStatus("OK");
			result.setCount(list.size());
		} else {
			result.setStatus("FAIL");
		}
		return result;
	}
	
	@RequestMapping("/admin_TourManage/{writePages}/{page}")
	public AjaxAdminBookList Tourlist(
			@PathVariable("writePages") int writePages,
			@PathVariable("page") int page ) {
		AjaxAdminBookList result = new AjaxAdminBookList();
		ArrayList<AdminBookDTO> list = null;
		
		// 페이징 처리 결과 --> list
		IAdminBookDAO dao = C.sqlSesssion.getMapper(IAdminBookDAO.class);
		list = dao.selectByRow_tour((page - 1) * writePages, writePages);
		result.setList(list);
		if(list != null && list.size() > 0) {
			result.setStatus("OK");
			result.setCount(list.size());
		} else {
			result.setStatus("FAIL");
		}
		return result;
	}
	
	@RequestMapping("/admin_ActivManage/{writePages}/{page}")
	public AjaxAdminBookList Activlist(
			@PathVariable("writePages") int writePages,
			@PathVariable("page") int page ) {
		AjaxAdminBookList result = new AjaxAdminBookList();
		ArrayList<AdminBookDTO> list = null;
		
		// 페이징 처리 결과 --> list
		IAdminBookDAO dao = C.sqlSesssion.getMapper(IAdminBookDAO.class);
		list = dao.selectByRow_activ((page - 1) * writePages, writePages);
		result.setList(list);
		if(list != null && list.size() > 0) {
			result.setStatus("OK");
			result.setCount(list.size());
		} else {
			result.setStatus("FAIL");
		}
		return result;
	}
	
	@RequestMapping("/admin_InnManage/{search_option}/{keyword}/{writePages}/{page}")
	public AjaxAdminBookList searchInnlist(
			@PathVariable("search_option") String search_option,
			@PathVariable("keyword") String keyword,
			@PathVariable("writePages") int writePages,
			@PathVariable("page") int page ) {
		
		System.out.println("Controller search_option:"+ search_option);
		System.out.println("Controller keyword:"+keyword);
		
		AjaxAdminBookList result = new AjaxAdminBookList();
		ArrayList<AdminBookDTO> list = null;
		
		// 페이징 처리 결과 --> list
		IAdminBookDAO dao = C.sqlSesssion.getMapper(IAdminBookDAO.class);
		System.out.println("keyword = " + keyword);
		if(search_option.equals("book_member_tel")) {
			list = dao.search_selectByRow_room(search_option, keyword, (page - 1) * writePages, writePages);
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
	
	@RequestMapping("/admin_TourManage/{search_option}/{keyword}/{writePages}/{page}")
	public AjaxAdminBookList searchTourlist(
			@PathVariable("search_option") String search_option,
			@PathVariable("keyword") String keyword,
			@PathVariable("writePages") int writePages,
			@PathVariable("page") int page ) {
		
		System.out.println("Controller search_option:"+ search_option);
		System.out.println("Controller keyword:"+keyword);
		
		AjaxAdminBookList result = new AjaxAdminBookList();
		ArrayList<AdminBookDTO> list = null;
		
		// 페이징 처리 결과 --> list
		IAdminBookDAO dao = C.sqlSesssion.getMapper(IAdminBookDAO.class);
		System.out.println("keyword = " + keyword);
		if(search_option.equals("book_member_tel")) {
			list = dao.search_selectByRow_tour(search_option, keyword, (page - 1) * writePages, writePages);
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
	
	@RequestMapping("/admin_ActivManage/{search_option}/{keyword}/{writePages}/{page}")
	public AjaxAdminBookList searchActivlist(
			@PathVariable("search_option") String search_option,
			@PathVariable("keyword") String keyword,
			@PathVariable("writePages") int writePages,
			@PathVariable("page") int page ) {
		
		System.out.println("Controller search_option:"+ search_option);
		System.out.println("Controller keyword:"+keyword);
		
		AjaxAdminBookList result = new AjaxAdminBookList();
		ArrayList<AdminBookDTO> list = null;
		
		// 페이징 처리 결과 --> list
		IAdminBookDAO dao = C.sqlSesssion.getMapper(IAdminBookDAO.class);
		System.out.println("keyword = " + keyword);
		if(search_option.equals("book_member_tel")) {
			list = dao.search_selectByRow_activ(search_option, keyword, (page - 1) * writePages, writePages);
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
