<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>귤귤플래너</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/style_rami.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/elegant-icons.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/flaticon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/nice-select.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/jquery-ui.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/slicknav.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/style.css">
</head>
 <script>
	function memberDelete(){
		if (confirm("정말 삭제하시겠습니까??")){ 
	
	    	location.href="${pageContext.request.contextPath}/user/account/accountBye/${sessionScope.loginUid}";
	
		}else{   
		
		    return;
		}
	}
</script>

<body>
	<c:choose>
		<c:when test="${not empty sessionScope.loginUid}">
			<jsp:include page="../topMenuIncludeMyPage.jsp"/>
		</c:when>
		
		<c:otherwise>
			<jsp:include page="../topMenuIncludeMyPage.jsp"/>
		</c:otherwise>
   	</c:choose>
   	
   	
   <section id="review">
	
       <div id="reviewDiv">
           
           <h2 id="ReviewH2">마이페이지</h2>
           <div id="Reviewside">
                <nav id="sidenav">
                    <ul id="sideul">
                    	<li><a href="${pageContext.request.contextPath}/user/mypage/mypageInfo">개인정보</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/mypage/mypageReview">리뷰관리</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/mypage/mypageReserve">예약관리</a></li>
                        <li><a href="">내플래너</a></li>
                    </ul>
                </nav>
            </div>

            <div id="reviewFormArea">
          		<div class="reviewArea">
 					<ul>
 						<li id="activ" class="tabBtn">
 							<input type="radio" checked name="tabmenu" id="tabmenu1">
 							<label for="tabmenu1">액티비티</label>
 							<div class="a">
 								<table id="activ">
 								
 								</table>
 							</div>
 						</li>
 						
 						<li id="tour" class="tabBtn">
 							<input type="radio" name="tabmenu" id="tabmenu2">
 							<label for="tabmenu2">투어</label>
 							<div class="a">
 								<table id="tour">
 									
 								</table>
 							</div>
 						</li>
 						
 						<li id="accom" class="tabBtn">
 							<input type="radio" name="tabmenu" id="tabmenu3">
 							<label for="tabmenu3">숙소</label>
 							<div class="a">
 								<table id="accom">
 									
 								</table>
 							</div>
 						</li>
 					</ul>
          		</div>
            </div> <!--  reviewEnd -->

        </div> <!-- reviewDivEnd -->
   </section>

    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/USERJS/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/main.js"></script>
</body>

</html>