package com.lec.mgb.controller;


import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.lec.mgb.c.C;
import com.lec.mgb.command.Command;
import com.lec.mgb.command.MyPageDeleteOkCommand;
import com.lec.mgb.command.MyPageInfoCommand;
import com.lec.mgb.command.MyPageInfoUpdateCommand;
import com.lec.mgb.command.MyPagePWChangeCommand;
import com.lec.mgb.command.MyPageUpdateOkCommand;
import com.lec.mgb.command.UserMyPageUpdateCommand;
import com.lec.mgb.mybatis.beans.MyPageInfoDTO;
import com.lec.mgb.mybatis.beans.MyPageReviewDTO;

@Controller
@RequestMapping("/user/mypage")
public class UserMypageController {
	private SqlSession sqlSession;
	private Command command;
	private ServletContext context;
	
	@Autowired
	public void setContext(ServletContext context) {
		this.context = context;
		C.context = context;
	}


	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		C.sqlSesssion = sqlSession;
	}
	
	
	@RequestMapping(value = "/mypageInfo") 
	public String mypageSelect(HttpSession session, Model model) {
		int member_uid = (int)session.getAttribute("loginUid");
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
	public String mypageUpdate(HttpSession session, 
			@RequestParam("upload") MultipartFile file,
			@ModelAttribute("dto") MyPageInfoDTO dto, 
			Model model) {
		System.out.println("왔다");
		int member_uid = (int)session.getAttribute("loginUid");
		model.addAttribute("file", file);
		model.addAttribute("member_uid", member_uid);
		command = new MyPageInfoUpdateCommand();
		command.execute(model);
		return "user/mypage/mypageUpdateOk";
	}
	
	@RequestMapping("/mypageReview")
	public String mypageReview() {
		return "user/mypage/mypageReview";
	}
	
	@RequestMapping("/mypageReviewUpdate/{review_uid}")
	public String mypageReviewUpdate(@PathVariable("review_uid") String review_uid ,Model model) {
		model.addAttribute("review_uid", review_uid);
		command = new UserMyPageUpdateCommand();
		command.execute(model);
		System.out.println(model.getAttribute("review_uid"));
		return "user/mypage/mypageReviewUpdate";
	}
	
	@RequestMapping(value = "/mypageReviewUpadateOk", method = RequestMethod.POST)
	public String mypageReviewUpdateOk(@ModelAttribute("dto") MyPageReviewDTO dto, Model model) {
		command = new MyPageUpdateOkCommand();
		command.execute(model);
		return "user/mypage/mypageReviewUpdateOk";
	}
	
	@RequestMapping("mypageReviewDeleteOk/{review_uid}")
	public String mypageReviewDeleteOk(@PathVariable("review_uid") String review_uid ,Model model) {
		model.addAttribute("review_uid", review_uid);
		command = new MyPageDeleteOkCommand();
		command.execute(model);
		return "user/mypage/mypageReviewDeleteOk";
	}
	
	@RequestMapping("/mypagePlanner")
	public String mypagePlanner(Model model, HttpSession session) {
		
		return "user/mypage/mypagePlanner";
	}
	
}
