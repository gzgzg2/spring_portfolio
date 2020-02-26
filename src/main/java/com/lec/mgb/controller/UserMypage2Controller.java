package com.lec.mgb.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lec.mgb.c.C;
import com.lec.mgb.command.Command;
import com.lec.mgb.command.MyPageReserveDeleteOkCommand;
import com.lec.mgb.command.MyPageReviewWriteOkCommand;

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
	
	@RequestMapping("/mypageReserve") 
	public String mypageReserve(Model model) {
		return "user/mypage/mypageReserve";
	}
	
	@PostMapping("/mypageReviewWrite")
	public String mypageReviewWrite(int book_uid, Model model) {
		model.addAttribute("book_uid", book_uid);
		return "user/mypage/mypageReviewWrite";
	}
	
	@PostMapping("/mypageReviewWriteOk")
	public String mypageReviewWriteOk(int book_uid, int review_star, String review_title, String review_content, HttpSession session, Model model) {
		model.addAttribute("book_uid", book_uid);
		model.addAttribute("review_star", review_star);
		model.addAttribute("review_title", review_title);
		model.addAttribute("review_content", review_content);
		model.addAttribute("member_uid", session.getAttribute("loginUid"));
		new MyPageReviewWriteOkCommand().execute(model);
		return "user/mypage/mypageReviewWriteOk";
	}
	
	@PostMapping("/mypageReserveDeleteOk")
	public String mypageReviewDeleteOk(int book_uid, Model model) {
		model.addAttribute("book_uid", book_uid);
		new MyPageReserveDeleteOkCommand().execute(model);
		return "user/mypage/mypageReserveDeleteOk";
	}
	
}