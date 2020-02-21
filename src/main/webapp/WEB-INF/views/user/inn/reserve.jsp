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
	<script type="text/javascript" src="./calendar_trial/codebase/calendar.js?v=6.4.1"></script>
	<link rel="stylesheet" href="./calendar_trial/codebase/calendar.css?v=6.4.1">
	<link rel="stylesheet" href="./calendar_trial/samples/common/index.css?v=6.4.1">
	<link rel="stylesheet" href="./calendar_trial/samples/common/calendar.css?v=6.4.1">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

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

    <style>
        .reserve > form > div {
            width: 80%;
            margin: 0 auto;

        }
        .reserve > div > h4 {
        	margin-bottom: 8px;
        }
        .reserve {
            height: 800px;
            margin-bottom: 200px;
            background-color: #eee;
        }
        .reserve .title {
            padding: 50px 0px 20px 0px;
            margin-bottom: 20px;
            border-bottom: 3px solid #bbb;
        }
        .reserve .title h2 { font-weight: bold; }
        h5 {
            font-weight: bold;
            padding: 10px;
        }
        label {
            padding: 0px 0px 5px 15px;
            width: 100%;
        }
        .term > label > button {
            color: white;
            width: 100%;
            height: 45px;
            border: none;
            background-color: #dfa974;

        }
        
        .inn_name, .room_name, .room_price {
            padding: 25px;
        }
        .side > div > p {
            padding-bottom: 5px;
        }

        .res_button button {
            width: 100%;
            padding: 17px;
            border: none;
            color: white;
            background-color: #dfa974;
            vertical-align: bottom;
        }
    </style>
</head>

<body>

	<jsp:include page="../userHeader.jsp"/>
	
    <!-- Blog Details Hero End -->

    <!-- Blog Details Section Begin -->
    <section class="blog-details-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="blog-details-text">
                        <div class="reserve">
                            <form action="${pageContext.request.contextPath}/user/inn/check" method="POST" onsubmit="return chkSubmit()">
                            	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                <div class="title">
                                    <h2>액티비티 예약</h2>
                                </div>
                                <div class="info">
                                    <input type="hidden" name="book_name" value="${dto.inn_name } - ${dto.room_name }" />
                                    <input type="hidden" name="book_cost" value="${dto.room_last_cost }" />
                                    <input type="hidden" name="member_uid" value="${member_uid }" />
                                    <input type="hidden" name="room_uid" value="${dto.room_uid }" />
                                    <h5>예약자 정보</h5>
                                    <label>
                                     	예약자 이름<br>
                                        <input type="text" name="book_member_name" value="">
                                    </label>
                                    <label>
	                                    <input type="checkbox" name="same_member_name"/>
	                                                                               사용자 정보와 같습니다.
                                    </label>
                                    <label>
                                      	예약자 핸드폰 <br>
                                        <input type="text" name="book_member_tel" value="">
                                        <button>휴대폰 인증</button>
                                    </label>
                                    <label>
                                        <input type="text">
                                        <button>인증번호 확인</button>
                                    </label>
                                    <label>
	                                    <input type="checkbox" name="same_member_tel"/>
	                                                                               사용자 정보와 같습니다.
                                    </label>
                                </div>
                                <div class="term">
                                    <h5>이용 약관</h5>
                                    <label>
                                        <input type="checkbox" name="term_all">
                                        <strong>전체 동의</strong>
                                    </label>
                                    <label>
                                        <input type="checkbox" name="term1">
                                     	숙소이용규칙 및 취소/환불규정 동의 (필수)
                                    </label>
                                    <label>
                                        <input type="checkbox" name="term2">
                                                                                        개인정보 수집 및 이용 동의 (필수)
                                    </label>
                                    <label>
                                        <input type="checkbox" name="term3">
                                                                                         만 14세 이상입니다. (필수)
                                    </label>
                                    <label><button type="submit">예약 하기</button> </label>
                                </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-lg-4">
	                    <div class="reserve side" style="height: auto;">
	                        <div class="inn_name">
	                            <h4>숙소 이름</h4>
	                            <p>${dto.inn_name }<br>${dto.room_name }</p>
	                        </div>
	                        <div class="room_name">
	                            <h4>객실 타입</h4>
	                            <p>
									<c:if test="${dto.inn_sep == 1 }">호텔</c:if>
									<c:if test="${dto.inn_sep == 2 }">펜션</c:if>
									<c:if test="${dto.inn_sep == 3 }">리조트</c:if>
								</p>
	                        </div>
	                        <div class="room_price">
	                            <h4>총가격</h4>
	                            <p>${dto.room_last_cost }</p>
	                        </div>
	                        <div class="res_button">
	                            <button type="submit">예약 하기</button>
	                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

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
                        <div class="co-text">
                            <p>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;
                                <script>document.write(new Date().getFullYear());</script> All rights reserved | This
                                template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a
                                    href="https://colorlib.com" target="_blank">Colorlib</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
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
    		$("input:checkbox[name='same_member_name']").click(function() {
    			if ($("input:checkbox[name='same_member_name']").prop("checked")) {
    				$("input:text[name='book_member_name']").val("${member.member_name }").prop("readonly", true).css("background-color", "#fcfcfc")
    			} else {
    				$("input:text[name='book_member_name']").val("").prop("readonly", false).css("background-color", "white")
    			}
    		})
    		$("input:checkbox[name='same_member_tel']").click(function() {
    			if ($("input:checkbox[name='same_member_tel']").prop("checked")) {
    				$("input:text[name='book_member_tel']").val("${member.member_tel }").prop("readonly", true).css("background-color", "#fcfcfc")
    			} else {
    				$("input:text[name='book_member_tel']").val("").prop("readonly", false).css("background-color", "white")
    			}
    		})
    		$("input:checkbox[name='term_all']").click(function() {
    			if ($("input:checkbox[name='term_all']").prop("checked")) {
    				$(".term").find("input:checkbox").prop("checked", true)	
    			} else {
    				$(".term").find("input:checkbox").prop("checked", false)
    			}
    		})
    	})
    	function chkSubmit() {
    		if (!$("input:text[name='book_member_name']").val().trim().length == 0 &&
    			!$("input:text[name='book_member_tel']").val().trim().length == 0 &&
    			$("input:checkbox[name='term1']").prop("checked") &&
    			$("input:checkbox[name='term2']").prop("checked") &&
    			$("input:checkbox[name='term3']").prop("checked")) {
				return true;
    		}
    		
    		if ($("input:text[name='book_member_name']").val().trim().length == 0) {
    			$("input:text[name='book_member_name']").focus()
    		} else if ($("input:text[name='book_member_tel']").val().trim().length == 0) {
	    		$("input:text[name='book_member_tel']").focus()
    		}
    		
    		return false;
    	}
    </script>

</body>

</html>