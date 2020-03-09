<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
	<c:when test="${empty result || result == 0}">
<script>
	alert("우수플래너 선택 실패");
	hisotry.back();
</script>
	</c:when>
	<c:otherwise>
<script>
	alert("우수플래너 선택 완료");
	location.href = "admin_GoodPlannerManage"; <%-- 삭제후에는 list 로 가자 --%>
</script>
	</c:otherwise>
</c:choose>