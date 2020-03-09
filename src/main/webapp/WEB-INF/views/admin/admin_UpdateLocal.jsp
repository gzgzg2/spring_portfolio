<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%!// 페이징 관련 변수들
	int writePages = 5;%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>관리자(관광지 추가)</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="This is an example dashboard created using build-in elements and components.">
<meta name="msapplication-tap-highlight" content="no">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/ADMINCSS/admin_main.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/ADMINCSS/admin_css.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9037ea16d4cbbcb65b73a83b351ca740&libraries=services"></script>
<script>
function chklocal() {



	return true;
}

</script>

<body>
	

			<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
				<div class="app-header header-shadow">
					<div class="app-header__logo">
						<div class="logo-src"></div>
						<div class="header__pane ml-auto">
							<div>
								<button type="button"
									class="hamburger close-sidebar-btn hamburger--elastic"
									data-class="closed-sidebar">
									<span class="hamburger-box"> <span
										class="hamburger-inner"></span>
									</span>
								</button>
							</div>
						</div>
					</div>
					<div class="app-header__mobile-menu">
						<div>
							<button type="button"
								class="hamburger hamburger--elastic mobile-toggle-nav">
								<span class="hamburger-box"> <span
									class="hamburger-inner"></span>
								</span>
							</button>
						</div>
					</div>
				</div>

				<div class="app-main">
					<div class="app-sidebar sidebar-shadow">
						<div class="app-header__logo">
							<div class="logo-src"></div>
							<div class="header__pane ml-auto">
								<div>
									<button type="button"
										class="hamburger close-sidebar-btn hamburger--elastic"
										data-class="closed-sidebar">
										<span class="hamburger-box"> <span
											class="hamburger-inner"></span>
										</span>
									</button>
								</div>
							</div>
						</div>
						<div class="app-header__mobile-menu">
							<div>
								<button type="button"
									class="hamburger hamburger--elastic mobile-toggle-nav">
									<span class="hamburger-box"> <span
										class="hamburger-inner"></span>
									</span>
								</button>
							</div>
						</div>

						<div class="scrollbar-sidebar">
							<div class="app-sidebar__inner">
								<ul class="vertical-nav-menu">

									<li><a href="admin_MemberManage"> <i
											class="metismenu-icon pe-7s-rocket"></i> 회원 관리
									</a></li>

									<li><a href="admin_LocalManage"> <i
											class="metismenu-icon pe-7s-mouse"></i> 관광지 관리
									</a></li>
									
									<li><a href="admin_BookingManage"> <i
											class="metismenu-icon pe-7s-display2"></i> 예약 관리
									</a></li>

									<li><a href="admin_MotelManage"> <i
											class="metismenu-icon pe-7s-display2"></i> 플래너 관리
									</a></li>

								</ul>
							</div>
						</div>
					</div>
					<div class="app-main__outer">

						<div class="app-page-title">

							<h2>${dto.local_name } 관광지 정보 수정</h2>
							<br>
							<h4>주소 : ${dto.local_loc }</h4>
						</div>

						<div class="app-main__inner">
							
							<form name="local_frm" action="admin_UpdateLocalOk" enctype="multipart/form-data" method="post" onsubmit="return chklocal()">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								<input type="hidden" name="local_uid" value="${dto.local_uid }"/>
								<textarea class="form-control" name="local_hello">${dto.local_hello }</textarea>
								<br><br>
								<input id="local_pic" name="upload" type="file"><br>
								<label for="local_pic"></label>
								<div class="select_img"><img src="${pageContext.request.contextPath}/LOCALPIC/${dto.local_pic }" /></div>
								 
								<script>
								$("#local_pic").change(function(){
									if(this.files && this.files[0]) {
										var reader = new FileReader;
										reader.onload = function(data) {
										$(".select_img img").attr("src", data.target.result).width(500);        
										}
										reader.readAsDataURL(this.files[0]);
									}
								});
								 </script>

								<input class="admin-search-bar-btn" type="submit" value="수정하기">
								
								<!-- 
								<input type="text" id="sample6_postcode" placeholder="우편번호">
								<br><br>
								<input type="text" id="sample6_detailAddress" placeholder="상세주소">
								<br><br>
								<input type="text" id="sample6_extraAddress" placeholder="참고항목">
								<br><br>
								 -->
							</form>

						</div>

					</div>
				</div>
			</div>
			<script type="text/javascript" src="${pageContext.request.contextPath}/ADMINCSS/assets/scripts/main.js"></script>

</body>
</html>
