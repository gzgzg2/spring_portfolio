package com.lec.mgb.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.MyPageReserveDAO;
import com.lec.mgb.mybatis.beans.UserInnDTO;

@RestController
@RequestMapping("/user")
public class UserMyPageAjax {
	
	@RequestMapping("/mypage/ajax/reserve/dateHigh/{member_uid}/{writePages}/{page}")
	public ArrayList<UserInnDTO> reserveDateHighList(@PathVariable("member_uid")int member_uid, @PathVariable("writePages") int writePages, @PathVariable("page") int page) {
		MyPageReserveDAO dao = C.sqlSesssion.getMapper(MyPageReserveDAO.class);
		return dao.selectDateHigh(member_uid, writePages, page);
	}
	
	@RequestMapping("/mypage/ajax/reserve/dateLow/{member_uid}/{writePages}/{page}")
	public ArrayList<UserInnDTO> reserveDateLowList(@PathVariable("member_uid")int member_uid, @PathVariable("writePages") int writePages, @PathVariable("page") int page) {
		MyPageReserveDAO dao = C.sqlSesssion.getMapper(MyPageReserveDAO.class);
		return dao.selectDateLow(member_uid, writePages, page);
	}
	
}