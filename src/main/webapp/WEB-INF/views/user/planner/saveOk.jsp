<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${cnt == 0 }">
	<script>
		alert("저장 실패 다시 시도해보세요");
	</script>
</c:if>
<c:if test="${cnt == 1 }">
	<script>
		alert("저장 완료, 마이페이지-내플래너로 이동합니다.");
		location.href = "${pageContext.request.contextPath}/user/mypage/mypagePlanner";
		
	</script>			
</c:if>
    