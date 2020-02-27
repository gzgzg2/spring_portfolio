<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sona | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/style_rami.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/elegant-icons.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/flaticon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/nice-select.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/jquery-ui.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/slicknav.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/style.css">
    <script src="https://kit.fontawesome.com/e68b5cc3ca.js" crossorigin="anonymous"></script>
    
    <style>
    	.nice-select {
			width: 100%;
			margin: 30px 0px 20px 0px;
		}
		
		.paging p {
			text-align: center;
			padding-top: 700px;
		}
		.paging > p > span { padding-left: 5px; }
		.paging_button {
			width: 62px;
			margin: 0 auto;
		}
		.paging_button button {
			border: none;
			background-color: white;
		}
    	.reserve { width: 85%; margin: 0 auto; }
    	.reserve_row { margin: 20px 0px; }
    	.item { 
    		width: 45%;
    		float: left;
    		border: 3px solid #ccc;
    		border-radius: 15px;
    		margin: 7px;
    	}
    	.item > div { padding: 15px; }
    	.item_header { height: 80px; background-color: #ccc; }
    	.item_header h5 { font-size: 1.2em; font-weight: bold; }
    	.item_header h6 { font-weight: bold; margin-top: 5px; }
    	.item_body { margin: 0px 10px; }
    	.item_body table { width: 100%; }
    	.item_body td  { text-align: right; }
    	.item_footer {
    		width: 80%;
    		margin: 0 auto;
    	}
    	.item_footer button {
    		padding: 5px 10px;
    		margin-bottom: 20px;
    	}
    </style>
</head>

<body>
    <c:choose>
		<c:when test="${not empty sessionScope.loginUid}">
			<jsp:include page="../topMenuIncludeMyPage.jsp"/>
		</c:when>
		
		<c:otherwise>
			<jsp:include page="../topMenuIncludeMyPage.jsp"/>
		</c:otherwise>
   	</c:choose>

   <section id="member" style="height: 100%;">
       <div id="memDiv">
           <h2 id="memberH2">마이페이지</h2>
           <div id="side">
                <nav id="sidenav">
                    <ul id="sideul">
                        <li><a href="">개인정보</a></li>
                        <li><a href="">리뷰관리</a></li>
                        <li><a href="">예약관리</a></li>
                        <li><a href="">내플래너</a></li>
                    </ul>
                </nav>
            </div>

            <div id="memberForm">
                <h2 id="frmH2">예약 관리</h2>
                <div style="width: 85%; margin: 0 auto;">
                	<select name="orderBy">
						<option value="dateHigh">최근 예약 순</option>
						<option value="dateLow">오래된 예약 순</option>
					</select>
                </div>
                <div class="reserve"></div>
                <div class="paging" style="width: 100%">
		        	<p>Page<span class="0">1</span></p>
		        	<div class="paging_button">
				        <button onclick="change(0)">◀</button>
				        <button onclick="change(1)">▶</button>
		        	</div>
		        </div>
            </div>
        </div>
   </section>

    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/USERJS/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/main.js"></script>
    
    <script>
	    function dateHigh(page, viewPage) {
			$.ajax({
				url: "${pageContext.request.contextPath}/user/mypage/ajax/reserve/dateHigh/${sessionScope.loginUid }/" + page + "/" + viewPage,
				method: "GET",
				success: function(data) {
					var row = ""
					for (i = 1; i <= data.length; i++) {
						if (i == 1 || i % 2 == 1) {
							row += "<div class='reserve_row'>"
						}
						if (i % 2 == 1) {
							row += "<div class='item'>"
						} else {
							row += "<div class='item' style='float: right'>"	
						}
            			row += "<div class='item_header'>"
            			row += "<h5>" + data[i - 1].book_name + "</h5>"
            			row += "</div>"
            			row += "<div class='item_body'>"
            			row += "<table>"
            			row += "<tr>"
            			row += "<th>예약자 이름</th>"
            			row += "<td>"
            			row += data[i - 1].book_member_name
            			row += "</td>"
            			row += "</tr>"
            			row += "<tr>"
           				row += "<th>예약자 번호</th>"
               			row += "<td>"
                   		row += data[i - 1].book_member_tel.toString().replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3")
               			row += "</td>"
            			row += "</tr>"
            			row += "<tr>"
          				row += "<th>인원 수</th>"
              			row += "<td>"
              			row += data[i - 1].book_member_cnt
              			row += "명</td>"
            			row += "</tr>"
            			row += "<tr>"
          				row += "<th>총 가격</th>"
              			row += "<td>"
               			row += data[i - 1].book_cost.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
              			row += "</td>"
            			row += "</tr>"
            			row += "</table>"
            			row += "</div>"
            			row += "<div class='item_footer'>"
         				row += "<form action='${pageContext.request.contextPath}/user/mypage/mypageReviewWrite' method='post'>"
               			row += "<input type='hidden' name='${_csrf.parameterName}' value='${_csrf.token}'/>"
               			row += "<button type='submit' style='float: left;'>리뷰 쓰기</button>"
               			row += "<input type='hidden' name='book_uid' value='" + data[i - 1].book_uid + "'>"
               			row += "</form>"
       					row += "<form action='${pageContext.request.contextPath}/user/mypage/mypageReserveDeleteOk' method='post'>"
              			row += "<input type='hidden' name='${_csrf.parameterName}' value='${_csrf.token}'/>"
             			row += "<button type='submit' style='float: right;'>예약 취소</button>"
               			row += "<input type='hidden' name='book_uid' value='" + data[i - 1].book_uid + "'>"
               			row += "</form>"
            			row += "</div>"
            			row += "</div>"
           				if (i % 2 == 0) { row += "</div>" }
					}
					$(".reserve").html(row);
					if (row.length == 0) {
						dateHigh(page - 4, viewPage)
						$(".paging p span").text(page / 4)
						alert("더 이상 예약이 없습니다")
					}
				}
			})
		}
	    
	    function dateLow(page, viewPage) {
			$.ajax({
				url: "${pageContext.request.contextPath}/user/mypage/ajax/reserve/dateLow/${sessionScope.loginUid }/" + page + "/" + viewPage,
				method: "GET",
				success: function(data) {
					var row = ""
					for (i = 1; i <= data.length; i++) {
						if (i == 1 || i % 2 == 1) {
							row += "<div class='reserve_row'>"
						}
						if (i % 2 == 1) {
							row += "<div class='item'>"
						} else {
							row += "<div class='item' style='float: right'>"	
						}
            			row += "<div class='item_header'>"
            			row += "<h5>" + data[i - 1].book_name + "</h5>"
            			row += "</div>"
            			row += "<div class='item_body'>"
            			row += "<table>"
            			row += "<tr>"
            			row += "<th>예약자 이름</th>"
            			row += "<td>"
            			row += data[i - 1].book_member_name
            			row += "</td>"
            			row += "</tr>"
            			row += "<tr>"
           				row += "<th>예약자 번호</th>"
               			row += "<td>"
                   		row += data[i - 1].book_member_tel.toString().replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3")
               			row += "</td>"
            			row += "</tr>"
            			row += "<tr>"
          				row += "<th>인원 수</th>"
              			row += "<td>"
              			row += data[i - 1].book_member_cnt
              			row += "명</td>"
            			row += "</tr>"
            			row += "<tr>"
          				row += "<th>총 가격</th>"
              			row += "<td>"
               			row += data[i - 1].book_cost.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
              			row += "</td>"
            			row += "</tr>"
            			row += "</table>"
            			row += "</div>"
            			row += "<div class='item_footer'>"
            			row += "<form action='${pageContext.request.contextPath}/user/mypage/mypageReviewWrite' method='post'>"
            			row += "<input type='hidden' name='${_csrf.parameterName}' value='${_csrf.token}'/>"
              			row += "<button type='submit' style='float: left;'>리뷰 쓰기</button>"
              			row += "<input type='hidden' name='book_uid' value='" + data[i - 1].book_uid + "'>"
              			row += "</form>"
        				row += "<form action='${pageContext.request.contextPath}/user/mypage/mypageReserveDeleteOk' method='post'>"
              			row += "<input type='hidden' name='${_csrf.parameterName}' value='${_csrf.token}'/>"
             			row += "<button type='submit' style='float: right;'>예약 취소</button>"
              			row += "<input type='hidden' name='book_uid' value='" + data[i - 1].book_uid + "'>"
               			row += "</form>"
            			row += "</div>"
            			row += "</div>"
           				if (i % 2 == 0) { row += "</div>" }
					}
					$(".reserve").html(row);
					if (row.length == 0) {
						dateLow(page - 4, viewPage)
						$(".paging p span").text(page / 4)
						alert("더 이상 예약이 없습니다")
					}
				}
			})
		}
	    
	    function change(go) {
    		var curPage = parseInt($(".paging p span").text());
    		var curOption = $(".current").text();
    		
    		if (go == 0 && curPage != 1) {
    			if (curOption === "최근 예약 순") {
    				dateHigh((curPage * 4) - 8, 4);
    			} else if (curOption === "오래된 예약 순") {
    				dateLow((curPage * 4) - 8, 4);
    			}
   				$(".paging p span").text(curPage - 1)
    		} else if (go == 1) {
    			if (curOption === "최근 예약 순") {
    				dateHigh((curPage * 4), 4);
    			} else if (curOption === "오래된 예약 순") {
    				dateLow((curPage * 4), 4);
    			}
   				$(".paging p span").text(curPage + 1)
    		}
    	}
    
    	$(document).ready(function() {
    		$("li[data-value='dateHigh']").click(function() {
    			$(".paging p span").text(1)
    			dateHigh(0, 4);
    		})
    		$("li[data-value='dateLow']").click(function() {
    			$(".paging p span").text(1)
    			dateLow(0, 4);
    		})
    		
    		$.ajax({
				url: "${pageContext.request.contextPath}/user/mypage/ajax/reserve/dateLow/${sessionScope.loginUid }/0/4",
				method: "GET",
				success: function(data) {
					var row = ""
					for (i = 1; i <= data.length; i++) {
						if (i == 1 || i % 2 == 1) {
							row += "<div class='reserve_row'>"
						}
						if (i % 2 == 1) {
							row += "<div class='item'>"
						} else {
							row += "<div class='item' style='float: right'>"	
						}
            			row += "<div class='item_header'>"
            			row += "<h5>" + data[i - 1].book_name + "</h5>"
            			row += "</div>"
            			row += "<div class='item_body'>"
            			row += "<table>"
            			row += "<tr>"
            			row += "<th>예약자 이름</th>"
            			row += "<td>"
            			row += data[i - 1].book_member_name
            			row += "</td>"
            			row += "</tr>"
            			row += "<tr>"
           				row += "<th>예약자 번호</th>"
               			row += "<td>"
               			row += data[i - 1].book_member_tel.toString().replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3")
               			row += "</td>"
            			row += "</tr>"
            			row += "<tr>"
          				row += "<th>인원 수</th>"
              			row += "<td>"
              			row += data[i - 1].book_member_cnt
              			row += "명</td>"
            			row += "</tr>"
            			row += "<tr>"
          				row += "<th>총 가격</th>"
              			row += "<td>"
              			row += data[i - 1].book_cost.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
              			row += "</td>"
            			row += "</tr>"
            			row += "</table>"
            			row += "</div>"
            			row += "<div class='item_footer'>"
            			row += "<form action='${pageContext.request.contextPath}/user/mypage/mypageReviewWrite' method='post'>"
            			row += "<input type='hidden' name='${_csrf.parameterName}' value='${_csrf.token}'/>"
              			row += "<button type='submit' style='float: left;'>리뷰 쓰기</button>"
              			row += "<input type='hidden' name='book_uid' value='" + data[i - 1].book_uid + "'>"
              			row += "</form>"
        				row += "<form action='${pageContext.request.contextPath}/user/mypage/mypageReserveDeleteOk' method='post'>"
              			row += "<input type='hidden' name='${_csrf.parameterName}' value='${_csrf.token}'/>"
             			row += "<button type='submit' style='float: right;'>예약 취소</button>"
              			row += "<input type='hidden' name='book_uid' value='" + data[i - 1].book_uid + "'>"
               			row += "</form>"
            			row += "</div>"
            			row += "</div>"
           				if (i % 2 == 0) { row += "</div>" }
					}
					$(".reserve").html(row);
					if (row.length == 0) {
						$(".reserve").html("<p style='padding-top: 2.5%; padding-left: 35%; font-size: 1.5em;'>예약이 아직 없습니다</p>");
						$(".paging").html("");
					}
				}
			})
    	})
    </script>
</body>

</html>