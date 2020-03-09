package com.lec.mgb.command;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.MyPageReviewDAO;

public class MyPageDeleteOkCommand implements Command {

	@Override
	public void execute(Model model) {
		String review_uid = (String)model.getAttribute("review_uid");
		MyPageReviewDAO dao = C.sqlSesssion.getMapper(MyPageReviewDAO.class);
		int result = dao.deleteReview(Integer.parseInt(review_uid));
		model.addAttribute("result", result);
	}

}
