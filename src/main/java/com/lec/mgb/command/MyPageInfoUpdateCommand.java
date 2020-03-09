package com.lec.mgb.command;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.MyPageDAO;
import com.lec.mgb.mybatis.beans.MyPageInfoDTO;

public class MyPageInfoUpdateCommand implements Command {

	@Override
	public void execute(Model model) {
		
		
		
		System.out.println("왔다 command");
		int result = 0;
		// 1. Parameter 받아오기
		Map<String, Object> map = model.asMap();
		MyPageInfoDTO dto = (MyPageInfoDTO)map.get("dto");
		//model.getAttribute으로도 될 수 도 있지만 나는 map.get으로 해서 이렇게 해볼게
		MultipartFile file = (MultipartFile)map.get("file");
		
		// 2. 파일 저장할 경로 만들어주기
		ServletContext context = C.context;
		System.out.println(context.getRealPath("USERPIC/"));
		String saveDirectory = context.getRealPath("USERPIC/");
		
		// 3. 파일이 있을 때와 없을 때 처리
		if(file.getOriginalFilename() == "" || file.getOriginalFilename() == null) {
			// 파일 없이 Submit 했을 때
			
		} else {
			// 파일 있을 경우
			// 4. 확장자 체크 (이미지 파일 인지 확인)
			String contentType = file.getContentType();
			if(contentType.equals("image/jpeg") || contentType.equals("image/png")) {
				// 5. 파일 경로 지정
				File saveFile = new File(saveDirectory, file.getOriginalFilename());
				try {
					// 6. 지정된 경로에 파일 저장
					file.transferTo(saveFile);
					dto.setMember_pic(file.getOriginalFilename());
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
		
		////////////////////////////////////////////////////////////
		
//		
//		if(!file.getOriginalFilename().isEmpty()) {
//			try {
//				file.transferTo(new File("C:\\tomcat\\mgb\\USERPIC", file.getOriginalFilename()));
//				dto.setMember_pic(file.getOriginalFilename());
//				System.out.println("저장 성공");
//			} catch (IllegalStateException | IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		} else {
//			System.out.println("실패");
//		}
		
		System.out.println(dto.getMember_email());
		System.out.println(dto.getMember_pic());
		System.out.println(dto.getMember_tel());
		int member_uid = (int)map.get("member_uid");
		MyPageDAO dao = C.sqlSesssion.getMapper(MyPageDAO.class);
		result = dao.mypageUpdate(member_uid, dto);
		
		System.out.println("result : " + result);
		
		model.addAttribute("result", result);
	}

}
