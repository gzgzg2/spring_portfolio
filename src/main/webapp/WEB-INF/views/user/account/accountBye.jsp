<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${result == 0 }">
	<script>
		alert("탈퇴 실패");
	</script>
</c:if>
<c:if test="${result > 0 }">
	<script>
		alert("탈퇴 성공");
		location.href="${pageContext.request.contextPath}/user/account/login";
	</script>			
</c:if>
    