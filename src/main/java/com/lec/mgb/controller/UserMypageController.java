package com.lec.mgb.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lec.mgb.c.C;
import com.lec.mgb.command.Command;
import com.lec.mgb.command.MyPageInfoCommand;
import com.lec.mgb.command.MyPageInfoUpdateCommand;
import com.lec.mgb.command.MyPagePWChangeCommand;
import com.lec.mgb.mybatis.beans.MyPageInfoDTO;

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
	
	@RequestMapping(value = "/passwordChange", method = RequestMethod.POST) 
	public String pwChange(HttpSession session,@ModelAttribute("dto") MyPageInfoDTO dto, Model model) {
		int member_uid = (int)session.getAttribute("loginUid");
		model.addAttribute("member_uid", member_uid);
		command = new MyPagePWChangeCommand();
		command.execute(model);
		return "user/mypage/passwordChange";
	}
	
	
	@RequestMapping(value = "/mypageUpdateOk", method = RequestMethod.POST)
	public String mypageUpdate(HttpSession session, @ModelAttribute("dto") MyPageInfoDTO dto,Model model) {
		int member_uid = (int)session.getAttribute("loginUid");
		model.addAttribute("member_uid", member_uid);
		command = new MyPageInfoUpdateCommand();
		command.execute(model);
		return "user/mypage/mypageUpdateOk";
	}

	
}
