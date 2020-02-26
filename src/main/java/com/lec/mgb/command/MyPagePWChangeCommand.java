package com.lec.mgb.command;

import java.util.Map;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.MyPageDAO;
import com.lec.mgb.mybatis.beans.MyPageInfoDTO;

public class MyPagePWChangeCommand implements Command {

	@Override
	public void execute(Model model) {
		
		int result;
		
		Map<String, Object> map = model.asMap();
		MyPageInfoDTO dto = (MyPageInfoDTO)map.get("dto");
		int member_uid = (int)model.getAttribute("member_uid");
		PasswordEncoder pw = new BCryptPasswordEncoder();
		
		
		dto.setMember_pwEncode(pw.encode(dto.getMember_newPw()));
		System.out.println(dto.getMember_newPw());
		
		MyPageDAO dao = C.sqlSesssion.getMapper(MyPageDAO.class);
	
		MyPageInfoDTO chk = dao.selectByUid(member_uid);
		
		if (chk.getMember_pw().equals(dto.getMember_pw())) {
			result = dao.updatePassword(member_uid, dto);
			System.out.println("현재비밀번호 일치");	
			System.out.println(result);
			if(result == 1) {				
				System.out.println("비밀번호 변경");
				System.out.println(dto.getMember_pwEncode());
				model.addAttribute("result", result);
				System.out.println(result);
				System.out.println("model : " + model.getAttribute("result"));
			} else {
				System.out.println("변경실패");
				model.addAttribute("result", 0);
				System.out.println(result);
				System.out.println("model : " + model.getAttribute("result"));
			}
			
		} else {
			System.out.println("현재 비밀번호 일치하지 않음");
			model.addAttribute("result", 2);
			System.out.println(model.getAttribute("result"));
		}
		
		
	}
}
