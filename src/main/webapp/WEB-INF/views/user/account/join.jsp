<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <script src="https://kit.fontawesome.com/e68b5cc3ca.js" crossorigin="anonymous"></script>

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/flaticon.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/style.css" type="text/css">

    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/util.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/main.css">
    <!--===============================================================================================-->

    <style>
        .login_form {
            position: absolute;
            top: 10%;
        }

        .gender {
            width: 80%;
            margin: 0 auto 16px auto;
        }
        .row i {
            width: 100%;
            text-align: center;
            font-size: 1.6em;
            color: rgb(214, 214, 214);
        }
        .row i:hover { cursor: pointer; }
        .row div:nth-child(1) i { color: #8EC0E4; }
        .auth { display: none; }
    </style>
</head>
    
<script>
	// form 검증
	function chkSubmit(){
		var frm = document.forms["frm"];
		
		var ifChkSMS = frm["ifChkSMS"].value.trim();
		var name = frm["member_name"].value.trim();
		var tel = frm["member_tel"].value.trim();
		var id = frm["member_id"].value.trim();
		var pw = frm["member_pw"].value.trim();
		var pwCk = frm["member_pwCheck"].value.trim();
		var email = frm["member_email"].value.trim();
		
		if(name == ""){
			alert("이름를 입력해주세요.");
			frm["member_name"].focus();
			return false;
		}
		if(id == ""){
			alert("아이디를 입력해주세요");
			frm["member_id"].focus();
			return false;
		}
		if(email == ""){
			alert("이메일을 입력해주세요.");
			frm["member_email"].focus();
			return false;
		}
		if(tel == ""){
			alert("전화번호를 입력해주세요.");
			frm["member_tel"].focus();
			return false;
		}
		if(ifChkSMS == ""){
			alert("핸드폰 인증을 해주세요.");
			frm["member_pwCk"].focus();
			return false;
		}
		if(pw == ""){
			alert("비밀번호를 입력해주세요.");
			frm["member_pw"].focus();
			return false;
		}
		if(pwCk == ""){
			alert("비밀번호확인을 입력해주세요.");
			frm["member_pwCk"].focus();
			return false;
		}
		
		return true;
	}
</script>
<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Section Begin -->
     	<c:choose>
	
		<c:when test="${not empty sessionScope.loginUid}">
			<jsp:include page="../topMenuIncludeMyPage.jsp"/>
		</c:when>
		
		<c:otherwise>
			<jsp:include page="../topMenuIncludeLogOut.jsp"/>
		</c:otherwise>
		
   	</c:choose>
   	
    <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 login_form">
				<form name="frm" class="login100-form validate-form p-l-55 p-r-55 p-t-178" action="${pageContext.request.contextPath}/user/account/joinOk" method="POST" onsubmit="return chkSubmit();">
					<input type="hidden" name="ifChkSMS" value="0">
					
					<span class="login100-form-title">
						JOIN
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter username">
						<input class="input100" type="text" name="member_name" placeholder="이름">
						<input type="hidden" id="security" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<span class="focus-input100"></span>
					</div>
                    
                    <div class="wrap-input100 validate-input m-b-16" data-validate="Please enter username">
						<input class="input100" type="text" id="member_id" name="member_id" placeholder="아이디">
						<div id="idCheck"></div>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<span class="focus-input100"></span>
					</div>
                    
                    <div class="wrap-input100 validate-input m-b-16" data-validate="Please enter username">
						<input class="input100" type="text" name="member_email" placeholder="이메일">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate = "Please enter tel">
						<input class="input100" type="text" name="member_tel" placeholder="전화번호" style="display: inline; width: 60%;" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
						<button class="login100-form-btn sendSMS" style="display: inline; width: 40%; height: 55px; float: right; border-radius: 0px 25px 25px 0px;" type="button" onclick="sendSMS()">
							휴대폰 인증
						</button>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input auth" data-validate = "Please enter tel" style="margin-top: 16px;">
						<input class="input100" type="text" name="authKey" placeholder="인증번호 입력" style="display: inline; width: 60%;" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
						<button class="login100-form-btn" style="display: inline; width: 40%; height: 55px; float: right; border-radius: 0px 25px 25px 0px;" type="button" onclick="chkSMS()">
							인증번호 확인
						</button>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<span class="focus-input100"></span>
					</div>
                    
                    <div class="wrap-input100 validate-input m-b-16" style="margin-top: 16px; data-validate = "Please enter password">
						<input class="input100" type="password" name="member_pw" placeholder="비밀번호">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-16" data-validate = "Please enter password">
						<input class="input100" type="password" name="member_pwCheck" placeholder="비밀번호 체크">
						<span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-16 row gender" data-validate = "Please enter password">
                        <div class="col-sm-6">
                            <i class="fas fa-male"></i>
                        </div>
                        <div class="col-sm-6">
                            <i class="fas fa-female"></i>
                        </div>
                    </div>

					<div class="container-login100-form-btn" style="margin-top: 16px;">
						<input type="submit" id="btnSubmit" class="login100-form-btn" type="submit" value="회원가입">
					</div>
					
					<div class="flex-col-c p-t-170 p-b-40">
						<span class="txt1 p-b-9">
							Do you have an account?
						</span>

						<a href="./login" class="txt3">
							Login
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/USERJS/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/main.js"></script>

    <script>
        $(document).ready(function() {
            $(".row div i").click(function() {
                $(".row div i").css("color", "rgb(214, 214, 214)")
                $(this).css("color", "#8EC0E4")
            })
        })
    </script>
    
      <script>
      function sendSMS() {
			if ($("input:text[name='member_tel']").val().trim().length == 11) {
				var rd = Math.floor(Math.random()*(999999-100000+1)) + 100000 + "";
				var tel = $("input:text[name='member_tel']").val().trim();
				
				$.ajax({
	    			url : "${pageContext.request.contextPath}/user/sendSMS",
	    			type : "POST",
	    			cache : false,
	    			data : {  // POST 방식 ajax() request 할시 parameter
	    				"rd" : rd,
	    				"tel" : tel,
	    				"${_csrf.parameterName }" : "${_csrf.token }"
	    			},
	    			success : function(data, status){
	    				if(status == "success"){
	    					if (data == 1) {
	        					alert("인증번호가 휴대폰으로 전송 되었습니다!");
	        					$(".auth").css("display", "block");
	            				$("input:text[name='member_tel']").prop("readonly", true)
      						$("input:hidden[name='ifChkSMS']").val("0");
	    					} else {
	    						alert("전화번호를 확인해주세요!");
	    					}
	    				}
	    			}
	    		});
			} else {
  			alert("전화번호를 확인해주세요!");
  		}
			
			return false;
		}
	    function chkSMS() {
	  		if ($("input:text[name='authKey']").val().trim().length == 6) {
	  			var authKey = $("input:text[name='authKey']").val().trim();
	  			
	  			$.ajax({
	      			url : "${pageContext.request.contextPath}/user/chkSMS",
	      			type : "POST",
	      			cache : false,
	      			data : {  // POST 방식 ajax() request 할시 parameter
	      				"authKey" : authKey,
	      				"${_csrf.parameterName }" : "${_csrf.token }"
	      			},
	      			success : function(data, status){
	      				if(status == "success"){
	      					if (data == 1) {
	      						alert("휴대폰 인증 성공");
	      						$("input:hidden[name='ifChkSMS']").val("1");
	      						$(".auth").html("");
	      					} else {
	      						alert("인증번호를 확인해주세요");
	      					}
	      				}
	      			}
	      		});  			
	  		} else {
					alert("인증번호를 확인해주세요!");
				}
	  		
	  		return false;
	  	}
    	$("#member_id").keyup(function(){
    		var member_id = $("#member_id").val();
    		var security = $("security").val();
    			
    		$.ajax({
    			async: true,
    			url : '${pageContext.request.contextPath}/user/account/idCheck?member_id=' + member_id,
    			dataType : 'json',
    			contentType : "application/json; charset=UTF-8",
    			type : 'GET',
    			success : function(data) {
    				console.log(data);
    				
    				if (data == 1) {
    					$("#idCheck").text("사용중인 아이디입니다.");
    					$("#member_id").focus();
    					$("#btnSubmit").attr("disabled", true);
    				} else if (member_id == "") {
    					$("#idCheck").text("아이디를 입력해주세요");
    					$("#btnSubmit").attr("disabled", true);
    				} else if (data == 0) {
    					$("#idCheck").text("사용가능한 아이디입니다.");
    					$("#btnSubmit").attr("disabled", false);
    				}
    			} , error : function() {
					console.log("실패");
				}
    		});
    	});
    
    </script>
</body>

</html>