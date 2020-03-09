package com.lec.mgb.command;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.MyPageReviewDAO;
import com.lec.mgb.mybatis.beans.MyPageReviewDTO;

public class UserMyPageUpdateCommand implements Command {

	@Override
	public void execute(Model model) {
			System.out.println("커맨드 왔다 ");
			String review_uid = (String)model.getAttribute("review_uid");
			MyPageReviewDAO dao = C.sqlSesssion.getMapper(MyPageReviewDAO.class);
			MyPageReviewDTO dto = dao.selectActiv(Integer.parseInt(review_uid));
			model.addAttribute("dto", dto);
			System.out.println(dto.getReview_title());
	}

}
