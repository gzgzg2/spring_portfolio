package com.lec.mgb.controller;

import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@RestController
@RequestMapping("/user")
public class UserSendSMSController {
	
	@PostMapping("/sendSMS")
	public int sendSMS(HttpServletRequest request, HttpServletResponse response, String rd, String tel) {
		Cookie[] cookies = request.getCookies();
		int result = 0;

		if(cookies != null){
			for(int i = 0; i < cookies.length; i++){
				cookies[i].setMaxAge(0); // 유효시간을 0으로 설정
				response.addCookie(cookies[i]); // 응답 헤더에 추가
			}
		}
		
		if (rd.trim().length() == 6) {
			Cookie cookie = new Cookie("rd", rd);
			cookie.setMaxAge(3 * 60);
			response.addCookie(cookie);
			result = 1;
		}
		
		if (result == 1) {
			String api_key = "NCSAIOSBI82GZA8D";
		    String api_secret = "C9HR1CPQBHSZUFVZYAHMMJFMSFHRMHAX";
		    String text = "[귤귤 플래너] 인증 번호 : " + rd;
		    Message coolsms = new Message(api_key, api_secret);

		    // 4 params(to, from, type, text) are mandatory. must be filled
		    HashMap<String, String> params = new HashMap<String, String>();
		    params.put("to", tel);
		    params.put("from", "01063611949");
		    params.put("type", "SMS");
		    params.put("text", text);
		    params.put("app_version", "test app 1.2"); // application name and version

		    try {
		      JSONObject obj = (JSONObject) coolsms.send(params);
		      System.out.println(obj.toString());
		    } catch (CoolsmsException e) {
		      System.out.println(e.getMessage());
		      System.out.println(e.getCode());
		    }
		}
		
		return result;
	}
	
	@PostMapping("/chkSMS")
	public int chkSMS(HttpServletRequest request, HttpServletResponse response, String authKey) {
		Cookie[] cookies = request.getCookies();
		
		int result = 0;
		
		if(cookies != null){
			for(int i = 0; i < cookies.length; i++){
				System.out.println(cookies[i].getValue());
				if (authKey.equals(cookies[i].getValue())) {
					result = 1;
				}
			}
		}
		
		return result;
	}
	
}