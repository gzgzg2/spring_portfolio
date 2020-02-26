package com.lec.mgb.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.MyPageReserveDAO;
import com.lec.mgb.mybatis.beans.UserInnDTO;

public class MyPageReviewWriteOkCommand implements Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int member_uid = (Integer)map.get("member_uid");
		int book_uid = (Integer)map.get("book_uid");
		int review_star = (Integer)map.get("review_star");
		String review_title = (String)map.get("review_title");
		String review_content = (String)map.get("review_content");
		
		MyPageReserveDAO dao = C.sqlSesssion.getMapper(MyPageReserveDAO.class);
		String review_id = dao.selectMemberNameByUid(member_uid).getMember_id();
		int result = dao.insertReview(review_title, review_content, review_star, review_id, book_uid);
		model.addAttribute("result", result);
	}

}