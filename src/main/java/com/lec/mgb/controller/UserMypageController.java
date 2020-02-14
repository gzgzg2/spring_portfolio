package com.lec.mgb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/mypage")
public class UserMypageController {

	@PostMapping(value = "/info") 
	public String mypageSelect(Model model) {
	
		return "user/mypage/info";
	}
	
}
