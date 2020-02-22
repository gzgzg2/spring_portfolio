package com.lec.mgb.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserTourDAO;
import com.lec.mgb.mybatis.beans.UserTourDTO;

@RestController
@RequestMapping("/user/tour/ajax")
public class UserTourAjaxController {
	
	@RequestMapping("/starHigh")
	public ArrayList<UserTourDTO> listByTourStarHigh() {
		UserTourDAO dao = C.sqlSesssion.getMapper(UserTourDAO.class);
		return dao.selectTourByStarHigh();
	}
	
	@RequestMapping("/costHigh")
	public ArrayList<UserTourDTO> listByTourCostHigh() {
		UserTourDAO dao = C.sqlSesssion.getMapper(UserTourDAO.class);
		return dao.selectTourByCostHigh();
	}
	
	@RequestMapping("/costLow")
	public ArrayList<UserTourDTO> listByTourCostLow() {
		UserTourDAO dao = C.sqlSesssion.getMapper(UserTourDAO.class);
		return dao.selectTourByCostLow();
	}
	
}