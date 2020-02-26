<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${result == 0 }">
	<script>
		alert("변경 실패");
		history.back();
	</script>
</c:if>
<c:if test="${result == 1 }">
	<script>
		alert("비밀번호가 변경되었습니다");
		history.back();
	</script>			
</c:if>
<c:if test="${result == 2 }">
	<script>
		alert("현재 비밀번호를 확인해주세요");
		history.back();
	</script>			
</c:if>    