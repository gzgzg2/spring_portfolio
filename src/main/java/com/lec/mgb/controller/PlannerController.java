package com.lec.mgb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/plan")
public class PlannerController {
String location;
	
	@RequestMapping("/planner")
	public String openNewMap() {
	
		location = "planner/TestPlanner";
	
		return location;
	}
	
	
}//end Controller
