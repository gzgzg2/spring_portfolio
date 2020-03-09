package com.lec.mgb.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lec.mgb.command.PlanSaveCommand;
import com.lec.mgb.command.PlannerSaveCommand;
import com.lec.mgb.mybatis.beans.PlanDTO;

@Controller
@RequestMapping("/plan")
public class PlannerController {
String location;
	
	// 플래너 작성페이지 연결 (플래너는 RestController로 작동합니다.)
	@RequestMapping("/planner")
	public String openNewMap() {
		location = "user/planner/Planner";
		return location;
	}
	
	@RequestMapping("/showplanner")
	public String openPlanner() {
		location = "user/planner/ShowPlanner";
		return location;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/saveOk")
	public String saveOk(Model model, HttpSession session, HttpServletRequest request) {
		location = "user/planner/saveOk";
		
		model.addAttribute("member_uid", session.getAttribute("loginUid"));
		
		
		model.addAttribute("planner_title",12);
		new PlannerSaveCommand().execute(model);
		
		
		request.getParameter("trans1");
		
		
		return location;
	}

	@RequestMapping("/updateViewCnt")
	public String updateViewCnt(Model model, HttpSession session) {
		
		//TODO
		
		return location;
	}
	
	
}//end Controller
