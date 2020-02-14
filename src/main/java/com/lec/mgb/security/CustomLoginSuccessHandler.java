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

	// ë¡œê·¸?¸ ì§í›„?— ?ˆ˜?–‰?˜?Š” ì½”ë“œ
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {

		System.out.println("ë¡œê·¸?¸ ?„±ê³?!");
		
		// Authentication ê°ì²´ë¥? ?´?š©?•´?„œ ?‚¬?š©?ê°? ê°?ì§? ëª¨ë“  ê¶Œí•œ?„ ë¬¸ì?—´ë¡? ì²´í¬ ê°??Š¥
		List<String> roleNames = new ArrayList<String>();
		authentication.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
		});	//ì»¤ë„¥?…˜ ê°ì²´ë¥? ë¦¬í„´
		
		System.out.println("ROLE NAMES: " + roleNames);
		
		// ë§Œì•½ ?‚¬?š©?ê°? ROLE_ADMIN ê¶Œí•œ?„ ê°?ì¡Œë‹¤ë©? ë¡œê·¸?¸?›„ ê³§ë°”ë¡? /sample/admin ?œ¼ë¡? ?´?™
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
