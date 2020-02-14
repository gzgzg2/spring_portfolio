package com.lec.mgb.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

	// λ‘κ·Έ?Έ μ§ν? ???? μ½λ
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {

		System.out.println("λ‘κ·Έ?Έ ?±κ³?!");
		
		// Authentication κ°μ²΄λ₯? ?΄?©?΄? ?¬?©?κ°? κ°?μ§? λͺ¨λ  κΆν? λ¬Έμ?΄λ‘? μ²΄ν¬ κ°??₯
		List<String> roleNames = new ArrayList<String>();
		authentication.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
		});	//μ»€λ₯? κ°μ²΄λ₯? λ¦¬ν΄
		
		System.out.println("ROLE NAMES: " + roleNames);
		
		// λ§μ½ ?¬?©?κ°? ROLE_ADMIN κΆν? κ°?μ‘λ€λ©? λ‘κ·Έ?Έ? κ³§λ°λ‘? /sample/admin ?Όλ‘? ?΄?
		if(roleNames.contains("ROLE_ADMIN")) {
			response.sendRedirect(request.getContextPath() + "/sample/admin");
			return;
		}
		
		if(roleNames.contains("ROLE_MEMBER")) {
			response.sendRedirect(request.getContextPath() + "/sample/member");
			return;
		}
		
		response.sendRedirect(request.getContextPath());
	}

}
