package com.lec.mgb.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lec.mbg.command.Command;
import com.lec.mbg.command.MyPageInfoCommand;

@Controller
@RequestMapping("/user/mypage")
public class UserMypageController {
	private SqlSession sqlSession;
	private Command command;
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	@PostMapping(value = "/info") 
	public String mypageSelect(Model model) {
		command = new MyPageInfoCommand();
		command.execute(model);
		return "user/mypage/info";
	}

	
}
