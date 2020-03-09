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
    <title>숙소 | 예약 확인</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <style>
        .modal_layer {
            position:absolute;
            top:0;
            left:0;
            width:100%;
            height:100%;
        }
        .modal_inner {
            width:600px;
            height:650px;
            margin: 200px auto 0px auto;
            background: #eeeeee;
            z-index: 10;
        }   
        .modal_top h3 {
            padding-top: 20px;
            text-align: center;
        }
        .modal_top span {
            position: absolute;
            top: 200px;
            margin-left: 540px;
            font-size: 50px;
        }
        .modal_description {
            background-color: #eee;
            padding: 30px;
        }
        .modal_button div {
            width: 70%;
            margin: 0 auto;
        }
        .modal_button div button {
            color: white;
            background-color: #8EC0E4;
            width: 100%;
            height: 45px;
            border: none;
        }
        .modal_button div button:ㅙㅍㄷㄱ {
            background-color: #6AAFE6;
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
</head>

<body>
    <c:choose>
	
		<c:when test="${not empty sessionScope.loginUid}">
			<jsp:include page="../userLoginHeader.jsp"/>
		</c:when>
		
		<c:otherwise>
			<jsp:include page="../userHeader.jsp"/>
		</c:otherwise>
   	</c:choose>

    <!-- Blog Details Hero Section Begin -->
    <section class="blog-details-hero set-bg">
        <div class="container">
            <div class="row" style=" width: 80%; margin: 0 auto;">
                <div class="modal_layer select_date">
                    <div class="modal_inner">
	                    <div class="modal_top">
	                        <h3>객실 예약</h3>
	                    </div>
	                    <div class="modal_description">
	                        <h5>객실 이름</h5>
	                        <p>${dto.inn_name }<br>${dto.room_name }</p>
	                        <h5>체크인 날짜</h5>
	                        <p>${fn:substring(dto.book_date, 0, 10) }</p>
	                        <h5>예약자명</h5>
	                        <p>${dto.book_member_name }</p>
	                        <h5>예약자 번호</h5>
	                        <p class="tel">${dto.book_member_tel }</p>
	                        <h5>총 가격</h5>
	                        <p class="cost">${dto.book_cost }</p>
	                    </div>
	                    <div class="modal_button">
	                        <div class="modal_back">
	                            <button onclick="location.href = '${pageContext.request.contextPath }/user/mypage/mypageReserve'">예약 관리로 이동</button>
	                        </div>
	                    </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer Section Begin -->
    <jsp:include page="../footer.jsp"/>
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
                $(".room_info").css("display", "block")
                $(".room_info_more").css("display", "none")
                $(".comment-option").css("display", "none")
            })
            $(".bd-title > ul > li").eq(2).click(function() {
                $(".room_info").css("display", "none")
                $(".room_info_more").css("display", "block")
                $(".comment-option").css("display", "none")
            })
            $(".bd-title > ul > li").eq(4).click(function() {
                $(".room_info").css("display", "none")
                $(".room_info_more").css("display", "none")
                $(".comment-option").css("display", "block")
            })

            $(".modal_inner .icon_close").click(function() {
                $(".modal_layer").css("display", "none")
            })
            
            $(".tel").text(change($(".tel").text()));
           	$(".cost").text($(".cost").text().replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,') + "원");
        })
        function openModal() {
            $(".modal_layer").css("display", "block");
        }

        $(".blog-details-hero").css("height", screen.height);
        
        function change(num) {
        	return num.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");
        }
    </script>

</body>

</html>