<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>계정 | 비밀번호 찾기</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

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
        .auth { display: none; }
    </style>
</head>

<body>
    <!-- Page Preloder -->
    <header>
        <div class="menu-item">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="logo">
                            <a href="./index.html">
                                <img src="img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-10">
                        <div class="nav-menu">
                            <nav class="mainmenu">
                                <ul>
                                    <li><a href="./index.html">Home</a></li>
                                    <li><a href="./rooms.html">Rooms</a></li>
                                    <li><a href="./about-us.html">About Us</a></li>
                                    <li><a href="./pages.html">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="./room-details.html">Room Details</a></li>
                                            <li><a href="./blog-details.html">Blog Details</a></li>
                                            <li><a href="#">Family Room</a></li>
                                            <li><a href="#">Premium Room</a></li>
                                        </ul>
                                    </li>
                                    <li class="active"><a href="./blog.html">News</a></li>
                                    <li><a href="./contact.html">Contact</a></li>
                                </ul>
                            </nav>
                            <div class="nav-right search-switch">
                                <i class="icon_search"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100  login_form">
				<form class="login100-form validate-form p-l-55 p-r-55 p-t-178" method="POST" action="${pageContext.request.contextPath}/user/account/findPWOk" onsubmit="return chkSubmit()">
					<input type="hidden" name="ifChkSMS" value="0">
					
					<span class="login100-form-title">
						비밀번호 찾기	
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter id">
						<input class="input100" type="text" name="member_id" placeholder="아이디">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Please enter tel">
						<input class="input100" type="text" name="member_tel" placeholder="전화번호 입력" style="display: inline; width: 60%;" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
						<button class="login100-form-btn sendSMS" style="display: inline; width: 40%; height: 55px; float: right;" type="button" onclick="sendSMS()">
							휴대폰 인증
						</button>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input auth" data-validate = "Please enter tel" style="margin-top: 16px;">
						<input class="input100" type="text" name="authKey" placeholder="인증번호 입력" style="display: inline; width: 60%;" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
						<button class="login100-form-btn" style="display: inline; width: 40%; height: 55px; float: right;" type="button" onclick="chkSMS()">
							인증번호 확인
						</button>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn" style="margin-top: 16px;">
						<button class="login100-form-btn">
							비밀번호 찾기
						</button>
					</div>

					<div class="flex-col-c p-t-170 p-b-40">
						<span class="txt1 p-b-9">
							Don’t have an account?
						</span>

						<a href="${pageContext.request.contextPath}/join.jsp" class="txt3">
							Join now
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
	    function chkSubmit() {
	    	if ($("input:text[name='member_id']").val().trim().length == 0) {
				alert("아이디를 입력해주세요")	
				$("input:text[name='member_id']").focus()
    		} else if ($("input:hidden[name='ifChkSMS']").val().trim() == 0) {
				$("input:text[name='member_tel']").focus()
		    	alert("휴대폰 인증을 해주세요!")
    		}
	    	if ($("input:hidden[name='ifChkSMS']").val().trim() == 1 &&
    			$("input:text[name='member_id']").val().trim().length > 0) {
				return true;
    		}
    		return false;
    	}
    </script>
    
</body>

</html>