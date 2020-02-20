package com.lec.mgb.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.MyPageInfoDTO;
import com.lec.mgb.mybatis.beans.UserJoinLoginDAO;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

public class UserJoinOkCommand implements Command {
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		MyPageInfoDTO dto = (MyPageInfoDTO)map.get("dto");
		PasswordEncoder pw = new BCryptPasswordEncoder();
		
		dto.setMember_pwEncode(pw.encode(dto.getMember_pw()));
		UserJoinLoginDAO dao = C.sqlSesssion.getMapper(UserJoinLoginDAO.class);
		model.addAttribute("joinOk", dao.joinInsert(dto));
		
		System.out.println(dto.getMember_pwEncode());
		System.out.println("name" + dto.getMember_name());
	}

}
