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
@RequestMapping("/user/inn/ajax")
public class UserInnReviewAjaxController {

	@RequestMapping("/review/{inn_uid}/{writePages}/{page}")
	public ArrayList<UserTourDTO> reviewList(@PathVariable("inn_uid")int inn_uid, @PathVariable("writePages") int writePages, @PathVariable("page") int page) {
		UserInnDAO dao = C.sqlSesssion.getMapper(UserInnDAO.class);
		return dao.selectReviewByUid(inn_uid, writePages, page);
	}
	
}