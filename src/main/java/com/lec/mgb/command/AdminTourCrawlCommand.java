package com.lec.mgb.command;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.AdminTourDAO;
import com.lec.mgb.mybatis.beans.UserTourDTO;

public class AdminTourCrawlCommand implements Command {

	private static String URL = "https://tour.interpark.com/jeju/GetGoodsList/?cate=676&page=1&pageSize=24&keyword=&sortType=C&viewType=list&setViewType=L&startDT=undefined&nightCount=undefined";
	
	@Override
	public void execute(Model model) {
		
		AdminTourDAO dao = C.sqlSesssion.getMapper(AdminTourDAO.class);
		UserTourDTO [] tour_name = dao.selectTourName();
		
		Document doc = null;
		try {
			doc = Jsoup.connect(URL).get();
		} catch (IOException e2) {
			e2.printStackTrace();
		}
		Elements hrefEl = doc.select(".cover a");
		Elements costEl = doc.select(".won.point01");
		String [] cost = new String [costEl.size()];
		Elements dateEl = doc.select(".date");
		String [] date = new String [dateEl.size()];
		for (int i = 0; i < costEl.size(); i++) {
			cost[i] = costEl.get(i).text().replaceAll("원~", "").replaceAll(",", "");
			date[i] = dateEl.get(i).text().substring(0, dateEl.get(i).text().indexOf("박"));
		}

		for (int i = 0; i < hrefEl.size(); i++) {
			String href = "https://tour.interpark.com/" + hrefEl.get(i).attr("href");
			String BaseGoodsCD = hrefEl.get(i).attr("href").substring(hrefEl.get(i).attr("href").indexOf("BaseGoodsCd=") + 12, hrefEl.get(i).attr("href").indexOf("&"));
			String TrafficSeq = "";
			String GoodsCD = "";
			
			Document innerDoc = null;
			try {
				innerDoc = Jsoup.connect(href).get();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
			
			String title = innerDoc.selectFirst("h2 strong").text();
			
			String img = innerDoc.selectFirst("#imgGoodsDefault").attr("src");
			
			Elements scriptEl = innerDoc.select("script");
			for (int j = 0; j < scriptEl.size(); j++) {
				if (scriptEl.get(j).toString().contains("TrafficSeq")) {
					TrafficSeq = scriptEl.get(j).toString().substring(scriptEl.get(j).toString().indexOf("TrafficSeq") + 11);
					TrafficSeq = TrafficSeq.substring(0, TrafficSeq.indexOf("&"));
					break;
				}
			}
			for (int j = 0; j < scriptEl.size(); j++) {
				if (scriptEl.get(j).toString().contains("GoodsCD")) {
					GoodsCD = scriptEl.get(j).toString().substring(scriptEl.get(j).toString().indexOf("GoodsCD") + 8);
					GoodsCD = GoodsCD.substring(0, GoodsCD.indexOf("&"));
					break;
				}
			}
			
			// 정보
			String href2 = "https://tour.interpark.com/Iframe/ScheduleInfo?BaseGoodsCd=" + BaseGoodsCD + "&TrafficSeq=" + TrafficSeq + "&GoodsCD=" + GoodsCD;
			Document innerDoc2 = null;
			try {
				innerDoc2 = Jsoup.connect(href2).get();
			} catch (IOException e) {
				e.printStackTrace();
			}
			String info = innerDoc2.select("body").html();
			
			// 리뷰
//			String href3 = "https://tour.interpark.com/Iframe/Comment?BaseGoodsCD=" + BaseGoodsCD + "&GoodsCD=" + GoodsCD;
//			Document innerDoc3 = Jsoup.connect(href3).get();
//			
//			// 리뷰 제목
//			Elements reviewTitleEl = innerDoc3.select(".tit a");
//			System.out.println(reviewTitleEl.get(1).text());
			
			System.out.println("-----" + i + "-----");
			System.out.println(href);
			System.out.println(href2);
			System.out.println("title : " + title);
			System.out.println("cost : " + cost[i]);
			System.out.println("date : " + date[i]);
			System.out.println("info : " + info.substring(0, 50));
			System.out.println("img : " + img);
			
			int ifSame = 0;
			for (int j = 0; j < tour_name.length; j++) {
				if (tour_name[j].getTour_name().equals(title)) {
					dao.updateTour(cost[i], date[i], info, img, title);
					ifSame = 1;
					continue;
				}
			}
			if (ifSame == 1) continue;
			
			dao.insertTour(title, cost[i], date[i], info, img);
		}
	}

}