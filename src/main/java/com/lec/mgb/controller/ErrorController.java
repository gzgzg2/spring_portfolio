package com.lec.mgb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lec.mgb.command.MainCommand;

@Controller
@RequestMapping("/user/error")
public class ErrorController {
	
	@RequestMapping("/error")
	public String error(Model model) {
		return "/user/error/error";
	}
	@RequestMapping("/404")
	public String notFound(Model model) {
		return "/user/error/404";
	}
	@RequestMapping("/500")
	public String internalServerError(Model model) {
		return "/user/error/500";
	}
	
	
}