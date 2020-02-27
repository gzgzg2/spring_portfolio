package com.lec.mgb.command;

import java.io.UnsupportedEncodingException;
import java.util.Map;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserFindDAO;

public class UserFindIDOkCommand implements Command {

	@Override
	public void execute(Model model) {
		UserFindDAO dao = C.sqlSesssion.getMapper(UserFindDAO.class);		
		Map<String, Object> map = model.asMap();
		String member_name = (String)map.get("member_name");
		String member_email = (String)map.get("member_email");
		
		System.out.println(member_name);
		System.out.println(member_email);
		
		String member_id = dao.selectMemberByNameAndEmail(member_name, member_email);

		if (member_id != null) {
			if (member_id.trim().length() > 0) {
				
				final String FROM = "gyurgyurplanner@gmail.com";
			    final String FROMNAME = "귤귪플래너";
			    final String TO = member_email;
			 
			    final String SMTP_USERNAME = "gyurgyurplanner@gmail.com";
			    final String SMTP_PASSWORD = "xlawkddmschlguswls";
			    
			    final String HOST = "smtp.gmail.com";
			    final int PORT = 25;
			    
			    final String SUBJECT = "메일 제목";
			    
			    final String BODY = String.join(
			        System.getProperty("line.separator"),
			        "<h1>[귤귤 플래너] 아이디 찾기</h1>",
			        "<p>당신의 아이디는 " + member_id + " 입니다.</p>"
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
		
		model.addAttribute("result", member_id);
	}

}