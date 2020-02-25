 package com.lec.mgb.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lec.mgb.command.Command;
import com.lec.mgb.command.UserInnCheckCommand;
import com.lec.mgb.command.UserInnListCommand;
import com.lec.mgb.command.UserInnReserveCommand;
import com.lec.mgb.command.UserInnReserveOkCommand;
import com.lec.mgb.command.UserInnSendSmsCommand;
import com.lec.mgb.command.UserInnViewCommand;
import com.lec.mgb.mybatis.beans.UserInnDTO;

@Controller
@RequestMapping("/user/inn")
public class UserInnController {
	private SqlSession sqlSession;
	private Command command;

	@RequestMapping("/list")
	public String list(Model model) {
		new UserInnListCommand().execute(model);
		return "user/inn/list";
	}
	@RequestMapping("/list/search")
	public String listSearch(String searchOption, String searchKeyword, Model model) {
		model.addAttribute("searchOption", searchOption);
		model.addAttribute("searchKeyword", searchKeyword);
		new UserInnListCommand().execute(model);
		return "user/inn/list";
	}
	@GetMapping("/view/{inn_uid}")
	public String view(@PathVariable("inn_uid")int inn_uid, Model model, HttpSession session) {
		model.addAttribute("inn_uid", inn_uid);
		new UserInnViewCommand().execute(model);
		return "user/inn/view";
	}
	@PostMapping("/reserve")
	public String reserve(int room_uid, String book_date, Model model, HttpSession session) {
		model.addAttribute("room_uid", room_uid);
		model.addAttribute("book_date", book_date);
		model.addAttribute("member_uid", session.getAttribute("loginUid"));
		new UserInnReserveCommand().execute(model);
		return "user/inn/reserve";
	}
	@PostMapping("/sendSMS")
	public String sendSMS(String tel, Model model) {
		model.addAttribute("tel", tel);
		new UserInnSendSmsCommand().execute(model);
		return "!";
	}
	@PostMapping("/reserveOk")
	public String reserveOk(UserInnDTO dto, Model model, HttpSession session) {
		model.addAttribute("dto", dto);
		model.addAttribute("member_uid", session.getAttribute("loginUid"));
		new UserInnReserveOkCommand().execute(model);
		return "user/inn/reserveOk";
	}
	@RequestMapping("/check/{book_uid}")
	public String check(@PathVariable("book_uid")int book_uid, Model model, HttpSession session) {
		model.addAttribute("member_uid", session.getAttribute("loginUid"));
		model.addAttribute("book_uid", book_uid);
		new UserInnCheckCommand().execute(model);
		return "user/inn/check";
	}
	
}