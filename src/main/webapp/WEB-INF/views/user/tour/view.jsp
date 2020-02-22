<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sona | Template</title>

    <!-- Calendar -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/USERJS/calendar.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/calendar1.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/caledner2.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/caledner3.css">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <style>
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
            width: 30%;
            margin: 0 auto;
        }
        .bd-hero-text div button {
            color: white;
            font-weight: bold;
            width: 60%;
            margin: 10px auto 0px auto;
            padding: 10px 20px;
            border: 1px solid #dfa974;
            border-radius: 5px;
            background-color: #dfa974;
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
            padding: 30px;
        }
        .modal_button div button {
            width: 20%;
            height: 35px;
            border: none;
        }
        .modal_prev button {
            margin-left: 60%;
            background-color: #fff;
        }
        .modal_next button {
            margin-left: 20%;
            color: white;
            background-color: #dfa974;
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
	<jsp:include page="../userHeader.jsp"/>
    <!-- Header End -->

    <!-- Blog Details Hero Section Begin -->
    <section class="blog-details-hero set-bg" data-setbg="${dto[0].tour_pic }">
        <div style="width: 100%;">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bd-hero-text">
                        <span>투어</span>
                        <h2 style="width: 100%">${dto[0].tour_name }</h2>
                        <ul>
                            <li class="b-time"><i class="icon_clock_alt"></i> ${dto[0].tour_period }박 ${dto[0].tour_period + 1 }일</li>
                            <li><i class='fas fa-star'></i> 9.5</li>
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
                        <div class="comment-option">
                            <h3>리뷰</h3>
                            <c:set var="total" value="0"/>
                            <c:forEach var="review" items="${review }">
                            	<c:set var="total" value="${total + review.review_star }"/>
                            </c:forEach>
                            <div class="star_avg">
                                <span><c:out value="${total / fn:length(review) }"/></span>
                            </div>
                            <h5>전체 리뷰 ${fn:length(review) }개</h5>
                            <c:forEach var="review" items="${review }">
	                            <div class="single-comment-item first-comment">
	                                <div class="sc-author">
	                                    <img src="${review.member_pic }" alt="">
	                                </div>
	                                <div class="sc-text">
	                                    <h6 style="margin-top: 7px; text-align: left;">${review.review_title }<span style="color: white; font-weight: 300; padding: 2px 5px; margin-left: 5px; background-color: rgb(255,167,38); border: 1px solid rgb(255,167,38); border-radius: 5px;">${review.review_star }</span></h6>
	                                    <div style="padding: 10px;">
		                                    <p style="font-weight: 600; left; margin-bottom: 10px;">${review.member_id }</p>
		                                    <p>${review.review_content }</p>	                                    
	                                    </div>
	                                </div>
	                            </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->

    <!-- Recommend Blog Section Begin -->
    <section class="recommend-blog-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Recommended</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="blog-item set-bg" data-setbg="img/blog/blog-1.jpg">
                        <div class="bi-text">
                            <span class="b-tag">Travel Trip</span>
                            <h4><a href="#">Tremblant In Canada</a></h4>
                            <div class="b-time"><i class="icon_clock_alt"></i> 15th April, 2019</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="blog-item set-bg" data-setbg="img/blog/blog-2.jpg">
                        <div class="bi-text">
                            <span class="b-tag">Camping</span>
                            <h4><a href="#">Choosing A Static Caravan</a></h4>
                            <div class="b-time"><i class="icon_clock_alt"></i> 15th April, 2019</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="blog-item set-bg" data-setbg="img/blog/blog-3.jpg">
                        <div class="bi-text">
                            <span class="b-tag">Event</span>
                            <h4><a href="#">Copper Canyon</a></h4>
                            <div class="b-time"><i class="icon_clock_alt"></i> 21th April, 2019</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Recommend Blog Section End -->

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
    	<form action="${pageContext.request.contextPath}/user/tour/reserve" method="POST" onsubmit="return chkSubmit()">
    		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    		<input type="hidden" name="tour_uid" value="${tour_uid }"/>
	        <div class="modal_inner">
	            <div class="modal_top">
	                <div><i class="icon_close"></i></div>
	                <h3>객실 예약</h3>
	            </div>
	            <div class="modal_description">
					<section class="dhx_sample-container">
						<div class="dhx_sample-container__widget" id="calendar"></div>
					</section>
					<label>인원 수 : <input type="text" name="book_member_cnt"></label>
	            </div>
	            <div class="modal_button row">
	                <div class="modal_prev col-sm-6">
	                    <button>prev</button>
	                </div>
	                <div class="modal_next col-sm-6">
	                    <button type="submit" onclick="updateValue()">next</button>
	                    <input class="dhx_sample-input" type="text" name="book_date" style="visibility: hidden;">
	                </div>
	            </div>
	        </div>
    	</form>
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
            })
            $(".bd-title > ul > li").eq(2).click(function() {
                $(".tour_info").css("display", "none")
                $(".comment-option").css("display", "block")
            })

            $(".modal_inner .icon_close").click(function() {
                $(".modal_layer").css("display", "none")
            })
        })
        function openModal() {
            $(".modal_layer").css("display", "block");
        }
    </script>

    <script>
		var calendar = new dhx.Calendar("calendar", {value: new Date(), css: "dhx_widget--bordered"});
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
	   		var month = parseInt(book_date.substring(3, 5))
    		var date = parseInt(book_date.substring(0, 2))
    		
    		if (year >= d.getFullYear() && month >= d.getMonth() + 1 && date > d.getDate()) {
    			$("input:text[name='book_date']").val(year + "-" + month + "-" + date)
				return true;
    		} else {
    			alert(year + "/" + month + "/" + date + " 이후로 선택해주세요")
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
        })
    </script>
</body>

</html>