<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:if test="${cnt == 1 }">
	<script>
		location.href = "./check/" + ${book_uid }
	</script>
</c:if>
<c:if test="${cnt == 0 }">
	<script>
		history.back();
	</script>
</c:if>