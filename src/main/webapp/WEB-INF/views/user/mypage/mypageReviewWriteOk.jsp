<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>마이페이지 | 리뷰 작성</title>
<c:if test="${result == 0 }">
	<script>
		alert("리뷰 작성 실패!");
		location.href="${pageContext.request.contextPath}/user/mypage/mypageReserve"
	</script>
</c:if>
<c:if test="${result == 1 }">
	<script>
		alert("리뷰 작성 성공!");
		location.href="${pageContext.request.contextPath}/user/mypage/mypageReview"
	</script>			
</c:if>
    