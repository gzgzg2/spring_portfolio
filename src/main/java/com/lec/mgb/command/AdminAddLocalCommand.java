package com.lec.mgb.command;

import java.io.File;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.AdminLocalDTO;
import com.lec.mgb.mybatis.beans.IAdminLocalDAO;

public class AdminAddLocalCommand implements Command {

	@Override
	public void execute(Model model) {
		
		int result = 0;
		
		Map<String, Object> map = model.asMap();
		AdminLocalDTO dto = (AdminLocalDTO)map.get("dto");
		
		MultipartFile file = (MultipartFile)map.get("upload");
		
		ServletContext context = C.context;
		String saveDirectory = context.getRealPath("LOCALPIC/");
		if(file.getOriginalFilename() == "" || file.getOriginalFilename() == null) {
			// 파일 없이 Submit 했을 때
			
		} else {
			// 파일 있을 경우
			// 4. 확장자 체크 (이미지 파일 인지 확인)
			String contentType = file.getContentType();
			if(contentType.equals("image/jpeg") || contentType.equals("image/png") || contentType.equals("image/jpg")) {
				// 5. 파일 경로 지정
				File saveFile = new File(saveDirectory, file.getOriginalFilename());
				try {
					// 6. 지정된 경로에 파일 저장
					file.transferTo(saveFile);
					dto.setLocal_pic(file.getOriginalFilename());
				} catch(Exception e) {
					e.printStackTrace();
				}
			} else {
				result= 101; // 이미지가 아닌 경우
				System.out.println("이미지가 아닙니다");
				model.addAttribute("result", result);
				return; // Ok.jsp -> c:choose result == 101 alert("이미지 파일만 업로드하세요"); history.back();
			}
		}
		
		System.out.println(dto.getLocal_name());
		IAdminLocalDAO dao = C.sqlSesssion.getMapper(IAdminLocalDAO.class);
		result = dao.insert(dto);
		model.addAttribute("result", result);
	}

}
