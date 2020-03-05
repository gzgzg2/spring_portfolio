package com.lec.mgb.command;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.MyPageDAO;
import com.lec.mgb.mybatis.beans.MyPageInfoDTO;

public class MyPageInfoCommand implements Command {

	@Override
	
	public void execute(Model model) {
		
		int member_uid = (int)model.getAttribute("member_uid");
		
		MyPageDAO dao = C.sqlSesssion.getMapper(MyPageDAO.class);
		MyPageInfoDTO dto = dao.selectByUid(member_uid);
		System.out.println(dto.getMember_email());
		model.addAttribute("dto",dto);
	}

}
