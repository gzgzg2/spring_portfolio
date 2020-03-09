<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${result == 1 }">
	<script>
		alert("변경 완료");
		history.back();
	</script>
</c:if>
<c:if test="${result != 1 }">
	<script>
		alert("변경 실패");
		history.back();
	</script>			
</c:if>


    