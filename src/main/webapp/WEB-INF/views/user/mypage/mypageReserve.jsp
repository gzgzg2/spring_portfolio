<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
        .item {
            width: 80%;
            height: 300px;
            margin: 2% auto;
            border: 5px solid #ccc;
            border-radius: 10px;
        }
        .text {
            width: 80%;
            margin: 0 auto;
        }
        .text > p {
            text-align: center;
            font-size: 2em;
        }
        .text input[type="text"], .text input[type="number"] {
            margin: 10px 0px;
            border: 1px solid #d1d1d1;
            padding: 10px;
        }
        .text button[type="submit"] {
            width: 100%;
            margin: 10px 0px;
            border: none;
            padding: 10px;
            background-color: #ccc;
        }
        .item_header {
            padding: 1%;
            background-color: #ccc;
        }
        .item_body {
            width: 50%;
            float: left;
            padding: 1.5%;
        }
        .item_body h5 {
            padding: 3px;
            float: left;
        }
        .item_body p {
            width: 100%;
            text-align: right;
        }
        .item_footer {
            float: left;
            width: 50%;
            padding: 1.5%;
        }
        .button_container {
            width: 90%;
            margin: 0 auto;
            padding-top: 7%;
        }
        .button_container button {
            padding: 15px 50px;
            margin: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #ccc;
        }
		.text { display: none; }
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

   <section id="member">
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
                <div class="reserve">
                    <div class="item">
                        <div class="item_header">
                            <h4>[제주 안덕] 산방산탄산온천 - A-1. 성인 1인 이용권</h4>
                            <h5>2020-02-23</h5>
                        </div>
                        <div class="item_body">
                            <h5>예약자 이름:</h5><p>이름이름</p>
                            <h5>예약자 번호:</h5><p>01011112222</p>
                            <h5>인원수:</h5><p>3</p>
                            <h5>총가격:</h5><p>26700</p>
                        </div>
                        <div class="item_footer">
                            <div class="button_container">
                                <button onclick="writeReview(1)">리뷰 쓰기</button>
                                <button>예약 취소</button>
                            </div>
                        </div>
                    </div>
                    <div class="text 1">
                        <p><i class="fas fa-sort-up"></i></p>
                        <form action="">
                            <input type="hidden" name="book_uid">
                            <input type="number" min="1" max="10" name="review_star" style="width: 7%;" value="10">
                            <input type="text" name="review_title" style="width: 92%; float: right;" placeholder="제목을 입력하세요">
                            <textarea name="review_content" id="editor1"></textarea>
                            <button type="submit">작성 완료</button>
                        </form>
                    </div>
                </div>
                <div class="reserve">
                    <div class="item">
                        <div class="item_header">
                            <h4>[제주 안덕] 산방산탄산온천 - A-1. 성인 1인 이용권</h4>
                            <h5>2020-02-23</h5>
                        </div>
                        <div class="item_body">
                            <h5>예약자 이름:</h5><p>이름이름</p>
                            <h5>예약자 번호:</h5><p>01011112222</p>
                            <h5>인원수:</h5><p>3</p>
                            <h5>총가격:</h5><p>26700</p>
                        </div>
                        <div class="item_footer">
                            <div class="button_container">
                                <button onclick="writeReview(2)">리뷰 쓰기</button>
                                <button>예약 취소</button>
                            </div>
                        </div>
                    </div>
                    <div class="text 2">
                        <p><i class="fas fa-sort-up"></i></p>
                        <form action="">
                            <input type="hidden" name="book_uid">
                            <input type="number" min="1" max="10" name="review_star" style="width: 7%;" value="10">
                            <input type="text" name="review_title" style="width: 92%; float: right;" placeholder="제목을 입력하세요">
                            <textarea name="review_content" id="editor1"></textarea>
                            <button type="submit">작성 완료</button>
                        </form>
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
    <script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
    <script>
        CKEDITOR.replace('editor1');
    </script>
</body>

</html>