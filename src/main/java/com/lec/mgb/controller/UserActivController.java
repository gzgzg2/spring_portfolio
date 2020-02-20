package com.lec.mgb.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lec.mgb.c.C;
import com.lec.mgb.command.Command;
import com.lec.mgb.command.UserActivCheckCommand;
import com.lec.mgb.command.UserActivListCommand;
import com.lec.mgb.command.UserActivReserveCommand;
import com.lec.mgb.command.UserActivViewCommand;
import com.lec.mgb.mybatis.beans.UserActivDTO;

@Controller
@RequestMapping("/user/activ")
public class UserActivController {
	// MyBatis
	private SqlSession sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		C.sqlSesssion = sqlSession;
	}
	private Command command;

	@RequestMapping("/list")
	public String listSelect(Model model) {
		command = new UserActivListCommand();
		command.execute(model);
		return "user/activ/list";
	}
	@GetMapping("/view/{activ_uid}")
	public String viewSelect(@PathVariable("activ_uid")int activ_uid, Model model) {
		model.addAttribute("activ_uid", activ_uid);
		new UserActivViewCommand().execute(model);
		return "user/activ/view";
	}
	@PostMapping("/reserve")
	public String ReserveSelect(int ticket_uid, int book_member_cnt, Model model, HttpSession session) {
		model.addAttribute("ticket_uid", ticket_uid);
		model.addAttribute("book_member_cnt", book_member_cnt);
		model.addAttribute("member_uid", session.getAttribute("loginUid"));
		new UserActivReserveCommand().execute(model);
		return "user/activ/reserve";
	}
	@PostMapping("/check")
	public String ReserveOk(UserActivDTO dto, Model model, HttpSession session) {
		model.addAttribute("dto", dto);
		model.addAttribute("member_uid", session.getAttribute("loginUid"));
		new UserActivCheckCommand().execute(model);
		return "user/activ/check";
	}
	
}