<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- <form method="POST" action="${pageContext.request.contextPath}/user/account/logoutOk">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form> -->

<c:if test="${empty sessionScope.loginUid && empty sessionScope.userPic}">
	<script>
		location.href="${pageContext.request.contextPath}/user/account/login";
	</script>
</c:if>
<c:if test="${not empty sessionScope.loginUid }">
	<script>
		alert("로그아웃 실패");
		history.back();
	</script>			
</c:if> 
    