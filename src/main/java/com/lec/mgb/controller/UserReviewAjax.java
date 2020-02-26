package com.lec.mgb.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserActivDAO;
import com.lec.mgb.mybatis.beans.UserInnDAO;
import com.lec.mgb.mybatis.beans.UserTourDAO;
import com.lec.mgb.mybatis.beans.UserTourDTO;

@RestController
@RequestMapping("/user")
public class UserReviewAjax {
	
	@RequestMapping("/activ/ajax/review/{activ_uid}/{writePages}/{page}")
	public ArrayList<UserTourDTO> activReviewList(@PathVariable("activ_uid")int activ_uid, @PathVariable("writePages") int writePages, @PathVariable("page") int page) {
		UserActivDAO dao = C.sqlSesssion.getMapper(UserActivDAO.class);
		return dao.selectReviewByUid(activ_uid, writePages, page);
	}
	
	@RequestMapping("/inn/ajax/review/{inn_uid}/{writePages}/{page}")
	public ArrayList<UserTourDTO> innReviewList(@PathVariable("inn_uid")int inn_uid, @PathVariable("writePages") int writePages, @PathVariable("page") int page) {
		UserInnDAO dao = C.sqlSesssion.getMapper(UserInnDAO.class);
		return dao.selectReviewByUid(inn_uid, writePages, page);
	}
	
	@RequestMapping("/tour/ajax/review/{tour_uid}/{writePages}/{page}")
	public ArrayList<UserTourDTO> tourReviewList(@PathVariable("tour_uid")int tour_uid, @PathVariable("writePages") int writePages, @PathVariable("page") int page) {
		UserTourDAO dao = C.sqlSesssion.getMapper(UserTourDAO.class);
		return dao.selectReviewByUid(tour_uid, writePages, page);
	}
	
}