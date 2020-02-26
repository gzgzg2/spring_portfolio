package com.lec.mgb.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lec.mgb.c.C;
import com.lec.mgb.command.Command;

@Controller
@RequestMapping("/user/mypage")
public class UserMypage2Controller {
	private SqlSession sqlSession;
	private Command command;
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		C.sqlSesssion = sqlSession;
	}
	
	
	@RequestMapping(value = "/mypageReserve") 
	public String mypageReserve(Model model) {
		return "user/mypage/mypageReserve";
	}
	
	@RequestMapping(value = "/mypageReviewWrite") 
	public String mypageReviewWrite(Model model) {
		return "user/mypage/mypageReviewWrite";
	}
	
}
