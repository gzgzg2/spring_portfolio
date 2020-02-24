package com.lec.mgb.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserInnDAO;
import com.lec.mgb.mybatis.beans.UserTourDAO;
import com.lec.mgb.mybatis.beans.UserTourDTO;

@RestController
@RequestMapping("/user/tour/ajax")
public class UserTourReviewAjaxController {

	@RequestMapping("/review/{tour_uid}/{writePages}/{page}")
	public ArrayList<UserTourDTO> reviewList(@PathVariable("tour_uid")int tour_uid, @PathVariable("writePages") int writePages, @PathVariable("page") int page) {
		UserTourDAO dao = C.sqlSesssion.getMapper(UserTourDAO.class);
		return dao.selectReviewByUid(tour_uid, writePages, page);
	}
	
}