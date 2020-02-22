package com.lec.mgb.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.AdminMemberDAO;
import com.lec.mgb.mybatis.beans.AjaxMemberList;
import com.lec.mgb.mybatis.beans.MyPageInfoDTO;


@RestController
@RequestMapping("/AdminMemberAJAX")
public class AdminRestController {
	
	@RequestMapping("/list.do/{writePages}/{page}")
	public AjaxMemberList list(
			@PathVariable("writePages") int writePages,
			@PathVariable("page") int page) {
		AjaxMemberList result = new AjaxMemberList();
		ArrayList<MyPageInfoDTO> list = null;
		
		// 페이징 처리 결과 --> list
		AdminMemberDAO dao = C.sqlSesssion.getMapper(AdminMemberDAO.class);
		list = dao.selectByRow((page - 1) * writePages, writePages);
		result.setList(list);
		
		// 읽어들인 글 내용이 있는 경우와 없는 경우 나누어 처리
		if(list != null && list.size() > 0) {
			result.setStatus("OK");
			result.setCount(list.size());
		} else {
			result.setStatus("FAIL");
		}
		
		return result;
	}
}
