<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<title>계정 | 비밀번호 찾기</title>
<c:if test="${result == 0}">
	<script>
		alert("정보를 확인해주세요!")
		history.back();
	</script>
</c:if>
<c:if test="${result == 1 }">
	<script>
		alert("이메일을 확인해주세요!")
		location.href="${pageContext.request.contextPath}/user/account/login"
	</script>
</c:if>