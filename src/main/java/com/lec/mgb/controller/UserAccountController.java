package com.lec.mgb.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lec.mgb.c.C;
import com.lec.mgb.command.Command;
import com.lec.mgb.command.UserDeleteCommand;
import com.lec.mgb.command.UserJoinOkCommand;
import com.lec.mgb.mybatis.beans.MyPageInfoDTO;
import com.lec.mgb.mybatis.beans.UserJoinLoginDAO;
import com.lec.mgb.validation.JoinValidator;

@Controller
@RequestMapping("/user/account")
public class UserAccountController {

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
	
	@RequestMapping(value = "/accountBye/{member_uid}")
	public String accountDel(@PathVariable("member_uid") String member_uid, Model model) {
		model.addAttribute("member_uid", member_uid);
		System.out.println(model.getAttribute("member_uid") + "음");
		command = new  UserDeleteCommand();
		command.execute(model);
		return "user/account/accountBye";
	} 
	
	@RequestMapping(value = "/idCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(@RequestParam String member_id) {
		System.out.println("들어왔다");
		UserJoinLoginDAO dao = C.sqlSesssion.getMapper(UserJoinLoginDAO.class);
		int resultcnt = dao.idCheck(member_id);
		return resultcnt;
	}
	
	@RequestMapping("/logoutOk")
	public String logoutPOST(HttpSession session) {
		System.out.println("들어왔더 POST");

		System.out.println(session.getAttribute("loginUid"));
		System.out.println(session.getAttribute("userPic"));
		
		
		session.removeAttribute("loginUid");
		session.removeAttribute("userPic");
		
		System.out.println(session.getAttribute("loginUid"));
		System.out.println(session.getAttribute("userPic"));

		return "user/account/logoutOk";
	}
	
}
