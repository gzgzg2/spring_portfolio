<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${joinOk == 0 }">
	<script>
		alert("가입 실패");
	</script>
</c:if>
<c:if test="${joinOk > 0 }">
	<script>
		alert("가입성공");
		history.back();
	</script>			
</c:if>
    