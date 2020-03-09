package com.lec.mgb.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.MyPageReviewDAO;
import com.lec.mgb.mybatis.beans.MyPageReviewDTO;

public class MyPageUpdateOkCommand implements Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		MyPageReviewDTO dto = (MyPageReviewDTO)map.get("dto");
		MyPageReviewDAO dao = C.sqlSesssion.getMapper(MyPageReviewDAO.class);
		System.out.println(dto.getReview_uid());
		System.out.println(dto.getReview_title());
		int result = dao.updateReview(dto.getReview_uid(), dto);
		model.addAttribute("result", result);
	}
}
