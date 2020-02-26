package com.lec.mgb.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserTourDAO;
import com.lec.mgb.mybatis.beans.UserTourDTO;

@RestController
@RequestMapping("/user/tour/ajax")
public class UserTourAjaxController {
	
	@RequestMapping("/starHigh/{writePages}/{page}")
	public ArrayList<UserTourDTO> listByTourStarHigh(@PathVariable("writePages") int writePages, @PathVariable("page") int page) {
		UserTourDAO dao = C.sqlSesssion.getMapper(UserTourDAO.class);
		return dao.selectTourByStarHigh(writePages, page);
	}
	
	@RequestMapping("/costHigh/{writePages}/{page}")
	public ArrayList<UserTourDTO> listByTourCostHigh(@PathVariable("writePages") int writePages, @PathVariable("page") int page) {
		UserTourDAO dao = C.sqlSesssion.getMapper(UserTourDAO.class);
		return dao.selectTourByCostHigh(writePages, page);
	}
	
	@RequestMapping("/costLow/{writePages}/{page}")
	public ArrayList<UserTourDTO> listByTourCostLow(@PathVariable("writePages") int writePages, @PathVariable("page") int page) {
		UserTourDAO dao = C.sqlSesssion.getMapper(UserTourDAO.class);
		return dao.selectTourByCostLow(writePages, page);
	}
	
}