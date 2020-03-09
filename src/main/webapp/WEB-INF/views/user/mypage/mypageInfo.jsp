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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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

 <script>
	function chkSubmit(){
		frm = document.forms["passFrm"];
		
		var pw = frm["member_pw"].value.trim();
		var pwCk = frm["member_newPw"].value.trim();
		var newPwChk = frm["newPwChk"].value.trim();
		
		if(pw == ""){
			alert("비밀번호를 입력해주세요.");
			frm["member_pw"].focus();
			return false;
		}
		if(pwCk == ""){
			alert("변경할 비밀번호를 입력해주세요.");
			frm["member_newPw"].focus();
			return false;
		}
		if(newPwChk == ""){
			alert("확인할 비밀번호를 입력해주세요.");
			frm["newPwChk"].focus();
			return false;
		}
		
		if(newPwChk != pwCk) {
			alert("비밀번호가 다릅니다");
			return false
		}
		
		return true;
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
   	
   	
   <section id="member">
   
   <!-- 모달 -->
   	<div id="pwChange" class="modal">
		<div class="ramimo">
			<span class="close">&times;</span><br>
			<form id="passFrm" method="POST" onsubmit="return chkSubmit();" action="${pageContext.request.contextPath}/user/mypage/passwordChange">
				<label class="label">
					<span class="pwSpan">현재 비밀번호</span><br>
					<input class="passwordInput" type="password" name="member_pw"/><br>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</label>
				
				<label class="label">
					<span class="pwSpan">변경할 비밀번호</span><br>
					<input class="passwordInput" type="password" name="member_newPw"/><br>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</label>
				
				<label class="label">
					<span class="pwSpan">비밀번호 확인</span><br>
					<input id="newPwChk" type="password" name="member_pwCheck"/><br>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</label>
				
				<hr>
				<input id="passSBtn" type="submit" value="변경하기"/>
			</form>
		</div>
	</div>	
	
       <div id="memDiv">
           <h2 id="memberH2">마이페이지</h2>
           <div id="side">
                <nav id="sidenav">
                    <ul id="sideul">
                      	<li><a href="${pageContext.request.contextPath}/user/mypage/mypageInfo"><i class="fa fa-id-card-o" aria-hidden="true"></i>&nbsp;&nbsp;개인정보</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/mypage/mypageReview"><i class="fa fa-file-text-o" aria-hidden="true"></i>&nbsp;&nbsp;리뷰관리</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/mypage/mypageReserve"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;&nbsp;예약관리</a></li>
                        <li><a href=""><i class="fa fa-plane" aria-hidden="true"></i>&nbsp;&nbsp;내플래너</a></li>
                    </ul>
                </nav>
            </div>

            <div id="memberForm">
                <h2 id="frmH2">개인정보</h2> 
                <p id="frmP">서비스에서 사용하는 기본 정보입니다.</p>
                <form name="frm" enctype="multipart/form-data" action="${pageContext.request.contextPath}/user/mypage/mypageUpdateOk" method="POST">
                <input type="hidden" name="member_pic" value="${dto.member_pic}"/>
                <input type="hidden"  name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div id="ftableDiv">
                    <table id="ftable">
                        <tr>
                            <td id="tdFILE">사진<div id="fileChangeBtn"><label id="fileLabel">&nbsp;&nbsp;클릭하여 원하는 사진으로 변경해보세요.<input id="fileBtn" name="upload" type="file" accept="image/jpeg, image/png"></label></div></td>
                            <td><img id="imgId" src="${pageContext.request.contextPath}/USERPIC/${dto.member_pic }">
                            	<input type="hidden"  name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            </td>
                            <td><input type="button" class="btnSub" value="회원탈퇴" onclick="memberDelete();" ></td>
                        </tr>
					
                        <tr>
                            <td>이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="koText" class="textSize">${dto.member_name}</span></td>
                            <td>성별&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="textSize"></span></td>
                            <td>생년월일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="textSize"></span></td>
                        </tr>

                        <tr>
                            <td><label>이메일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="mypageInput" name="member_email" value="${dto.member_email}"></label></td>
                            <td colspan="2"><label>전화번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="mypageInput" name="member_tel" value="${dto.member_tel}"></label></td>
                        </tr>

                        <tr>
                            <td>아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="textSize">${dto.member_id}</span></td>
                            <td colspan="2"></td>
                        </tr>

                        <tr>
                            <td style="width: 50%;"><input class="btnSub" id="subBtn" type="submit" value="정보 변경하기"/></td>
                            <td colspan="2"><input type="button" class="btnSub" id="passwordChagneBtn" value="비밀번호 변경 "></td>
                        </tr>
                    </table>
                </div>
                </form>
            </div>
        </div>
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
<script>
	var modal = document.getElementById("pwChange");
	var btn = document.getElementById("passwordChagneBtn");
	var span = document.getElementsByClassName("close")[0];
	
	btn.onclick = function(){
		modal.style.display = "block";
	};
	
	span.onclick = function() {
		modal.style.display = "none";
	};
</script>
</html>