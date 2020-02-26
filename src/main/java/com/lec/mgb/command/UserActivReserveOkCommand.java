package com.lec.mgb.command;

import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserActivDAO;
import com.lec.mgb.mybatis.beans.UserActivDTO;
import com.lec.mgb.mybatis.beans.UserInnDTO;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class UserActivReserveOkCommand implements Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int member_uid = (int)map.get("member_uid");
		UserActivDTO dto = (UserActivDTO)map.get("dto");
		
		UserActivDAO dao = C.sqlSesssion.getMapper(UserActivDAO.class);
		int cnt = dao.insertBook(member_uid, dto);
		if (cnt == 1) {
			int book_uid = dao.selectBookUidByUid(member_uid).getBook_uid();
			model.addAttribute("book_uid", book_uid);
			
			UserActivDTO dto2 = dao.selectCheckByUid(member_uid, book_uid);
			
			UserActivDTO title = dao.selectTitleByUid(dto.getTicket_uid());
			String api_key = "NCSAIOSBI82GZA8D";
		    String api_secret = "C9HR1CPQBHSZUFVZYAHMMJFMSFHRMHAX";
		    String text = "[귤귤 플래너] 티켓이 예약되었습니다!     \n" + title.getActiv_name()
		    			+ "\n - " + title.getTicket_name() 
		    			+ "\n예약자 명 : " + dto.getBook_member_name() + "님"
		    			+ "\n예약자 번호 : " + dto.getBook_member_tel() 
		    			+ "\n티켓 구매일 : " + dto2.getBook_date()
		    			+ "\n총 가격 : " + ("" + dto2.getBook_cost()).replaceAll("\\B(?=(\\d{3})+(?!\\d))", ",") + "원";
		    Message coolsms = new Message(api_key, api_secret);

		    // 4 params(to, from, type, text) are mandatory. must be filled
		    HashMap<String, String> params = new HashMap<String, String>();
		    params.put("to", dto.getBook_member_tel());
		    params.put("from", "01063611949");
		    params.put("type", "LMS");
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
		
		model.addAttribute("cnt", cnt);
	}

}