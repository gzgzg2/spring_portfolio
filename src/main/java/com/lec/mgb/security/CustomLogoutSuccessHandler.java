package com.lec.mgb.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

public class CustomLogoutSuccessHandler implements LogoutSuccessHandler {

	@Override
	public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
			throws IOException, ServletException {

		System.out.println("왔다");
		
		if(authentication != null && authentication.getDetails() != null) {
			try {
				request.getSession().removeAttribute("loginUId");
				request.getSession().removeAttribute("userPic");
				request.getSession().invalidate();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		response.setStatus(HttpServletResponse.SC_OK);
		response.sendRedirect(request.getContextPath() + "/user/account/login");
		
	}

}
