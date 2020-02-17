package com.lec.mgb.controller;

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
	public String viewSelect(@PathVariable("inn_uid")int inn_uid, Model model) {
		model.addAttribute("inn_uid", inn_uid);
		command = new UserInnViewCommand();
		command.execute(model);
		return "user/inn/view";
	}
	@PostMapping("/reserve")
	public String ReserveSelect(int room_uid, String book_date, String book_forDate, Model model) {
		model.addAttribute("inn_uid", room_uid);
		model.addAttribute("book_date", book_date);
		model.addAttribute("book_forDate", book_forDate);
		command = new UserInnReserveCommand();
		command.execute(model);
		return "user/inn/reserve";
	}
	@PostMapping("/rerserveOk")
	public String ReserveOk(int mb_uid, UserInnDTO dto, Model model) {
		model.addAttribute("mb_uid", mb_uid);
		model.addAttribute("dto", dto);
		command = new UserInnReserveOkCommand();
		command.execute(model);
		return "user/inn/reserveOk";
	}
	@RequestMapping("/check")
	public String ReserveCheck(int mb_uid, Model model) {
		model.addAttribute("mb_uid", mb_uid);
		command = new UserInnCheckCommand();
		command.execute(model);
		return "user/inn/check";
	}
	
}