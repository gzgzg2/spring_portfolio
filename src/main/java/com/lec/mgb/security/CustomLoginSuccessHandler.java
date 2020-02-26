package com.lec.mgb.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.MyPageDAO;
import com.lec.mgb.mybatis.beans.MyPageInfoDTO;
import com.lec.mgb.mybatis.beans.UserJoinLoginDAO;

public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {
	
	private SqlSession sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		C.sqlSesssion = sqlSession;
	}
		
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		System.out.println("우에");
		
		List<String> roleNames = new ArrayList<String>();
		authentication.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
		});	
		
		System.out.println("ROLE NAMES: " + roleNames);
		
		if(roleNames.contains("ROLE_ADMIN")) {
			response.sendRedirect(request.getContextPath() + "/admin/admin-BookingManage");
			return;
		}
		
		
		if(roleNames.contains("ROLE_MEMBER")) {
			HttpSession httpSession = request.getSession(true);
			MyPageInfoDTO dto = new MyPageInfoDTO();
			
			Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			
			UserDetails userDetails = (UserDetails)principal;
			
			MyPageDAO dao = C.sqlSesssion.getMapper(MyPageDAO.class);
			String member_id = userDetails.getUsername();
			dto = dao.selectMember(member_id);
			
			System.out.println(dao.selectMember(member_id));
			System.out.println(member_id);
			httpSession.setAttribute("loginUid", dto.getMember_uid());
			httpSession.setAttribute("userPic", dto.getMember_pic());
			
			System.out.println(httpSession.getAttribute("loginUid"));
			System.out.println(httpSession.getAttribute("userPic"));
			
			System.out.println(request.getContextPath() + "/user/mypage/mypageInfo");
			response.sendRedirect(request.getContextPath() + "/user/mypage/mypageInfo/"+httpSession.getAttribute("loginUid"));
			return;
		}
		
		response.sendRedirect(request.getContextPath());
	}

}
