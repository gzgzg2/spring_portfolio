package com.lec.mgb.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lec.mgb.c.C;
import com.lec.mgb.command.Command;
import com.lec.mgb.command.MyPageInfoCommand;

@Controller
@RequestMapping("/user/mypage")
public class UserMypageController {
	private SqlSession sqlSession;
	private Command command;
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		C.sqlSesssion = sqlSession;
	}
	
	
	@RequestMapping(value = "/mypageInfo/{member_uid}") 
	public String mypageSelect(@PathVariable("member_uid") String member_uid, Model model) {
		model.addAttribute("member_uid", member_uid);
		command = new  MyPageInfoCommand();
		command.execute(model);
		System.out.println(model.getAttribute("member_uid"));
		return "user/mypage/mypageInfo";
	}
	
	@RequestMapping(value = "/passwordChange/{member_uid}") 
	public String pwChange(@PathVariable("member_uid") String member_uid, Model model) {
		model.addAttribute("member_uid", member_uid);
		System.out.println(model.getAttribute("member_uid"));
		return "user/mypage/passwordChange";
	}
	

	
}
