<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${result == 0 }">
	<script>
		alert("예약 취소 실패!");
		location.href="${pageContext.request.contextPath}/user/mypage/mypageReserve"
	</script>
</c:if>
<c:if test="${result == 1 }">
	<script>
		alert("예약 취소 성공!");
		location.href="${pageContext.request.contextPath}/user/mypage/mypageReserve"
	</script>			
</c:if>