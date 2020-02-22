package com.lec.mgb.command;

import java.io.IOException;
import java.util.Arrays;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.AdminActivDAO;
import com.lec.mgb.mybatis.beans.UserActivDTO;

public class AdminActivCrawlCommand implements Command {

	@Override
	public void execute(Model model) {
		
		AdminActivDAO dao = C.sqlSesssion.getMapper(AdminActivDAO.class);
		
		for (int a = 0; a < 8; a++) {
			String URL = "https://www.yanolja.com/leisure/jeju/";
			if (a == 0) URL += "water";
			if (a == 1) URL += "theme";
			if (a == 2) URL += "extreme";
			if (a == 3) URL += "fishing";
			if (a == 4) URL += "experience";
			if (a == 5) URL += "show";
			if (a == 6) URL += "class";
			if (a == 7) URL += "kids";
			
			Document doc = null;
			try {
				doc = Jsoup.connect(URL).get();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
			Elements hrefEl = doc.select(".BDcrDl");
			
			for (int i = 0; i < hrefEl.size(); i++) {
				UserActivDTO [] selectActiv = dao.selectActiv();
				
				if (hrefEl.get(i).attr("href").toString().contains("allcategory")) continue;
				String href = "https://www.yanolja.com" + hrefEl.get(i).attr("href");			
				Document docInner = null;
				try {
					docInner = Jsoup.connect(href).get();
				} catch (IOException e1) {
					e1.printStackTrace();
				}
				
				// 액티비티 제목
				Elements titleEl = docInner.select("._18AEpu");
				String title = titleEl.text();
				
				// 액티비티 제목
				Elements mainPicEl = docInner.select("._1SDSx1");
				String mainPic = mainPicEl.get(0).attr("style").substring(21, mainPicEl.get(0).attr("style").length() - 1);

				// 액티비티 주소
				String loc = docInner.selectFirst("._1ClffI").text();
				
				// 액티비티 정보
				String ActivInfo = docInner.select("._3sAKHQ tbody").html();
				
				// 액티비티 정보2
				String ActivShopInfo1 = docInner.select("._1WE6QL").html();
				String ActivShopInfo2 = docInner.select("._3mYb6N").html();
				String ActivShopInfo = ActivShopInfo1 + ActivShopInfo2;
				
				String tel = "";
				
				try {
					if (ActivInfo.contains("2018/06/18/09/5b2700c9de8c20.59944837.png")) {
						tel = ActivInfo.substring(ActivInfo.indexOf("2018/06/18/09/5b2700c9de8c20.59944837.png") + 87);
						tel = tel.substring(0, tel.indexOf("</td>"));
						tel = tel.replaceAll("-", "");
					}
				} catch (StringIndexOutOfBoundsException e) {
					tel = "";
				}
				
				// 액티비티 포스터
				Elements posterEl = docInner.select("#__NEXT_DATA__");
				String poster = posterEl.html().substring(posterEl.html().indexOf("\"detail\":") + 11, posterEl.html().indexOf("\"cover\":") - 3);
				String posterTemp [] = poster.split("\",\"");
				for (int j = 0; j < posterTemp.length; j++) {					
					posterTemp[j] = new StringBuilder()
							.append("<div class='poster'><img class='QTLTNs' src='")
							.append(posterTemp[j])
							.append("'></div>").toString();
				}
				poster = "<table class='_3sAKHQ'><tbody>" + ActivInfo + "</tbody></table><hr class='_23Qcg7'><div class='BEF1x6'></div>" + Arrays.toString(posterTemp).replaceAll(", ", "").substring(1, Arrays.toString(posterTemp).replaceAll(", ", "").length() - 1);
				
				// 액티비티 티켓
				Elements ticketEl = docInner.select("._2XElG-");
				Elements ticketTitleEl = docInner.select("._112yBA");
				String [] ticketTitle = new String [ticketTitleEl.size()];
				Elements ticketFirstCostEl = docInner.select("._2vfi_c.right");
				String [] ticketFirstCost = new String [ticketFirstCostEl.size()];
				Elements ticketLastCostEl = docInner.select("._1j1iGF b");
				String [] ticketLastCost = new String [ticketLastCostEl.size()];
				Elements ticketInfoEl = docInner.select(".KDb-kn");
				String [] ticketInfo = new String [ticketInfoEl.size()];
				for (int j = 0; j < ticketEl.size(); j++) {
					// 티켓 이름
					ticketTitle[j] = ticketTitleEl.get(j).text();
					// 티켓 div 가격
					ticketFirstCost[j] = ticketFirstCostEl.get(j).html();
					if (ticketFirstCost[j].contains("<s>")) {
						ticketFirstCost[j] = ticketFirstCost[j].substring(ticketFirstCost[j].indexOf("<s>") + 3, ticketFirstCost[j].indexOf("</s>") - 1).replace("<!-- -->", "").replace(",", "").trim();
					} else {
						ticketFirstCost[j] = "";
					}
					// 티켓 할인 후 가격
					ticketLastCost[j] = ticketLastCostEl.get(j).text().replace(",", "");
					// 티켓 정보
					if (ticketInfoEl.get(j).html().contains("_1NEhuy")) {
						ticketInfo[j] = ticketInfoEl.get(j).html().substring(ticketInfoEl.get(j).html().indexOf("_1NEhuy") + 9);
						ticketInfo[j] = ticketInfo[j].substring(0, ticketInfo[j].indexOf("</li>"));
					} else {
						ticketInfo[j] = "";
					}
				}
				
				System.out.println("-----" + i + "-----");
				System.out.println("title : " + title);
				System.out.println("mainPic : " + mainPic);
				System.out.println("loc : " + loc);
				System.out.println("tel : " + tel);
				System.out.println("poster : " + poster);
				
				for (int j = 0; j < ticketEl.size(); j++) {
					System.out.println("=====" + j + "=====");
					System.out.println("ticketTitle : " + ticketTitle[j]);
					System.out.println("ticketFirstCost : " + ticketFirstCost[j]);
					System.out.println("ticketLastCost : " + ticketLastCost[j]);
					System.out.println("ticketInfo : " + ticketInfo[j]);
				}
				
				int ifSame = 0;
				for (int j = 0; j < selectActiv.length; j++) {
					if (selectActiv[j].getActiv_name().equals(title)) {
						if (tel.trim().length() == 0) {
							dao.updateActiv(loc, poster, ActivShopInfo, mainPic, null, title);
						} else {
							dao.updateActiv(loc, poster, ActivShopInfo, mainPic, tel, title);				
						}
						ifSame = 1;
						continue;
					}
				}
				if (ifSame == 1) {
					for (int j = 0; j < ticketTitle.length; j++) {
						UserActivDTO dto = dao.selectTicket(ticketTitle[j], selectActiv[i].getActiv_uid());
						if (dto != null) {
							if (ticketFirstCost[j].trim().length() == 0) {
								dao.updateTicket("0", ticketLastCost[j], ticketInfo[j], ticketTitle[j]);
							} else {
								dao.updateTicket(ticketFirstCost[j], ticketLastCost[j], ticketInfo[j], ticketTitle[j]);								
							}
						}
					}
					
					continue;
				}
				if (tel.trim().length() == 0) {
					dao.insertActiv(title, loc, poster, ActivShopInfo, mainPic, null);
				} else {
					dao.insertActiv(title, loc, poster, ActivShopInfo, mainPic, tel);					
				}
				
				int activ_uid = dao.selectActivUid().getActiv_uid();
				for (int j = 0; j < ticketEl.size(); j++) {
					if (ticketFirstCost[j].trim().length() == 0) {
						dao.insertTicket(ticketTitle[j], "0", ticketLastCost[j], ticketInfo[j], activ_uid);						
					} else {
						dao.insertTicket(ticketTitle[j], ticketFirstCost[j], ticketLastCost[j], ticketInfo[j], activ_uid);						
					}
				}
			}
		}
	}

}