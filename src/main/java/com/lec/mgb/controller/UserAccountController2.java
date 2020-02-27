package com.lec.mgb.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lec.mgb.c.C;
import com.lec.mgb.command.Command;
import com.lec.mgb.command.UserFindIDOkCommand;
import com.lec.mgb.command.UserFindPWOkCommand;
import com.lec.mgb.validation.JoinValidator;

@Controller
@RequestMapping("/user/account")
public class UserAccountController2 {

	// MyBatis
	private SqlSession sqlSession;
		
	private Command command;

	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		C.sqlSesssion = sqlSession;
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.setValidator(new JoinValidator());
	}
	
	@RequestMapping("/findID")
	public String findID(Model model) {
		return "/user/account/findID";
	}
	
	@RequestMapping("/findIDOk")
	public String findIDOk(String member_name, String member_email, Model model) {
		model.addAttribute("member_name", member_name);
		model.addAttribute("member_email", member_email);
		
		new UserFindIDOkCommand().execute(model);
		return "/user/account/findIDOk";
	}
	
	@RequestMapping("/findPW")
	public String findPW(Model model) {
		return "/user/account/findPW";
	}
	
	@RequestMapping("/findPWOk")
	public String findPWOk(String member_id, String member_tel, Model model) {
		model.addAttribute("member_id", member_id);
		
		new UserFindPWOkCommand().execute(model);
		return "/user/account/findPWOk";
	}
	
}
