<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/mainpage.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/slick.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/slicktheme.css">
    <title>귤귤 플래너</title>
    <style>
    
    @import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);

	html, body {
		height: 100%;
		font-family: "Noto Sans KR";
		overflow-x: hidden; 
	}
    .slick-slide {
      margin: 0px 20px;
    }

    .slick-slide img {
      width: 100%;
    }

    .slick-prev:before,
    .slick-next:before {
      color: black;
    }


    .slick-slide {
      transition: all ease-in-out .3s;
      opacity: .2;
    }
    
    .slick-active {
      opacity: .5;
    }

    .slick-current {
      opacity: 1;
    }
    .hothot2 {
    	border: 1px solid #ebebeb;
    }
    .header-section.header-normal .menu-item {
	-webkit-box-shadow: 0px 12px 15px rgba(36, 11, 12, 0.05);
	box-shadow: 0px 12px 15px rgba(36, 11, 12, 0.05);
}
.top-nav {
	border-bottom: 1px solid #e5e5e5;
}
.top-nav .tn-left li {
	list-style: none;
	display: inline-block;
	font-size: 16px;
	color: #19191a;
	font-weight: 500;
	padding: 14px 0 12px;
	margin-right: 64px;
	position: relative;
}
.top-nav .tn-left li:after {
	position: absolute;
	right: -32px;
	top: 0;
	width: 1px;
	height: 100%;
	background: #e5e5e5;
	content: "";
}
.top-nav .tn-left li:last-child {
	margin-right: 0;
}
.top-nav .tn-left li:last-child:after {
	display: none;
}
.top-nav .tn-left li i {
	color: #dfa974;
	margin-right: 4px;
}
.top-nav .tn-right {
	text-align: right;
}
.top-nav .tn-right .top-social {
	display: inline-block;
	margin-right: 35px;
	padding: 13px 0;
}
.top-nav .tn-right .top-social a {
	display: inline-block;
	font-size: 16px;
	color: #19191a;
	margin-left: 15px;
}
.top-nav .tn-right .bk-btn {
	display: inline-block;
	font-size: 13px;
	font-weight: 700;
	padding: 16px 28px 15px;
	background: #dfa974;
	color: #ffffff;
	text-transform: uppercase;
	letter-spacing: 2px;
}
.top-nav .tn-right .language-option {
	display: inline-block;
	margin-left: 30px;
	cursor: pointer;
	padding: 13px 0px 11px;
	position: relative;
}
.top-nav .tn-right .language-option:hover .flag-dropdown {
	top: 40px;
	opacity: 1;
	visibility: visible;
}
.top-nav .tn-right .language-option img {
	height: 26px;
	width: 26px;
	border-radius: 50%;
	margin-right: 10px;
}
.top-nav .tn-right .language-option span {
	font-size: 16px;
	color: #19191a;
	text-transform: uppercase;
	font-weight: 500;
}
.top-nav .tn-right .language-option .flag-dropdown {
	position: absolute;
	left: 0;
	top: 60px;
	width: 100px;
	background: #ffffff;
	display: block;
	padding: 10px 15px;
	-webkit-box-shadow: 0px 9px 10px rgba(25, 25, 26, 0.2);
	box-shadow: 0px 9px 10px rgba(25, 25, 26, 0.2);
	opacity: 0;
	visibility: hidden;
	-webkit-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
	z-index: 99;
}
.top-nav .tn-right .language-option .flag-dropdown ul li {
	list-style: none;
	text-align: left;
}
.top-nav .tn-right .language-option .flag-dropdown ul li a {
	font-size: 14px;
	text-transform: uppercase;
	font-weight: 500;
	color: #19191a;
	-webkit-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}
.top-nav .tn-right .language-option .flag-dropdown ul li a:hover {
	color: #dfa974;
}
.menu-item {
	position: relative;
	z-index: 9;
}
.menu-item .logo {
	padding: 25px 0;
}
.menu-item .logo a {
	display: inline-block;
}
.menu-item .nav-menu {
	margin-top: 7px;
	text-align: right;
}
.menu-item .nav-menu .mainmenu {
	display: inline-block;
}
.menu-item .nav-menu .mainmenu li {
	list-style: none;
	display: inline-block;
	position: relative;
	z-index: 1;
}
.menu-item .nav-menu .mainmenu li.active a:after {
	opacity: 1;
}
.menu-item .nav-menu .mainmenu li:hover>a:after {
	opacity: 1;
}
.menu-item .nav-menu .mainmenu li:hover .dropdown {
	top: 77px;
	opacity: 1;
	visibility: visible;
}
.menu-item .nav-menu .mainmenu li a {
	font-size: 16px;
	color: #19191a;
	margin-right: 42px;
	font-weight: 500;
	display: inline-block;
	padding: 27px 0;
	position: relative;
	-webkit-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}
.menu-item .nav-menu .mainmenu li a:after {
	position: absolute;
	left: 0;
	top: 52px;
	width: 100%;
	height: 2px;
	background: #dfa974;
	content: "";
	opacity: 0;
	-webkit-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}
.menu-item .nav-menu .mainmenu li .dropdown {
	position: absolute;
	left: 0;
	top: 97px;
	width: 180px;
	background: #ffffff;
	z-index: 9;
	opacity: 0;
	visibility: hidden;
	-webkit-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
	-webkit-box-shadow: 0px 9px 15px rgba(25, 25, 26, 0.05);
	box-shadow: 0px 9px 15px rgba(25, 25, 26, 0.05);
}
.menu-item .nav-menu .mainmenu li .dropdown li {
	list-style: none;
	display: block;
}
.menu-item .nav-menu .mainmenu li .dropdown li a {
	font-size: 16px;
	color: #19191a;
	display: block;
	text-align: left;
	padding: 8px 15px;
	-webkit-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}
.menu-item .nav-menu .mainmenu li .dropdown li a:hover {
	color: #dfa974;
}
.menu-item .nav-menu .mainmenu li .dropdown li a:after {
	display: none;
}
.menu-item .nav-menu .nav-right {
	display: inline-block;
	margin-left: 43px;
	padding: 27px 0px;
}
.menu-item .nav-menu .nav-right i {
	font-size: 16px;
	color: #19191a;
	cursor: pointer;
}
.canvas-open {
	display: none;
}
.offcanvas-menu-wrapper {
	display: none;
}
.col-lg-2 {
		-ms-flex: 0 0 16.666667%;
		flex: 0 0 16.666667%;
		max-width: 16.666667%;
	}
	.col-lg-10 {
		-ms-flex: 0 0 83.333333%;
		flex: 0 0 83.333333%;
		max-width: 83.333333%;
	}
img#Myprofile {
	width: 50px  !important;
	height: 50px !important;
	border-radius: 50%  !important;
}

img#logoG {
	margin-left: 50%;
	width: 120px;
	margin-bottom: 3px;
}
/*---------------------
  Footer Section
-----------------------*/

.co-text a {
	color: #007bff;
}
.footer-section {
	padding-top: 50px;
	background: #222736;
	height: 100%;
}
.footer-section .footer-text {
	padding: 80px 0 30px;
}
.footer-section .footer-text .ft-about {
	margin-bottom: 30px;
}
.footer-section .footer-text .ft-about .logo {
	margin-bottom: 20px;
}
.footer-section .footer-text .ft-about .logo a {
	display: inline-block;
}
.footer-section .footer-text .ft-about p {
	color: #aaaab3;
	margin-bottom: 20px;
}
.footer-section .footer-text .ft-about .fa-social a {
	display: inline-block;
	height: 40px;
	width: 40px;
	font-size: 16px;
	line-height: 40px;
	text-align: center;
	color: #ffffff;
	border: 1px solid #5A4D48;
	border-radius: 50%;
	-webkit-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
	margin-right: 7px;
}
.footer-section .footer-text .ft-about .fa-social a:hover {
	background: #dfa974;
	border-color: #dfa974;
}
.footer-section .footer-text .ft-contact {
	margin-bottom: 30px;
}
.footer-section .footer-text .ft-contact h6 {
	font-size: 14px;
	color: #dfa974;
	text-transform: uppercase;
	font-weight: 700;
	letter-spacing: 3px;
	font-family: "Cabin", sans-serif;
	margin-bottom: 20px;
}
.footer-section .footer-text .ft-contact ul li {
	font-size: 16px;
	color: #aaaab3;
	line-height: 32px;
	list-style: none;
}
.footer-section .footer-text .ft-newslatter h6 {
	font-size: 14px;
	color: #dfa974;
	text-transform: uppercase;
	font-weight: 700;
	letter-spacing: 3px;
	font-family: "Cabin", sans-serif;
	margin-bottom: 20px;
}
.footer-section .footer-text .ft-newslatter p {
	color: #aaaab3;
	margin-bottom: 20px;
}
.footer-section .footer-text .ft-newslatter .fn-form {
	position: relative;
}
.footer-section .footer-text .ft-newslatter .fn-form input {
	width: 100%;
	height: 50px;
	border-radius: 2px;
	background: #393D4A;
	border: none;
	padding-left: 20px;
	font-size: 16px;
	color: #707079;
}
.footer-section .footer-text .ft-newslatter .fn-form button {
	position: absolute;
	right: 0;
	top: 0;
	font-size: 16px;
	background: #dfa974;
	color: #ffffff;
	padding: 0 16px;
	height: 50px;
	border: none;
	border-radius: 0 2px 2px 0;
}
.footer-section .copyright-option {
	background: rgba(16, 20, 31, 0.2);
	padding: 20px 0;
}
.footer-section .copyright-option ul li {
	list-style: none;
	display: inline-block;
	margin-right: 34px;
}
.footer-section .copyright-option ul li:last-child {
	margin-right: 0;
}
.footer-section .copyright-option ul li a {
	font-size: 16px;
	color: #aaaab3;
}
.footer-section .copyright-option .co-text {
	font-size: 16px;
	color: #707079;
	text-align: right;
}
.container {
	margin: 0 auto;
    max-width: 1170px;
}
.row {
    display: -ms-flexbox;
    display: flex;
    margin-left: -15px;
    margin-right: -15px;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
}
.col-lg-4 {
    -ms-flex: 0 0 33.333333%;
    flex: 0 0 33.333333%;
    max-width: 33.333333%;
}
.offset-lg-1 {
    margin-left: 8.333333%;
}
.col-lg-3 {
    -ms-flex: 0 0 25%;
    flex: 0 0 25%;
    max-width: 25%;
}
.col-lg-7 {
    -ms-flex: 0 0 58.333333%;
    flex: 0 0 58.333333%;
    max-width: 58.333333%;
}
.col-lg-5 {
    -ms-flex: 0 0 41.666667%;
    flex: 0 0 41.666667%;
    max-width: 41.666667%;
}

    </style>
</head>

<body>
   <div class="wrap">
      <c:choose>
	
		<c:when test="${not empty sessionScope.loginUid}">
			<jsp:include page="topMenuIncludeMyPage.jsp"/>
		</c:when>
		
		<c:otherwise>
			<jsp:include page="topMenuIncludeLogOut.jsp"/>
		</c:otherwise>
   	</c:choose>
        <main>
            <section class="section1">
                <div class="mgb_inner_wrap">
                    <div class="sec1_left">
                        <div class="sec1_img">
                            <img style = "height: 300px; width: 100%;"src="${pageContext.request.contextPath}/USERCSS/assets/images/main.jpg">
                        </div>
                    </div>
                    <div class="sec1_right">
                        <div>
                            <div>
                                <h3>
                                당신의 상상속 제주여행을 귤귤플래너에서 실현하세요.
                                제주 여행 맞춤 플래너와 투어 숙소등을 확인하시고 예약하세요.
                                다른 여행자들의 플래너를 확인하시고, 자신의 플래너에 도움을 받으세요.
                                </h3>
                            </div>
                            <div class="sec1_right_bot">
                                <div class="sec1_right_rw">
                                    <a href="${pageContext.request.contextPath}/plan/planner">플래너 시작</a>
                                </div>
                                <div class="sec1_right_lw">
                                    <a href="#">맞춤여행 의뢰</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="section2">
                <div class="mgb_inner_wrap">
                    <div>
                        <h3>다른 여행자들의 플래너 855,014개</h3>
                    </div>
                    <div>
                        <ul>
                            <li>최신순으로 정렬되었습니다.</li>
                        </ul>
                    </div>
                    <div class="new">
                        <ul>
                            <li id = "map0"></li>
                            <li id = "map1"><a href="#"></a></li>
                            <li id = "map2"><a href="#"></a></li>
                            <li id = "map3"><a href="#"></a></li>
                        </ul>
                       
                    </div>
                </div>
            </section>

            <section class="section3">
                <div class="mgb_inner_wrap">
                    <div>
                        <h3>투어</h3>
                        <p>별점순으로 정렬되었습니다.</p>
                    </div>
                    <div class="sale">
                        <ul>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                        </ul>
                        <ul>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                        </ul>
                    </div>
                </div>
            </section>

            <section class="section4">
                <div class="mgb_inner_wrap">
                    <div>
                        <h3>액티비티</h3>
                        <p>할인율순으로 정렬되었습니다.</p>
                    </div>
                    <div>
                        <section class="regular slider">
                            <c:forEach var="dto" items="${activ }" varStatus="status">
				                <div class="hothot2" onclick="location.href='${pageContext.request.contextPath }/user/activ/view/${dto.activ_uid }'">
					                <div class="item_img2">
					              		<img src="${dto.activ_pic }"/>
					              	</div>
					              	<div class="item_info" style="padding: 7px;">
					              		<h5 style="font-weight: bold; margin-top: 5px;">${dto.activ_name }</h5>
					              		<p class="activ_loc" style="margin-bottom: 0px;">${fn:substring(dto.activ_loc, 8, fn:length(dto.activ_loc)) }</p>
					              		<p style="margin: 20px 10px 0px 0px; height: 20px; text-align: right; font-size: 0.8em; text-decoration: line-through;"><fmt:formatNumber value="${dto.ticket_first_cost }" pattern="#,###"/></p>
					              		<p style="margin-bottom: 0px; text-align: right;"><fmt:formatNumber value="${dto.ticket_last_cost }" pattern="#,###"/>원 ~</p>
					              	</div> 
				                </div>
				    		</c:forEach>
                       </section>    
                    </div>
                    <div>
                        <h3>숙소</h3>
                        <p>할인율순으로 정렬되었습니다.</p>
                    </div>
                    <div>
                        <section class="center slider">
                            <c:forEach var="dto" items="${inn }" varStatus="status">
				                <div class="hothot2" onclick="location.href='${pageContext.request.contextPath }/user/inn/view/${dto.inn_uid }'">
					                <div class="item_img">
					              		<img src="${dto.inn_pic }"/>
					              	</div>
					              	<div class="item_info" style="padding: 7px;">
					              		<h5 style="font-weight: bold; margin-top: 5px;">
					              			<span class="sep">
	                                      		<c:if test="${dto.inn_sep == 1 }">호텔</c:if>
												<c:if test="${dto.inn_sep == 2 }">펜션</c:if>
												<c:if test="${dto.inn_sep == 3 }">리조트</c:if>
											</span>
					              		${dto.inn_name }</h5>
					              		<p class="inn_loc" style="margin-bottom: 0px;">${fn:substring(dto.inn_loc, 8, fn:length(dto.inn_loc)) }</p>
					              		<p style="height: 1.2em; margin: 0px 10px 0px 0px; text-align: right; font-size: 0.8em; text-decoration: line-through;"><fmt:formatNumber value="${dto.room_first_cost }" pattern="#,###"/></p>
					              		<p style="height: 1.5em; margin-bottom: 0px; text-align: right;"><fmt:formatNumber value="${dto.room_last_cost }" pattern="#,###"/>원 ~</p>
					              	</div> 
				                </div>
					    	</c:forEach>
                        </section>
                    </div>
                </div>
            </section>
        </main>
    	
    	<jsp:include page="./footer.jsp"/>
<!-- Footer Section End -->
   </div>
</body>
<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
  <script src="${pageContext.request.contextPath}/USERJS/slick.js" type="text/javascript" charset="utf-8"></script>
  <script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=57cb4002a8435e61d895fd45dcbcb3fe"></script>
  <script type="text/javascript">
    $(document).on('ready', function() {
      $(".regular").slick({
        dots: false,
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3,
      });

      $(".center").slick({
        dots: false,
        infinite: true,
        centerMode: true,
        slidesToShow: 4,
        slidesToScroll: 1
      });
      PlannerUid();
    });
    
    var view_planner_uid = new Array();
    // 검색되는 플래너 UID가져오기
    function PlannerUid(){
    	var url = "${pageContext.request.contextPath}/AJAXMain/listCnt";
		$.ajax({
			url : url,
			type : "GET",
			cache : false,
			success : function(data, status) {
				if (status == "success") {
					View(data);
				};
			}
		});//end ajax
    }
    
 function View(jsonObj){
		var list = jsonObj.list;
		var count = jsonObj.count;
		for (var i = 0; i < count; i++) {
			var planner_uid = list[i].planner_uid;
			descPlanner(planner_uid,i);
			view_planner_uid.push(planner_uid);
		}
	} //end 
    

    function descPlanner(planner_uid,i){
    	var url = "${pageContext.request.contextPath}/AJAXMain/list/"+planner_uid+"";
		$.ajax({
			url : url,
			type : "GET",
			cache : false,
			success : function(data, status) {
				if (status == "success") {
					updateView(data,i);
				};
			}
		});//end ajax
    }
       
    // 플래너 업데이트 
    function updateView(jsonObj,i){

    	var count = jsonObj.count;
		var list = jsonObj.list;
		var arrLat = new Array();
		var arrLng = new Array();
		var locations = new Array();
		
		
		
		
		var container = document.getElementById('map'+i+'');
		var options = {
			center : new kakao.maps.LatLng(33.377949, 126.540633),
			level : 11
		};
		var map = new kakao.maps.Map(container, options);
		
		
	
		for (var i = 0; i < count; i++) {
           	// 마커 좌표 배열담아주기
			locations.push(new kakao.maps.LatLng(
						parseFloat(list[i].local_lat),
						parseFloat(list[i].local_lng)),
			);
			
		}
		
		polyline = new kakao.maps.Polyline({
			   
		    strokeWeight: 5, // 선의 두께 입니다
		    strokeColor: '#000000', // 선의 색깔입니다
		    strokeOpacity: 0.5, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		    strokeStyle: 'solid', // 선의 스타일입니다
		    endArrow: true,
		    zIndex:20
		
		});
		
		var imageSrc = "${pageContext.request.contextPath}/USERCSS/assets/images/marker.png"

		for (var i = 0; i < locations.length; i++) {

			// 마커 이미지의 이미지 크기 입니다
			var imageSize = new kakao.maps.Size(13, 13);

			// 마커 이미지를 생성합니다    
			var markerImage = new kakao.maps.MarkerImage(imageSrc,
					imageSize);

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				zIndex: 1,
				map : map, // 마커를 표시할 지도
				position : locations[i], // 마커를 표시할 위치
				image : markerImage
			});
		
			
		}
	
		map.setZoomable(false);  
		
	} //end updateView
	
	function showDetail(index){
		alert(view_planner_uid[index]);
		location.href = "${pageContext.request.contextPath}/plan/showplanner";
	}
    
	$(document).ready(function() {
		$.ajax({
			url: "${pageContext.request.contextPath}/user/tour/ajax/starHigh/0/10",
			method: "GET",
			success: function(data) {
				var row = "<div class='sale'>";
				for (i = 0; i < data.length; i++) {
					if (i == 0 || i == 5) { row +="<ul>"; }
					row += "<li>";
					row += "<div>";
					row += "<div class='room-item'>";
					row += "<img src='" + data[i].tour_pic + "' style='width: 100%; height: 139.5px;'>";
					row += "<div class='ri-text' style='margin: 5px 0px 0px 7px'>";
					row += "<h4 style='height: 25px; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;'><a href='./user/tour/view/" + data[i].tour_uid + "'>"  + data[i].tour_name + "</a></h4>";
					row += "<h5>" + data[i].tour_cost.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원<span>/성인 1명</span></h5>";
					row += "<table style='float: left; width: 60%;'>";
					row += "<tbody>";
					row += "<tr>";
					row += "<td class='r-o'>기간:</td>";
					row += "<td style='float:right'>" + data[i].tour_period + "박 " + (parseInt(data[i].tour_period) + 1) + "일</td>";
					row += "</tr>";
					row += "<tr>";
					row += "<td class='r-o'>별점:</td>";
					row += "<td style='float:right'>" + data[i].review_star + "</td>";
					row += "</tr>";
					row += "</tbody>";
					row += "</table>";
					row += "</div>";
					row += "</div>";
					row += "</div>";
					row += "</li>";
					if (i == 4 || i == 10) { row +="</ul>"; }
				}
				row += "</div>";
				$(".sale").html(row)
			}
		})
	})
    
    
</script>
</html>