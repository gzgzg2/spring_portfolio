<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 | 500</title>
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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/style_rami.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/swiper.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
#notfound {
  position: relative;
  height: 60vh;
}

#notfound .notfound {
  position: absolute;
  left: 50%;
  top: 50%;
  -webkit-transform: translate(-50%, -50%);
      -ms-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
}

.notfound {
  max-width: 560px;
  width: 100%;
  padding-left: 160px;
  line-height: 1.1;
}

.notfound .notfound-404 {
	position: absolute;
    left: 0;
    top: 0;
    display: inline-block;
    width: 146px;
    height: 150px;
    background-image: url("${pageContext.request.contextPath }/resources/img/error.png");
    background-size: cover
}

.notfound .notfound-404:before {
  content: '';
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-transform: scale(2.4);
      -ms-transform: scale(2.4);
          transform: scale(2.4);
  border-radius: 50%;
  background-color: #f2f5f8;
  z-index: -1;
}

.notfound h1 {
  font-family: 'Nunito', sans-serif;
  font-size: 65px;
  font-weight: 700;
  margin-top: 0px;
  margin-bottom: 10px;
  color: #151723;
  text-transform: uppercase;
}

.notfound h2 {
  font-family: 'Nunito', sans-serif;
  font-size: 21px;
  font-weight: 400;
  margin: 0;
  text-transform: uppercase;
  color: #151723;
}

.notfound p {
  font-family: 'Nunito', sans-serif;
  color: #999fa5;
  font-weight: 400;
}

.notfound a {
  font-family: 'Nunito', sans-serif;
  display: inline-block;
  font-weight: 700;
  border-radius: 40px;
  text-decoration: none;
  color: #388dbc;
}
.notfound a:hover {
  font-family: 'Nunito', sans-serif;
  display: inline-block;
  font-weight: 700;
  border-radius: 40px;
  text-decoration: none;
  color: #388dbc;
  cursor: pointer;
}

@media only screen and (max-width: 767px) {
  .notfound .notfound-404 {
    width: 110px;
    height: 110px;
  }
  .notfound {
    padding-left: 15px;
    padding-right: 15px;
    padding-top: 110px;
  }
}

</style>
</head>
<body>
    <c:choose>	
		<c:when test="${not empty sessionScope.loginUid}">
			<jsp:include page="../topMenuIncludeMyPage.jsp"/>
		</c:when>
		<c:otherwise>
			<jsp:include page="../topMenuIncludeLogOut.jsp"/>
		</c:otherwise>
   	</c:choose>
   	<div id="notfound">
		<div class="notfound">
			<div class="notfound-404"></div>
			<h1>500</h1>
			<h2>잘못된 접근입니다</h2>
			<p>현재 페이지에 문제가 있습니다<br>
			새로고침 해주세요.</p>
			<a onclick="history.back()">돌아가기</a>
		</div>
	</div>
	<jsp:include page="../footer.jsp"/>
</body>
</html>