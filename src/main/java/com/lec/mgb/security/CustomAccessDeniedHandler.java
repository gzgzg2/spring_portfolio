package com.lec.mgb.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

public class CustomAccessDeniedHandler implements AccessDeniedHandler {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response,
			AccessDeniedException accessDeniedException) throws IOException, ServletException {
		
		System.out.println("Access Denied Handler");
		System.out.println("redirect ?•©?‹ˆ?‹¤...");
		
		response.sendRedirect(request.getContextPath() + "/accessError");
			
	}

}
