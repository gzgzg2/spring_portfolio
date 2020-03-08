package com.lec.mgb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lec.mgb.command.MainCommand;

@Controller
public class MainController {
	
	@RequestMapping("/main")
	public String Main(Model model) {
		new MainCommand().execute(model);
		return "/user/main";
	}
	
}
