package com.lec.mgb.command;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.concurrent.ExecutionException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.AdminInnDAO;
import com.lec.mgb.mybatis.beans.UserInnDTO;

public class AdminInnCrawlCommand implements Command {

	private static String URL = "";
	
	public static String unicodeConvert(String str) {
        StringBuilder sb = new StringBuilder();
        char ch;
        int len = str.length();
        for (int i = 0; i < len; i++) {
            ch = str.charAt(i);
            if (ch == '\\' && str.charAt(i+1) == 'u') {
                sb.append((char) Integer.parseInt(str.substring(i+2, i+6), 16));
                i+=5;
                continue;
            }
            sb.append(ch);
        }
        return sb.toString();
    }
	
	@Override
	public void execute(Model model) {
		
		AdminInnDAO dao = C.sqlSesssion.getMapper(AdminInnDAO.class);
		
		int page = 0;
		int inn_uid = 0;
		
		for (int a = 0; a < 3; a++) {
			URL = "https://www.goodchoice.kr/product/search/";
			int sep = 0;
			if (a == 0) {
				URL += "2/2005";  // 호텔
				sep = 1;
			}
			if (a == 1) {
				URL += "3/3005";  // 펜션
				sep = 2;
			}
			if (a == 2) {
				URL += "4/4004";  // 리조트
				sep = 3;
			}
			
			Document doc = null;
			try {
				doc = Jsoup.connect(URL).get();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
			Elements hrefEl = doc.select(".list_2 a");
			
			for (int i = 0; i < 30; i++) {
				UserInnDTO [] inn_name = dao.selectInn();
				
				String href = hrefEl.get(i).attr("href");
				Document docInner = null;
				try {
					docInner = Jsoup.connect(href).get();
				} catch (IOException e1) {
					e1.printStackTrace();
				}
				
				// 숙소 제목
				Elements titleEl = docInner.select("h2");
				String title = titleEl.text();
				
				// 숙소 주소
				Elements addressEl = docInner.select(".address");
				String address = addressEl.text();
				
				// 사장님 한마디
				Elements commentEl = docInner.select(".comment div");
				String comment = commentEl.html();
				
				// 숙소 정보
				Elements innInfoEl = docInner.select(".default_info");
				String innInfo = innInfoEl.html();
				
				Elements innPicEl = docInner.select(".gallery-top img");
				String innPic = innPicEl.get(0).attr("data-src");
				System.out.println("innPic : " + innPic);
				
				// 객실 사진
				Elements roomTitleEl = docInner.select(".room .title");
				String [] roomTitle = new String [roomTitleEl.size()];
				for (int j = 0; j < roomTitleEl.size(); j++) {
					roomTitle[j] = roomTitleEl.get(j).text();
				}
				
				// 객실 사진
				Elements roomPicEl = docInner.select(".pic_view img");
				String [] roomPic = new String [roomPicEl.size()];
				for (int j = 0; j < roomPicEl.size(); j++) {
					roomPic[j] = roomPicEl.get(j).attr("data-original");
				}
				
				// 객실 가격
				Elements roomPriceEl = docInner.select(".price p:nth-child(2)");
				Elements roomOldPriceEl = docInner.select(".price p:nth-child(1)");
				String [] roomPrice = new String [roomPriceEl.size()];
				String [] roomOldPrice = new String [roomPriceEl.size()];
				for (int j = 0; j < roomPriceEl.size(); j++) {
					if (roomPriceEl.get(j).text().contains("확인")) {
						roomPrice[j] = "0";
						continue;
					}
					roomPrice[j] = roomPriceEl.get(j).text().replaceAll(",", "").replaceAll("원", "");
					if (roomOldPriceEl.get(j).text().contains("남은")) {
						roomOldPrice[j] = "0";
						continue;
					}
					roomOldPrice[j] = roomOldPriceEl.get(j).text().replaceAll(",", "").replaceAll("원", "");
				}
				
				int ifSame = 0;
				
				for (int j = 0; j < inn_name.length; j++) {
					if (inn_name[j].getInn_name().equals(title)) {
						ifSame = 1;
						continue;
					}
				}
				
				if (ifSame == 1) {
					dao.updateInn(address, comment, innInfo, innPic, title);
					continue;
				}
				
				System.out.println("href 				: " + href);
				System.out.println("title 				: " + title);
				System.out.println("address 			: " + address);
				System.out.println("comment 			: " + comment);
				System.out.println("innPic 				: " + innPic);
				System.out.println("innInfo 			: " + innInfo.substring(0, 50));
				for (int j = 0; j < roomTitle.length; j++) {
					System.out.println("roomTitle			: " + roomTitle[j]);
					System.out.println("roomPic				: " + roomPic[j]);
					System.out.println("roomPrice			: " + roomPrice[j]);
					System.out.println("roomOldPrice			: " + roomOldPrice[j]);
				}
				
				dao.insertInn(title, address, comment, innInfo, innPic, sep);
				
				inn_uid = dao.selectInnUid().getInn_uid();
				
				for (int j = 0; j < roomTitle.length; j++) {
					if (roomOldPrice[j] != null) {
						dao.insertRoom(roomTitle[j], roomOldPrice[j], roomPic[j], roomPrice[j], inn_uid);						
					} else {
						dao.insertRoom(roomTitle[j], "0", roomPic[j], roomPrice[j], inn_uid);
					}
				}
				// 리뷰
				String ano = href.substring(href.indexOf("ano"), href.indexOf("&"));
				String reviewHref = "https://www.goodchoice.kr/product/get_review_non?" + ano + "&page=";
				String ReviewEl = null;
				
				for (int j = 1; j <= 5; j++) {
					Document docReview = null;
					try {
						docReview = Jsoup.connect(reviewHref + j).header("content-type", "text/html;charset=UTF-8").get();
					} catch (IOException e1) {
						e1.printStackTrace();
					}
					
					ReviewEl = docReview.selectFirst("body").text();
					ReviewEl = unicodeConvert(ReviewEl);
					
					try {
						ReviewEl = ReviewEl.substring(ReviewEl.indexOf("items") + 8, ReviewEl.indexOf("aep_imgpath"));
					} catch (Exception e) {
						continue;
					}
					String [] ReviewItem = ReviewEl.split("]},");
					
					System.out.println(ReviewItem.length);
					
					String [] ReviewTitle = new String[ReviewItem.length];
					String [] ReviewStar = new String[ReviewItem.length];
					String [] ReviewInn = new String[ReviewItem.length];
					String [] ReviewWriter = new String[ReviewItem.length];
					String [] ReviewContent = new String[ReviewItem.length];
					String [] book_name = new String[ReviewItem.length];
					
					for (int l = 0; l < ReviewItem.length; l++) {
						System.out.println(ReviewItem[l]);
						ReviewTitle[l] =  ReviewItem[l].substring(ReviewItem[l].indexOf("epilrate_textinfo") + 20);
						ReviewTitle[l] =  ReviewTitle[l].substring(0, ReviewTitle[l].indexOf("\",\""));
						book_name[l] = ReviewItem[l].substring(ReviewItem[l].indexOf("armgname") + 11);
						book_name[l] =  book_name[l].substring(0, book_name[l].indexOf("객실") - 1);
						ReviewStar[l] = ReviewItem[l].substring(ReviewItem[l].indexOf("epilrate") + 10);
						ReviewStar[l] = ReviewStar[l].substring(0, ReviewStar[l].indexOf(",\""));
						if (ReviewStar[l].contains(".")) ReviewStar[l] = ReviewStar[l].substring(0, ReviewStar[l].indexOf("."));
						ReviewWriter[l] = ReviewItem[l].substring(ReviewItem[l].indexOf("unick") + 8);
						ReviewWriter[l] = ReviewWriter[l].substring(0, ReviewWriter[l].indexOf("\",\""));
						ReviewContent[l] = ReviewItem[l].substring(ReviewItem[l].indexOf("aepcont") + 10);
						ReviewContent[l] = ReviewContent[l].substring(0, ReviewContent[l].indexOf("\",\""));

						System.out.println(l + "번 째 리뷰");
						System.out.println("ReviewTitle : " + ReviewTitle[l]);
						System.out.println("ReviewStar : " + ReviewStar[l]);
						System.out.println("ReviewWriter : " + ReviewWriter[l]);
						System.out.println("ReviewContent : " + ReviewContent[l].replaceAll("\\\\n", "<br>"));
						System.out.println("book_name : " + book_name[l]);
						
						int room_uid = dao.selectRoomUid(inn_uid).getRoom_uid();
						
						dao.insertBook(book_name[l], room_uid, ReviewWriter[l]);
						
						int book_uid = dao.selectBookUid().getBook_uid();
						
						try {
							dao.insertReview(ReviewTitle[l], ReviewStar[l], ReviewContent[l].replaceAll("\\\\n", "<br>"), ReviewWriter[l], book_uid);
						} catch (Exception e) {
							continue;
						}
					}
				}
			}
		}
	}
}