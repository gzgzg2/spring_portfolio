package com.lec.mgb.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lec.mgb.c.C;
import com.lec.mgb.command.AdminActivCrawlCommand;
import com.lec.mgb.command.AdminInnCrawlCommand;
import com.lec.mgb.command.AdminListCommand;
import com.lec.mgb.command.AdminTourCrawlCommand;
import com.lec.mgb.command.Command;

@Controller
@RequestMapping("/admin_test")
public class Admin_test_Controller {
	
	private SqlSession sqlsession;
	
	@Autowired
	public void setSqlsession(SqlSession sqlsession) {
		this.sqlsession = sqlsession;
		C.sqlSesssion = sqlsession;
	}
	
	private Command command;
	
	@RequestMapping(value = "/admin_MemberManage") 
	public String admin_MemberManage(Model model) {
		new AdminListCommand().execute(model);
		return "admin/admin_MemberManage";
	}
	
	@RequestMapping(value = "/admin_InnManage")
	public String admin_InnManage(Model model) {
		return "admin_test/admin_InnManage";
	}
	
	@RequestMapping(value = "/innCrawl")
	public String admin_InnCrawl(Model model) {
		new AdminInnCrawlCommand().execute(model);
		return "redirect:/admin_test/admin_InnManage";
	}
	
	@RequestMapping(value = "/admin_ActivManage")
	public String admin_ActivManage(Model model) {
		return "admin_test/admin_ActivManage";
	}
	
	@RequestMapping(value = "/activCrawl")
	public String admin_ActivCrawl(Model model) {
		new AdminActivCrawlCommand().execute(model);
		return "redirect:/admin_test/admin_ActivManage";
	}
	
	@RequestMapping(value = "/admin_TourManage")
	public String admin_TourManage(Model model) {
		return "admin_test/admin_TourManage";
	}
	
	@RequestMapping(value = "/tourCrawl")
	public String admin_TourCrawl(Model model) {
		new AdminTourCrawlCommand().execute(model);
		return "redirect:/admin_test/admin_TourManage";
	}
}
