<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>투어 | 상세페이지</title>

    <!-- Calendar -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/USERJS/calendar.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/calendar1.css">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/e68b5cc3ca.js" crossorigin="anonymous"></script>

    <style>
    	.bd-hero-text h2 {
        	text-shadow: 0px 2px 6px grey;
        	padding: 15px 0px;
        	font-weight: bold;
        }
        
        .bd-hero-text ul li {
        	font-weight: bold;
        }
    
    	.dhx_calendar.dhx_widget.dhx_widget--bordered {
    		margin: 0 auto;
    	}
    	.btn1.point2-1.schedule_detailView {
    		display: none;
    	}
        .tour_info, .comment-option {
            padding-top: 20px;
        }
        .bd-title>ul>li {
            list-style: none;
            font-size: 1.2em;
        }

        .bd-title > ul > li {
            list-style: none;
            font-size: 1.2em;
            float: left;
            margin: 0px 20px;
        }

        .bd-title > ul > li:nth-child(1), .bd-title > ul > li:nth-child(3), .modal_layer .icon_close {
            cursor: pointer;
        }
        .bd-hero-text div {
            width: 40%;
            margin: 0 auto;
        }
        .bd-hero-text div button {
            color: white;
            font-weight: bold;
            width: 60%;
            margin: 10px auto 0px auto;
            padding: 10px 20px;
            border: 1px solid #8EC0E4;
            border-radius: 5px;
            background-color: #8EC0E4;
        }
		.bd-hero-text div button:hover {
			background-color: #66AFE6;
            border: 1px solid #66AFE6;
		}

        .modal_layer {
            display: none;
            position:fixed;
            top:0;
            left:0;
            width:100%;
            height:100%;
            background:rgba(0, 0, 0, 0.5);
            z-index: 10;
        }
        .modal_inner {
            width:600px;
            height:650px;
            margin: 3.5% auto 0px auto;
            background: #eeeeee;
            z-index: 10;
        }   
        .modal_top h3 {
            position: relative;
            bottom: 30px;
            text-align: center;
        }
        .modal_top div {
            width: 98%;
            font-size: 50px;
            text-align: right;
        }
        .modal_description {
            padding: 0px 0px 30px 0px;
        }
        .modal_button div button {
            width: 30%;
            height: 42px;
            border: none;
        }
        .modal_prev button {
            margin-left: 61%;
            background-color: #fff;
        }
        .modal_prev button:hover {
            background-color: #66AFE6;
        }
        .modal_next button {
            margin-left: 10%;
            color: white;
            background-color: #8EC0E4;
        }
        .modal_next button:hover {
            background-color: #66AFE6;
        }

        .comment-option {
            display: none;
        }

        .comment-option i {
            color: rgb(255,167,38);
        }
        .comment-option h3, .comment-option h5, .comment-option .star_avg {
            text-align: center;
        }
        .paging { text-align: center; }
        .paging p {
			text-align: center;
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
		.star_avg > span { padding-left: 5px; }
		body {overflow-x: hidden;}
		
		.member_cnt {
			padding: 10px 0px;
			width: 170px;
			margin: 0 auto;
		}
		.member_cnt span {
			float: left;
    		margin: 1px 25px 0px 0px;
		}
        .member_cnt button {
        	border: #8EC0E4 1px solid;
        	border-radius: 5px;
        	background-color: #8EC0E4;
        	padding: 0px 7px;
        	width: 26px;
        	color: white;
        	font-weight: bold;
        }
        .member_cnt button:hover {
        	background-color: #66AFE6;
       	}
        .member_cnt button[disabled='disabled'] {
        	border: #e3e3e3 1px solid;
        	border-radius: 5px;
        	background-color: #e3e3e3;
        	padding: 0px 7px;
        	width: 26px;
        	color: black;
        	font-weight: 100;
        }
        .book_member_cnt { margin: 0px 8px; }
        .member_cnt button, .member_cnt div {
            float: left;
        }
		.bd-title > ul > li { color: #AAAAAA; }
		.bd-title > ul > li:nth-child(1) { color: #212529; }
		.bd-title > ul > li:nth-child(2) { color: #212529; }
    </style>

    <!-- Css Styles -->
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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/detailN.css">
</head>

<body>
    <!-- Header Section Begin -->
	<c:choose>
	
		<c:when test="${not empty sessionScope.loginUid}">
			<jsp:include page="../userLoginHeader.jsp"/>
		</c:when>
		
		<c:otherwise>
			<jsp:include page="../userHeader.jsp"/>
		</c:otherwise>
   	</c:choose>
    <!-- Header End -->
	<c:if test="${fn:length(dto) == 0}">
		<jsp:include page="../notFound.jsp"/>
	</c:if>
	<c:if test="${fn:length(dto) >= 1}">
	<c:set var="total" value="0"/>
	<c:forEach var="review" items="${review }">
		<c:set var="total" value="${total + review.review_star }"/>
	</c:forEach>

    <!-- Blog Details Hero Section Begin -->
    <section class="blog-details-hero set-bg" data-setbg="${dto[0].tour_pic }">
        <div style="width: 100%;">
            <div style="padding: 0;" class="row">
                <div class="col-lg-12">
                    <div style="padding: 0;" class="bd-hero-text">
                        <span>투어</span>
                        <h2 style="width: 100%">${dto[0].tour_name }</h2>
                        <ul>
                            <li style="color: white;" class="b-time"><i class="far fa-calendar"></i> ${dto[0].tour_period }박 ${dto[0].tour_period + 1 }일</li>
                            <c:if test="${fn:length(review) != 0 }"><li style="color: white;"><i class='fas fa-star'></i> <fmt:formatNumber value="${total / fn:length(review) }" pattern=".0"/></li></c:if>
                        </ul>
                        <div>
                        	<c:if test="${empty sessionScope.loginUid }"><button style="background-color: #bbb; border-color: #bbb;" disabled="disabled">예약은 로그인 후 이용 가능합니다</button></c:if>
                            <c:if test="${not empty sessionScope.loginUid }"><button onclick="openModal()"> 예약 하기</button></c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Hero End -->

    <!-- Blog Details Section Begin -->
    <section class="blog-details-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="blog-details-text">
                        <div class="bd-title">
                        <div class="bd-title">
                            <ul>
                                <li>기본 루트&일정</li>
                                <li>|</li>
                                <li>리뷰</li>
                            </ul>
                        </div>
                        <div class="tour_info" style="clear: both;">
                            ${dto[0].tour_info }
                        </div>
                        <div class="comment-option" style="clear: both;">
                            <h3>리뷰</h3>
                            <div class="star_avg">
                                <span><fmt:formatNumber value="${total / fn:length(review) }" pattern=".0"/></span>
                            </div>
                            <h5 style="padding-bottom: 30px;">전체 리뷰 ${fn:length(review) }개</h5>
                            <div class="review"></div>
                            <div class="paging">
					        	<p>Page<span class="0">1</span></p>
					        	<div class="paging_button">
							        <button onclick="change(0)">◀</button>
							        <button onclick="change(1)">▶</button>
					        	</div>
					        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->

    <!-- Recommend Blog Section Begin -->
    <c:if test="${fn:length(popular) >= 3 }">
	    <section class="recommend-blog-section spad">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-12">
	                    <div class="section-title">
	                        <h2 style="font-weight: bold;">추천 숙소</h2>
	                    </div>
	                </div>
	            </div>
	            <div class="row">
	            	<c:forEach var="i" begin="0" end="2" step="1">
		                <div class="col-sm-4 recommend" onclick="location.href='${pageContext.request.contextPath}/user/inn/view/${popular[i].tour_uid }'">
		                    <div class="blog-item set-bg" data-setbg="${popular[i].tour_pic }">
		                        <div class="bi-text">
		                            <h4 style="color: white; font-weight: bold;">${popular[i].tour_name }</h4>
		                            <div class="b-time"><i class="far fa-calendar"></i> ${dto[0].tour_period }박 ${dto[0].tour_period + 1 }일</div>
		                        </div>
		                    </div>
		                </div>
					</c:forEach>
	            </div>
	        </div>
	    </section>
   	</c:if>
    <!-- Recommend Blog Section End -->
	</c:if>
	
    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="footer-text">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="ft-about">
                            <div class="logo">
                                <a href="#">
                                    <img src="img/footer-logo.png" alt="">
                                </a>
                            </div>
                            <p>We inspire and reach millions of travelers<br /> across 90 local websites</p>
                            <div class="fa-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-tripadvisor"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="ft-contact">
                            <h6>Contact Us</h6>
                            <ul>
                                <li>(12) 345 67890</li>
                                <li>info.colorlib@gmail.com</li>
                                <li>856 Cordia Extension Apt. 356, Lake, United State</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="ft-newslatter">
                            <h6>New latest</h6>
                            <p>Get the latest updates and offers.</p>
                            <form action="#" class="fn-form">
                                <input type="text" placeholder="Email">
                                <button type="submit"><i class="fa fa-send"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-option">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <ul>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy</a></li>
                            <li><a href="#">Environmental Policy</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-5">
                        <div class="co-text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <div class="modal_layer select_date">
        <div class="modal_inner">
            <div class="modal_top">
                <div><i class="icon_close"></i></div>
                <h3>투어 예약</h3>
            </div>
            <div class="modal_description">
				<section class="dhx_sample-container" style="padding-bottom: 20px;">
					<div class="dhx_sample-container__widget" id="calendar"></div>
				</section>
				<form action="${pageContext.request.contextPath}/user/tour/reserve" method="POST" onsubmit="return chkSubmit()">
					<input type="hidden" name="book_member_cnt" value="1" />				
					<div class="member_cnt">
						<span>인원 수</span>
                        <button type="button" class="ticketDec">-</button>
                        	<div class="book_member_cnt">1</div>
                        <button type="button" class="ticketInc">+</button>
                    </div>
            </div>
            <div class="modal_button row" style="padding-top: 20px;">
                <div class="modal_prev col-sm-6">
                    <button type="button" onclick="$('.modal_layer').css('display', 'none')">prev</button>
                </div>
                <div class="modal_next col-sm-6">
	    			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	    			<input type="hidden" name="tour_uid" value="${tour_uid }"/>
                    <button type="submit" onclick="updateValue()">next</button>
                    <input class="dhx_sample-input" type="text" name="book_date" style="visibility: hidden;">
                 </form>
              </div>
          </div>
      </div>
 	</div>

    <!-- Search model Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch"><i class="icon_close"></i></div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search model end -->

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
        $(document).ready(function() {
            $(".bd-title > ul > li").eq(0).click(function() {
                $(".tour_info").css("display", "block")
                $(".comment-option").css("display", "none")
                $(".bd-title > ul > li").css("color", "#AAAAAA")
                $(".bd-title > ul > li").eq(0).css("color", "#212529")
                $(".bd-title > ul > li").eq(1).css("color", "#212529")
            })
            $(".bd-title > ul > li").eq(2).click(function() {
                $(".tour_info").css("display", "none")
                $(".comment-option").css("display", "block")
                $(".bd-title > ul > li").css("color", "#AAAAAA")
                $(".bd-title > ul > li").eq(1).css("color", "#212529")
                $(".bd-title > ul > li").eq(2).css("color", "#212529")
            })

            $(".modal_inner .icon_close").click(function() {
                $(".modal_layer").css("display", "none")
                $("input:text[name='book_member_cnt']").val("1")
            })
            
            $(".ticketInc").click(function() {
            	var book_member_cnt = parseInt($("input:hidden[name='book_member_cnt']").val());
            	$("input:hidden[name='book_member_cnt']").val(book_member_cnt + 1)
            	$(this).parent().find(".book_member_cnt").text(book_member_cnt + 1)
            })
            $(".ticketDec").click(function() {
            	var book_member_cnt = parseInt($("input:hidden[name='book_member_cnt']").val());
            	
            	if (book_member_cnt == 1) {
            		$(".modal_layer").css("display", "none");
            		
            		return false;
            	}
            	
            	$("input:hidden[name='book_member_cnt']").val(book_member_cnt - 1)
            	$(this).parent().find(".book_member_cnt").text(book_member_cnt - 1)
            })
        })
        function openModal() {
            $(".modal_layer").css("display", "block");
        }
    </script>

    <script>
		var calendar = new dhx.Calendar("calendar", {value: new Date(), css: "dhx_widget--bordered", width: "360px"});
		function updateValue() {
			document.querySelector(".dhx_sample-input").value = calendar.getValue();
		}
	</script>
    
    <script>
    	function scheduleDayTab(i) {
			$(".on").removeClass("on")
    		if (i == 0) {
    			$(".date-detail").css("display", "block")
    			$(".datalisttabs li").eq(1).addClass("on")
    		} else if (i == 1) {
    			$(".date-detail").css("display", "none")
    			$(".dayArea_1").css("display", "block")
    			$(".datalisttabs li").eq(1).addClass("on")
    		} else if (i == 2) {
    			$(".date-detail").css("display", "none")
    			$(".dayArea_2").css("display", "block")
    			$(".datalisttabs li").eq(2).addClass("on")
    		} else if (i == 3) {
    			$(".date-detail").css("display", "none")
    			$(".dayArea_3").css("display", "block")
    			$(".datalisttabs li").eq(3).addClass("on")
    		}
    	}
    	
    	function chkSubmit() {
    		var d = new Date();
    		var book_date = $("input:text[name='book_date']").val();
	   		var year = parseInt("20" + book_date.substring(6))
	   		var month = parseInt(book_date.substring(3, 5).replace("0", ""))
    		var date = parseInt(book_date.substring(0, 2))
    		
    		if (year >= d.getFullYear() && ((month == d.getMonth() + 1 && date > d.getDate()) || (month > d.getMonth() + 1))) {
    			$("input:text[name='book_date']").val(year + "-" + month + "-" + date)
    		} else {
    			alert(d.getFullYear() + "/" + (d.getMonth() + 1) + "/" + d.getDate() + " 이후로 선택해주세요")
    			return false;
    		}
    		
	   		var book_member_cnt = parseInt($("input:text[name='book_member_cnt']").val().trim());
	   		if (book_member_cnt != 0) {
	   			return true;
	   		} else {
	   			alert("인원 수를 다시 입력해주세요")
	   		}
	   		
    		return false;
    	}
    	$(document).ready(function() {
        	var star = $(".star_avg span").text();
        	var icon = "";        	
        	star = Math.floor(star);
        	
        	for (i = 0; i < Math.floor(star / 2); i++) { icon += "<i class='fas fa-star'></i>"; }
        	if (star % 2 == 1) icon += "<i class='fas fa-star-half-alt'></i>";
        	icon += ("<span>" + $(".star_avg span").text() + "</span>");
        	
        	$(".star_avg").html(icon);
        	
        	star = 5 - $(".star_avg i").length;
        	for (i = 0; i < star; i++) { 
        		$(".star_avg span").before("<i class='far fa-star'></i>"); 
       		}
        	$.ajax({
    			url: "${pageContext.request.contextPath}/user/tour/ajax/review/" + ${dto[0].tour_uid } + "/0/5",
    			method: "GET",
    			success: function(data) {
    				var row = "";
    				for (i = 0; i < data.length; i++) {
    					row += "<div class='single-comment-item first-comment'>";
    					row += "<div class='sc-author'>";
	                    row += "<img src='" + data[i].member_pic + "' alt=''>";
	                    row += "</div>";
	                    row += "<div class='sc-text'>";
	                    row += "<h6 style='margin-top: 7px; text-align: left;'>" + data[i].review_title + "<span style='color: white; font-weight: 300; padding: 2px 5px; margin-left: 5px; background-color: rgb(255,167,38); border: 1px solid rgb(255,167,38); border-radius: 5px;'>" + data[i].review_star + "</span></h6>";
						row += "<div style='padding: 10px;''>";
						row += "<p style='font-weight: 600; left; margin-bottom: 10px;'>" + data[i].member_id + "</p>";
						row += "<p>" + data[i].review_content + "</p>";
						row += "</div>";
						row += "</div>";
						row += "</div>";
    				}
    				$(".review").html(row);
    				if (row.trim().length == 0) {
    	    			$(".paging").html("리뷰가 없습니다<br>리뷰를 등록해주세요");
    	    			$(".star_avg").html("");
    	    		}
    			}
    		})
        })
        
        function change(go) {
    		var curPage = parseInt($(".paging p span").text());
    		var curOption = $(".current").text();
    		
    		if (go == 0 && curPage != 1) {
    			paging((curPage * 5) - 10, 5);
   				$(".paging p span").text(curPage - 1)
    		} else if (go == 1) {
    			paging(curPage * 5, 5);
   				$(".paging p span").text(curPage + 1)
    		}
    		
    		location.href="#comment";
    	}
    	
    	function paging(writePage, page) {
        	$.ajax({
    			url: "${pageContext.request.contextPath}/user/tour/ajax/review/" + ${dto[0].tour_uid } + "/" + writePage + "/" + page,
    			method: "GET",
    			success: function(data) {
    				var row = "";
    				for (i = 0; i < data.length; i++) {
    					row += "<div class='single-comment-item first-comment'>";
    					row += "<div class='sc-author'>";
	                    row += "<img src='" + data[i].member_pic + "' alt=''>";
	                    row += "</div>";
	                    row += "<div class='sc-text'>";
	                    row += "<h6 style='margin-top: 7px; text-align: left;'>" + data[i].review_title + "<span style='color: white; font-weight: 300; padding: 2px 5px; margin-left: 5px; background-color: rgb(255,167,38); border: 1px solid rgb(255,167,38); border-radius: 5px;'>" + data[i].review_star + "</span></h6>";
						row += "<div style='padding: 10px;''>";
						row += "<p style='font-weight: 600; left; margin-bottom: 10px;'>" + data[i].member_id + "</p>";
						row += "<p>" + data[i].review_content + "</p>";
						row += "</div>";
						row += "</div>";
						row += "</div>";
    				}
    				$(".review").html(row);
    				if (row.trim().length == 0) {
    					paging(writePage - 5, 5);
    					$(".paging p span").text(writePage / 5);
    					alert("더 이상 리뷰가 없습니다");
    				}
    			}
    		})
        }
    </script>
</body>

</html>