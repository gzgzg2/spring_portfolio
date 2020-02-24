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
@RequestMapping("/user/activ/ajax")
public class UserActivAjaxController {

	@RequestMapping("/review/{activ_uid}/{writePages}/{page}")
	public ArrayList<UserTourDTO> reviewList(@PathVariable("activ_uid")int activ_uid, @PathVariable("writePages") int writePages, @PathVariable("page") int page) {
		UserActivDAO dao = C.sqlSesssion.getMapper(UserActivDAO.class);
		return dao.selectReviewByUid(activ_uid, writePages, page);
	}
	
}