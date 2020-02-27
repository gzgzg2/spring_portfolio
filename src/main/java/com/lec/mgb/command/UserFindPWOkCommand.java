package com.lec.mgb.command;

import java.io.UnsupportedEncodingException;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.MyPageInfoDTO;
import com.lec.mgb.mybatis.beans.UserFindDAO;

public class UserFindPWOkCommand implements Command {

	@Override
	public void execute(Model model) {
		UserFindDAO dao = C.sqlSesssion.getMapper(UserFindDAO.class);		
		Map<String, Object> map = model.asMap();
		String member_id = (String)map.get("member_id");
		int cnt = 0;
		
		if (member_id != null) {
			if (member_id.trim().length() > 0) {
				
				Random rnd = new Random();
				StringBuffer newPW = new StringBuffer();
				for(int i = 0; i < 20; i++){
				    if (rnd.nextBoolean()) {
				        newPW.append((char)((int)(rnd.nextInt(26))+97));
				    } else {
				        newPW.append((rnd.nextInt(10)));
				    }
				}
				
				String member_pw = newPW.toString();
				
				PasswordEncoder pw = new BCryptPasswordEncoder();
				String member_pwEncode = pw.encode(newPW.toString());
				
				cnt = dao.updateMemberPw(member_pw, member_pwEncode, member_id);
				
				if (cnt == 1) {
					MyPageInfoDTO dto = dao.selectMemberById(member_id);
					
					final String FROM = "gyurgyurplanner@gmail.com";
				    final String FROMNAME = "귤귪플래너";
				    final String TO = dto.getMember_email();
				 
				    final String SMTP_USERNAME = "gyurgyurplanner@gmail.com";
				    final String SMTP_PASSWORD = "xlawkddmschlguswls";
				    
				    final String HOST = "smtp.gmail.com";
				    final int PORT = 25;
				    
				    final String SUBJECT = "메일 제목";
				    
				    final String BODY = String.join(
				        System.getProperty("line.separator"),
				        "<h1>[귤귤 플래너] 아이디 찾기</h1>",
				        "<p>임시 비밀번호는 " + dto.getMember_pw() + " 입니다.</p>"
				    );
					
					Properties props = System.getProperties();
			        props.put("mail.transport.protocol", "smtp");
			        props.put("mail.smtp.port", PORT); 
			        props.put("mail.smtp.starttls.enable", "true");
			        props.put("mail.smtp.auth", "true");
			 
			        Session session = Session.getDefaultInstance(props);
			 
			        MimeMessage msg = new MimeMessage(session);
			        Transport transport = null;
			        try {
						msg.setFrom(new InternetAddress(FROM, FROMNAME));
				        msg.setRecipient(Message.RecipientType.TO, new InternetAddress(TO));
				        msg.setSubject(SUBJECT);
				        msg.setContent(BODY, "text/html;charset=euc-kr");
				        
				        transport = session.getTransport();
					} catch (UnsupportedEncodingException | MessagingException e) {
						e.printStackTrace();
					}
			 
			        try {
			            System.out.println("Sending...");
			            
			            transport.connect(HOST, SMTP_USERNAME, SMTP_PASSWORD);
			            transport.sendMessage(msg, msg.getAllRecipients());
			 
			            System.out.println("Email sent!");
			        } catch (Exception ex) {
			            ex.printStackTrace();
			 
			        } finally {
			            try {
							transport.close();
						} catch (MessagingException e) {
							e.printStackTrace();
						}
			        }
				}
			}
		}
		
		model.addAttribute("result", cnt);
	}

}