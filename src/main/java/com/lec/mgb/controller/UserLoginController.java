package com.lec.mgb.controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
	
	@GetMapping("/user/account/loginFail")
	public void loginFail(String error, String logout, Model model) {
		System.out.println("로그인 실패");
	}
	
	
//	@GetMapping("/user/account/logoutOk")
//	public void logoutGET() {
//		System.out.println("들어왔더 GET");
//	}
	
	
}
