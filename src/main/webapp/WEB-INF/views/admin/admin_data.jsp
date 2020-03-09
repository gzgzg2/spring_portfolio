<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%!// 페이징 관련 변수들
	int writePages = 10;%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>관리자 - 데이터 최신화</title>
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

<style>
.menu .hide{display:none;}
</style>
<script>
$(document).ready(function(){
	$(".menu>a").click(function(){
		var submenu = $(this).next("ul");
		
		if(submenu.is(":visible")){
			submenu.slideUp();
		} else {
			submenu.slideDown();
		}
	});
});
</script>
<body>
			<div
				class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
				<div class="app-header header-shadow">
					<div class="app-header__logo">
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

									<li>
										<a href="admin_MemberManage"> 
											<i class="metismenu-icon pe-7s-users"></i>회원 관리
										</a>
									</li>

									<li>
										<a href="admin_LocalManage">
											<i class="metismenu-icon pe-7s-map-marker"></i>관광지 관리
										</a>
									</li>

									<li class="menu">
										<a href="#">
											<i class="metismenu-icon pe-7s-note2"></i>예약 관리
										</a>
										<ul class="hide">
											<li>
												<a href="admin_InnManage"><i
													class="metismenu-icon pe-7s-home"></i>숙소 예약관리</a>
											</li>
											<li>
												<a href="admin_TourManage">투어 예약관리</a>
											</li>
											<li>
												<a href="admin_ActivManage">액티비티 예약관리</a>
											</li>
										</ul>
									</li>

									<li class="menu">
										<a href="#">
											<i class="metismenu-icon pe-7s-plane"></i>플래너 관리
										</a>
										<ul class="hide">
											<li>
												<a href="admin_PlannerManage">플래너 관리 </a>
											</li>
											<li>
												<a href="admin_GoodPlannerManage">우수 플래너관리</a>
											</li>
										</ul>
									</li>
									
									<li>
										<a href="admin_data" class="mm-active"> 
											<i class="metismenu-icon pe-7s-download"></i>데이터 갱신
										</a>
									</li>

								</ul>
							</div>
						</div>
					</div>
					<div class="app-main__outer">

						<div class="app-page-title">

							<h2>데이터 갱신</h2>

						</div>

						<div class="app-main__inner row">
							
							<div class="admin-search-motel-crawling-btn col-sm-4">
	                        	<input type="button" onclick="location.href='./activCrawl'" class="mb-2 mr-2 btn btn-primary active" value="액티비티 정보 가져오기">
	                   		</div>
	                   		
	                   				
		                    <div class="admin-search-motel-crawling-btn col-sm-4">
		                        <input type="button" onclick="location.href='./tourCrawl'" class="mb-2 mr-2 btn btn-primary active" value="투어 정보 가져오기">
		                    </div>
							
							<div class="admin-search-motel-crawling-btn col-sm-4">
								<input type="button" onclick="location.href='./innCrawl'"
									class="mb-2 mr-2 btn btn-primary active" value="숙소 정보 가져오기">
							</div>
							
						</div>

					</div>
				</div>
			</div>
			<script type="text/javascript" src="${pageContext.request.contextPath}/ADMINCSS/assets/scripts/main.js"></script>
</body>
</html>
