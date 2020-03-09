<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
	<c:when test="${empty result || result == 0 }">
	<script>
		alert("수정 실패");
		history.back();
	</script>
	</c:when>
	<c:otherwise>
	<script>
		alert("수정 성공");
		location.href = "admin_LocalManage"; <%-- 수정 성공하면 view 로 이동하여 제대로 수정되었는지 보여주는게 좋다--%>
	</script>
	</c:otherwise>
</c:choose>


