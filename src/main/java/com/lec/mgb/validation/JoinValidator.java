package com.lec.mgb.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.lec.mgb.mybatis.beans.MyPageInfoDTO;

public class JoinValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		System.out.println("supports(" + clazz.getName() + ")");
		return MyPageInfoDTO.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		System.out.println("validate()");
		MyPageInfoDTO dto = (MyPageInfoDTO)target;
		
//		int uid = dto.getMember_uid();
//		if(uid == 0) {
//			System.out.println("uid값이 넘어오지 않았다");
//			errors.rejectValue("uid", "invalidUid");
//		}
//		
//		String name = dto.getMember_name();
//		if(name == null || name.trim().isEmpty()) {
//			System.out.println("name값 안 넘어옴");
//			errors.rejectValue("name", "emptyName");
//		}
//		
//		String email = dto.getMember_email();
//		if(email == null || email.trim().isEmpty()) {
//			System.out.println("email xxxxxxxx");
//			errors.rejectValue("email", "emptyEmail");
//		}
//		
//		String tel = dto.getMember_tel();
//		if(tel == null || tel.trim().isEmpty()) {
//			System.out.println("tel x");
//			errors.rejectValue("tel", "emptyTel");
//		}
//		
//		String id = dto.getMember_id();
//		if(id == null || id.trim().isEmpty()) {
//			System.out.println("id x");
//			errors.rejectValue("id", "emptyId");
//		}
//		
//		String pw = dto.getMember_pw();
//		if(pw == null || pw.trim().isEmpty()) {
//			System.out.println("pw x");
//			errors.rejectValue("pw", "emptyPw");
//		}
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "member_id", "emptyId");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "member_pw", "emptyPw");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "member_tel", "emptyTel");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "member_email", "emptyEmail");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "member_name", "emptyName");
		
	}

}
