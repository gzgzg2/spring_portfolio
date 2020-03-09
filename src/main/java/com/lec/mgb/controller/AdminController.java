package com.lec.mgb.controller;

import javax.servlet.ServletContext;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.lec.mgb.c.C;
import com.lec.mgb.command.AdminActivCrawlCommand;
import com.lec.mgb.command.AdminAddLocalCommand;
import com.lec.mgb.command.AdminBookActivCommand;
import com.lec.mgb.command.AdminBookDeleteCommand;
import com.lec.mgb.command.AdminBookRoomCommand;
import com.lec.mgb.command.AdminBookTourCommand;
import com.lec.mgb.command.AdminInnCrawlCommand;
import com.lec.mgb.command.AdminLocalDeleteCommand;
import com.lec.mgb.command.AdminLocalListCommand;
import com.lec.mgb.command.AdminMemberDeleteCommand;
import com.lec.mgb.command.AdminMemberListCommand;
import com.lec.mgb.command.AdminPlannerDeleteCommand;
import com.lec.mgb.command.AdminPlannerListCommand;
import com.lec.mgb.command.AdminSelectLocalCommand;
import com.lec.mgb.command.AdminTourCrawlCommand;
import com.lec.mgb.command.AdminUpdateGoodCommand;
import com.lec.mgb.command.AdminUpdateLocalCommand;
import com.lec.mgb.command.AdminUpdateNGoodCommand;
import com.lec.mgb.command.Command;
import com.lec.mgb.mybatis.beans.AdminLocalDTO;


@Controller
@RequestMapping("/admin")
public class AdminController {
	private ServletContext context;
	
	private Command command;
	//private JdbcTemplate template;
	
	// MyBatis
	private SqlSession sqlSesssion;
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSesssion = sqlSession;
		C.sqlSesssion = sqlSession;
	}
	
	@Autowired
	public void setContext(ServletContext context) {
		this.context = context;
		C.context = context;
	}
	
	@RequestMapping(value = "/admin_data")
	public String admin_data(Model model) {
		return "admin/admin_data";
	}
	
	// 회원관리
	@RequestMapping(value = "/admin_MemberManage")
	public String admin_MemberManage(Model model) {
		new AdminMemberListCommand().execute(model);
		return "admin/admin_MemberManage";
	}
	
	// 회원 삭제
	@RequestMapping(value = "/admin_MemberDeleteOk")
	public String admin_MemberdeleteOk(int uid, Model model) {
		model.addAttribute("uid", uid);
		new AdminMemberDeleteCommand().execute(model);
		return "admin/admin_MemberDeleteOk";
	}
	
		
	// 관광지 관리
	@RequestMapping(value = "/admin_LocalManage")
	public String admin_LocalManage(Model model) {
		new AdminLocalListCommand().execute(model);
		return "admin/admin_LocalManage";
	}
	
	// 관광지 추가
	@RequestMapping(value = "/admin_AddLocal")
	public String admin_AddLocal(Model model) {
		return "admin/admin_AddLocal";
	}
	@RequestMapping(value = "/admin_AddLocalOk", method = RequestMethod.POST)
	public String admin_AddLocalOk(@RequestParam("upload") MultipartFile file,@ModelAttribute("dto") AdminLocalDTO dto, Model model) {
		model.addAttribute("upload", file);
		new AdminAddLocalCommand().execute(model);
		return "admin/admin_AddLocalOk";
	}
	
	// 관광지 수정
	@RequestMapping(value = "/admin_UpdateLocal")
	public String admin_Update(int uid, Model model) {
		model.addAttribute("uid", uid);
		new AdminSelectLocalCommand().execute(model);
		return "admin/admin_UpdateLocal";
	}
	@RequestMapping(value = "/admin_UpdateLocalOk", method = RequestMethod.POST)
	public String admin_UpdateOk(@RequestParam("upload") MultipartFile file,@ModelAttribute("dto") AdminLocalDTO dto, Model model) {
		model.addAttribute("dto", dto);
		model.addAttribute("upload", file);
		new AdminUpdateLocalCommand().execute(model);
		return "admin/admin_UpdateLocalOk";
	}
	
	// 관광지 삭제
	@RequestMapping(value = "/admin_LocalDeleteOk")
	public String admin_LocaldeleteOk(int uid, Model model) {
		model.addAttribute("uid", uid);
		new AdminLocalDeleteCommand().execute(model);
		return "admin/admin_LocalDeleteOk";
	}
	
	
	
	
	// 예약관리
	// 예약 삭제
	@RequestMapping(value = "/admin_BookDeleteOk")
	public String admin_BookdeleteOk(int uid, Model model) {
		model.addAttribute("uid", uid);
		new AdminBookDeleteCommand().execute(model);
		return "admin/admin_BookDeleteOk";
	}
	
	
	// 숙소관리
	@RequestMapping(value = "/admin_InnManage")
	public String admin_InnManage(Model model) {
		new AdminBookRoomCommand().execute(model);
		return "admin/admin_InnManage";
	}
	
	// 숙소 크롤링
	@RequestMapping(value = "/innCrawl")
	public String admin_InnCrawl(Model model) {
		new AdminInnCrawlCommand().execute(model);
		return "redirect:/admin_test/admin_InnManage";
	}
	
	// 투어 관리
	@RequestMapping(value = "/admin_TourManage")
	public String admin_TourManage(Model model) {
		new AdminBookTourCommand().execute(model);
		return "admin/admin_TourManage";
	}
	
	// 투어 크롤링
	@RequestMapping(value = "/tourCrawl")
	public String admin_TourCrawl(Model model) {
		new AdminTourCrawlCommand().execute(model);
		return "redirect:/admin_test/admin_TourManage";
	}
	
	// 액티비티 관리
	@RequestMapping(value = "/admin_ActivManage")
	public String admin_ActivManage(Model model) {
		new AdminBookActivCommand().execute(model);
		return "admin/admin_ActivManage";
	}

	// 액티비티 크롤링
	@RequestMapping(value = "/activCrawl")
	public String admin_ActivCrawl(Model model) {
		new AdminActivCrawlCommand().execute(model);
		return "redirect:/admin_test/admin_ActivManage";
	}
	
	// 플래너관리
	@RequestMapping("/admin_PlannerManage")
	public String admin_PlannerManage(Model model) {
		new AdminPlannerListCommand().execute(model);
		return "admin/admin_PlannerManage";
	}
	
	// 플래너 삭제
	@RequestMapping(value = "/admin_PlannerDeleteOk")
	public String admin_PlannerdeleteOk(int uid, Model model) {
		model.addAttribute("uid", uid);
		new AdminPlannerDeleteCommand().execute(model);
		return "admin/admin_PlannerDeleteOk";
	}
	
	// 우수 플래너 관리
	@RequestMapping("/admin_GoodPlannerManage")
	public String admin_GoodPlannerManage(Model model) {
		new AdminPlannerListCommand().execute(model);
		return "admin/admin_GoodPlannerManage";
	}

	// 우수 플래너 등록
	@RequestMapping(value = "/admin_GoodPlanner")
	public String admin_updateGoodPlanner(int planner_uid, Model model) {
		model.addAttribute("planner_uid", planner_uid);
		new AdminUpdateGoodCommand().execute(model);
		return "admin/admin_GoodPlannerOk";
	}

	// 우수 플래너 등록취소
	@RequestMapping(value = "/admin_NGoodPlanner")
	public String admin_updateNGoodPlanner(int planner_uid, Model model) {
		model.addAttribute("planner_uid", planner_uid);
		new AdminUpdateNGoodCommand().execute(model);
		return "admin/admin_NGoodPlannerOk";
	}

	
}
