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
    <title>Sona | Template</title>

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

<body>
	<c:choose>
		<c:when test="${not empty sessionScope.loginUid}">
			<jsp:include page="../topMenuIncludeMyPage.jsp"/>
		</c:when>
		
		<c:otherwise>
			<jsp:include page="../topMenuIncludeMyPage.jsp"/>
		</c:otherwise>
   	</c:choose>
   	
   <section id="member">
       <div id="memDiv">
           <h2 id="memberH2">마이페이지</h2>
           <div id="side">
                <nav id="sidenav">
                    <ul id="sideul">
                        <li><a href="">개인정보</a></li>
                        <li><a href="">리뷰관리</a></li>
                        <li><a href="">예약관리</a></li>
                        <li><a href="">내플래너</a></li>
                    </ul>
                </nav>
            </div>

            <div id="memberForm">
                <h2 id="frmH2">개인정보</h2>
                <p id="frmP">서비스에서 사용하는 기본 정보입니다.</p>
                <form name="frm" action="" method="POST">
                <div id="ftableDiv">
                    <table id="ftable">
                        <tr>
                            <td>프로필</td>
                            <td><label>나만의 프로필 이미지로 변경해보세요.<input type="file"></label></td>
                            <td><button>회원탈퇴</button></td>
                        </tr>

                        <tr>
                            <td>이름</td>
                            <td>성별</td>
                            <td>생년월일</td>
                        </tr>

                        <tr>
                            <td><label>이메일<span class="inputY" onclick="doChange(this)">가나다라마바사</span><input type="hidden" name="email" value="가나다라마바사"></label></td>
                            <td colspan="2"><label>전화번호<span class="inputY" onclick="doChange(this)">가나다라마바사</span><input type="hidden" name="tel" value="가나다라마바사"></label></td>
                        </tr>

                        <tr>
                            <td><span>아이디</span></td>
                            <td colspan="2">10</td>
                        </tr>

                        <tr>
                            <td>비밀번호</td>
                            <td colspan="2"><button>비밀번호 변경 ></button></td>
                        </tr>
                    </table>
                </div>
                </form>
            </div>
        </div>
   </section>

<script>
    function doChange(e){
       var nodeName = e.nodeName.toUpperCase();
       var parent = e.parentNode;

       

       if(nodeName == "SPAN"){
          //기존 e 가 span 이었으면 <input> 으로 바꾸기 
          var txt = e.innerHTML.trim();
          parent.removeChild(e);
          
          var node = document.createElement("input");
          node.value = txt;
          node.setAttribute('onfocusout', 'doChange(this)');
          node.setAttribute('onkeydown', 'doEnter(this)')
          
          
          parent.appendChild(node);
          node.focus();
        
          
       } else if (nodeName == "INPUT") {
          var txt = e.value.trim(); // <INPUT> 입력값
          parent.removeChild(e); // 기존 <INPUT> 삭제
          
          var node = document.createElement("span");
          var txtNode = document.createTextNode(txt);
          node.appendChild(txtNode);
          node.setAttribute('onclick', 'doChange(this)');
          parent.appendChild(node);

          $(".inputY").addClass("inputSpan");
          
       }

    } 
    
    function doEnter(e) {
       //13은 엔터
       if(event.keyCode == 13) {
          doChange(e);
       }
    }
    
    </script>
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