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
		alert("변경성공");
		history.back();
	</script>			
</c:if>
<c:if test="${result == 101 }">
	<script>
		alert("Image Only");
		history.back();
	</script>			
</c:if>

    