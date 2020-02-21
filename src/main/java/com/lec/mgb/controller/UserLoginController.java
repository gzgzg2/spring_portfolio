package com.lec.mgb.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserLoginController {
	
	@GetMapping("/user/account/login")
	public void loginInput(String error, String logout, Model model) {
		System.out.println("error: " + error);
		System.out.println("logout: " + logout);
		
		if (error != null) {
			model.addAttribute("error", "Login Error Check Your Account");
		}
		
		if (logout != null) {
			model.addAttribute("logout", "Logout");
		}
	}
	
}
