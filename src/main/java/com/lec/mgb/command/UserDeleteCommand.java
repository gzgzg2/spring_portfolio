package com.lec.mgb.command;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.MyPageDAO;

public class UserDeleteCommand implements Command {

	@Override
	public void execute(Model model) {
			
		String member_uid=  (String) model.getAttribute("member_uid");
		
		System.out.println("뭐가");
		
		MyPageDAO dao = C.sqlSesssion.getMapper(MyPageDAO.class);
		
		System.out.println("문제니");
		
		int result = dao.deleteMember(Integer.parseInt(member_uid));
		
		model.addAttribute("result", result);
	}

}
