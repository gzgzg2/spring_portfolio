package com.lec.mgb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

	
	@RequestMapping(value = "/admin_MemberManage") 
	public String admin_MemberManage(Model model) {
		return "admin/admin_MemberManage";
	}
	
	@RequestMapping(value = "/admin_BookingManage") 
	public String admin_BookingManage(Model model) {
		return "admin/admin_BookingManage";
	}
	
	@RequestMapping(value = "/admin_MotelManage") 
	public String admin_MotelManage(Model model) {
		return "admin/admin_MotelManage";
	}
	
	@RequestMapping(value = "/admin_LocalManage") 
	public String admin_LocalManage(Model model) {
		return "admin/admin_LocalManage";
	}
	
}
