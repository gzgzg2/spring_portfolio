package com.lec.mgb.controller;

import javax.validation.Valid;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lec.mgb.c.C;
import com.lec.mgb.command.Command;
import com.lec.mgb.command.UserJoinOkCommand;
import com.lec.mgb.mybatis.beans.MyPageInfoDTO;
import com.lec.mgb.validation.JoinValidator;

@Controller
@RequestMapping("/user/account")
public class UserJoinController {

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
	
	@RequestMapping("/join")
	public String join(Model model) {
		return "user/account/join";
	}
	
	@RequestMapping(value = "/joinOk", method = RequestMethod.POST)
	public String joinOk(Model model,@ModelAttribute("dto") @Valid MyPageInfoDTO dto) {
		System.out.println("오는거니");
		command = new UserJoinOkCommand();
		command.execute(model);
		return "user/account/joinOk";
	}
}
