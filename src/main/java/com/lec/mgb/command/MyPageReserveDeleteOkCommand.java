package com.lec.mgb.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.MyPageReserveDAO;

public class MyPageReserveDeleteOkCommand implements Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		int book_uid = (Integer)map.get("book_uid");
		
		MyPageReserveDAO dao = C.sqlSesssion.getMapper(MyPageReserveDAO.class);
		int result = dao.deleteBook(book_uid);
		
		model.addAttribute("result", result);
	}

}