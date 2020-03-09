package com.lec.mgb.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.AdminMemberDTO;
import com.lec.mgb.mybatis.beans.AjaxAdminMemberList;
import com.lec.mgb.mybatis.beans.IAdminMemberDAO;

@RestController
@RequestMapping("/AdminMemberAJAX")
public class AdminMemberRestController {
	
	@RequestMapping("/admin_MemberManage/{writePages}/{page}")
	public AjaxAdminMemberList list(
			@PathVariable("writePages") int writePages,
			@PathVariable("page") int page ) {
		AjaxAdminMemberList result = new AjaxAdminMemberList();
		ArrayList<AdminMemberDTO> list = null;
		int cnt = 0;
		
		// 페이징 처리 결과 --> list
		IAdminMemberDAO dao = C.sqlSesssion.getMapper(IAdminMemberDAO.class);
		list = dao.selectByRow((page - 1) * writePages, writePages);
		cnt = dao.countAll();
		System.out.println("전체 회원수 cnt : "+cnt);
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
	
	@RequestMapping("/admin_MemberManage/{search_option}/{keyword}/{writePages}/{page}")
	public AjaxAdminMemberList searchlist(
			@PathVariable("search_option") String search_option,
			@PathVariable("keyword") String keyword,
			@PathVariable("writePages") int writePages,
			@PathVariable("page") int page ) {
		
		System.out.println("Controller search_option:"+ search_option);
		System.out.println("Controller keyword:"+keyword);
		
		AjaxAdminMemberList result = new AjaxAdminMemberList();
		ArrayList<AdminMemberDTO> list = null;
		int cnt = 0;
		
		// 페이징 처리 결과 --> list
		IAdminMemberDAO dao = C.sqlSesssion.getMapper(IAdminMemberDAO.class);
		System.out.println("keyword = " + keyword);
		if(search_option.equals("member_id")) {
			list = dao.searchid(search_option, keyword, (page - 1) * writePages, writePages);
			System.out.println("cnt = " + cnt);
		}
		if(search_option.equals("member_name")) {
			list = dao.searchname(search_option, keyword, (page - 1) * writePages, writePages);
			System.out.println("cnt : " + cnt);
		}
		
		result.setList(list);
		result.setCnt(cnt);
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
