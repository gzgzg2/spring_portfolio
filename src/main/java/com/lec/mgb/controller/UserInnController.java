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
import com.lec.mgb.command.UserInnViewCommand;
import com.lec.mgb.mybatis.beans.UserInnDTO;

@Controller
@RequestMapping("/user/inn")
public class UserInnController {
	private SqlSession sqlSession;
	private Command command;

	@RequestMapping("/list")
	public String listSelect(Model model) {
		command = new UserInnListCommand();
		command.execute(model);
		return "user/inn/list";
	}
	@GetMapping("/view/{inn_uid}")
	public String viewSelect(@PathVariable("inn_uid")int inn_uid, Model model, HttpSession session) {
		session.setAttribute("loginUid", 1);
		model.addAttribute("inn_uid", inn_uid);
		command = new UserInnViewCommand();
		command.execute(model);
		return "user/inn/view";
	}
	@PostMapping("/reserve")
	public String ReserveSelect(int room_uid, String book_date, Model model, HttpSession session) {
		model.addAttribute("member_uid", session.getAttribute("loginUid"));
		model.addAttribute("room_uid", room_uid);
		model.addAttribute("book_date", book_date);
		new UserInnReserveCommand().execute(model);
		return "user/inn/reserve";
	}
	@RequestMapping("/check")
	public String ReserveCheck(UserInnDTO dto, Model model, HttpSession session) {
		model.addAttribute("member_uid", session.getAttribute("loginUid"));
		model.addAttribute("dto", dto);
		new UserInnCheckCommand().execute(model);
		return "user/inn/check";
	}
	
}