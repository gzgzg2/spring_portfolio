package com.lec.mgb.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.MyPageDAO;
import com.lec.mgb.mybatis.beans.MyPageInfoDTO;

public class MyPageInfoUpdateCommand implements Command {

	@Override
	public void execute(Model model) {
		
		System.out.println("왔다 command");
		
		Map<String, Object> map = model.asMap();
		MyPageInfoDTO dto = (MyPageInfoDTO)map.get("dto");
		
		System.out.println(dto.getMember_email());
		
		int member_uid = (int)model.getAttribute("member_uid");
		MyPageDAO dao = C.sqlSesssion.getMapper(MyPageDAO.class);
		int result = dao.mypageUpdate(member_uid, dto);
		
		System.out.println("result : " + result);
		
		model.addAttribute("result", result);
	}

}
