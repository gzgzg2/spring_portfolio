<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang = "ko">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/welcome.css">
	<title>Home</title>
</head>
<body>
<div class="wrap">
    <header>
        <div>
            <div class="logo">
            <img src="${pageContext.request.contextPath}/USERCSS/assets/images/logo-inverse.png">
            	귤귤플래너
            </div>
            <div class="on_pc">
                <ul>
                    <li><a href="#">홈</a></li>
                    <li><a href="#">탐색</a></li>
                    <li><a href="#">한국투어</a></li>
                    <li><a href="#">숙소</a></li>
                    <li><a href="#">템플릿</a></li>
                </ul>
            </div>
        </div>
    </header>
    <main>
        <div>
            <div class="left">
                <div>
                    <img src="https://imagecdn.tour2000.co.kr/upload/Images/display/20191219130842_3693621297.png">
                </div>
            </div>
            <div class="right">
                <div>
                    <div>
                        <form class="login_form">
                            <h3>아이디</h3>
                            <input type="text">
                            <h3>비밀번호</h3>
                            <input type="password">
                        </form>
                    </div>
                    <div class="id_check">
                        <a href="#">아이디 / 비밀번호 찾기</a>
                    </div>
                    <div class="join">
                        <div><h3>회원가입</h3></div>
                        <div><h3>로그인</h3></div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
</body>
</html>
