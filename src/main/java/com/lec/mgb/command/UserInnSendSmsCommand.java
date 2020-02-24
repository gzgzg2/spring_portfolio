package com.lec.mgb.command;

import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.ui.Model;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class UserInnSendSmsCommand implements Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		String tel = (String)map.get("tel");
		
		String api_key = "NCSAIOSBI82GZA8D";
	    String api_secret = "C9HR1CPQBHSZUFVZYAHMMJFMSFHRMHAX";
	    Message coolsms = new Message(api_key, api_secret);

	    // 4 params(to, from, type, text) are mandatory. must be filled
	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", tel);
	    params.put("from", "01063611949");
	    params.put("type", "SMS");
	    params.put("text", "Coolsms Testing Message!");
	    params.put("app_version", "test app 1.2"); // application name and version

	    try {
	      JSONObject obj = (JSONObject) coolsms.send(params);
	      System.out.println(obj.toString());
	    } catch (CoolsmsException e) {
	      System.out.println(e.getMessage());
	      System.out.println(e.getCode());
	    }
	}

}