<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>계정 | 아이디 찾기</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/flaticon.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/style.css" type="text/css">

    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/util.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/main.css">
    <!--===============================================================================================-->

    <style>
        .login_form {
            position: absolute;
            top: 10%;
        }
    </style>
</head>

<body>
    <!-- Page Preloder -->
   	<c:choose>
	
		<c:when test="${not empty sessionScope.loginUid}">
			<jsp:include page="../topMenuIncludeMyPage.jsp"/>
		</c:when>
		
		<c:otherwise>
			<jsp:include page="../topMenuIncludeLogOut.jsp"/>
		</c:otherwise>
		
   	</c:choose>
   	
   	
    <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100  login_form">
				<form class="login100-form validate-form p-l-55 p-r-55 p-t-178" method="POST" action="${pageContext.request.contextPath}/user/account/findIDOk">
					<span class="login100-form-title">
						아이디 찾기	
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter Username">
						<input class="input100" type="text" name="member_name" placeholder="이름" />
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Please enter email">
						<input class="input100" type="text" name="member_email" placeholder="E-mail" />
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn" style="margin-top: 16px;">
						<button class="login100-form-btn" type="submit">
							아이디 찾기
						</button>
					</div>

					<div class="flex-col-c p-t-170 p-b-40">
						<span class="txt1 p-b-9">
							Don’t have an account?
						</span>

						<a href="${pageContext.request.contextPath}/join.jsp" class="txt3">
							Join now
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>