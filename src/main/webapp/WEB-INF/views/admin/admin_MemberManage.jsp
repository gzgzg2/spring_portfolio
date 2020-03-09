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
<title>관리자 - 회원관리</title>
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
<script>
$(document).ready(function(){
	$("input#page").val(1);  // 페이지 최초 로딩되면 1페이지로 기본 세팅
	$("input#search_page").val(1);
	loadPage(1)// page 읽어오기
	
	$("button#normal_prev").click(function(){
		var curPage = parseInt($("input#page").val());
		if(curPage == 1){
			alert("첫 페이지 입니다");
			return;
		}
		loadPage(curPage - 1);
	});
	
	$("button#normal_next").click(function(){
		
		var curPage = parseInt($("input#page").val());
	
		loadPage(curPage + 1);
	});
	
	$("button#search_prev").click(function(){
		var curPage = parseInt($("input#search_page").val());
		if(curPage == 1){
			alert("첫 페이지 입니다");
			return;
		}
		search(curPage - 1);
	});
	
	$("button#search_next").click(function(){
		
		var curPage = parseInt($("input#search_page").val());
	
		search(curPage + 1);
	});
	
	$(".menu>a").click(function(){
		var submenu = $(this).next("ul");
		
		if(submenu.is(":visible")){
			submenu.slideUp();
		} else {
			submenu.slideDown();
		}
	});
	
});



//page번째 페이지 목록 로딩
function loadPage(page){

	$.ajax({
		url : "${pageContext.request.contextPath}/AdminMemberAJAX/admin_MemberManage/<%=writePages%>/"+ page,
				type : "GET",
				cache : false,
				success : function(data, status) {
					if (status == "success") {
						if (updateList(data)) { // 페이지 업데이트
							// 페이지 로딩이 성공한 뒤라야 현재 페이지 정보 업데이트
							$("input#page").val(page);
						}
					}
				}
			});
	} // end loadPage()

function updateList(jsonObj) {
	result = "";
	if (jsonObj.status == "OK") {
		var cnt = jsonObj.cnt; // 글 총 개수
		var count = jsonObj.count; // 글 개수
		var items = jsonObj.list; // 글 목록
		
		var i;
		
		for (i = 0; i < count; i++) {
			result += "<tr>\n";
			result += "<td>" + items[i].member_name + "</td>\n"
			result += "<td>" + items[i].member_id + "</td>\n"
			result += "<td>" + items[i].member_email + "</td>\n"
			result += "<td>" + items[i].member_tel + "</td>\n"
			result += "<td><button class='admin-delete-btn'><a onclick='return chkDelete()' href='admin_MemberDeleteOk?uid="
					+ items[i].member_uid + "'>Delete</a></button></td>"
			result += "</tr>\n";
		}
		
		
		$("#normal").show()		
		$("#search").hide();
		
		$("table#list tbody").html(result); // 테이블 내용 업데이트
		//alert("테이블 내용 업데이트 성공")
		return true;
	} else {
		alert("내용이 없습니다");
		return false;
	}

	return false;
}
	
function search(search_page){

	var search_option = $('.search_option').val().trim();
	var keyword = $('.search_text').val();
	
	
	//alert("검색결과 옵션:["+search_option+"], 검색어:["+keyword+"]");
	
	// AJAX
	$.ajax({
		url : "${pageContext.request.contextPath}/AdminMemberAJAX/admin_MemberManage/" + search_option + "/" + keyword + "/<%=writePages%>/"+search_page,
		type : "GET",
		cache : false,
		success : function(data, status){
			if(status == "success"){
				if (updateSearchList(data)) { // 페이지 업데이트
					// 페이지 로딩이 성공한 뒤라야 현재 페이지 정보 업데이트
				}
			}
		}
	});
	
	document.getElementById("search_page").value = search_page;
}

	
function updateSearchList(jsonObj) {
	result = "";
	if (jsonObj.status == "OK") {
		var cnt = jsonObj.cnt; // 글 총 개수
		var count = jsonObj.count; // 글 개수
		var items = jsonObj.list; // 글 목록
		
		var i;
		
		for (i = 0; i < count; i++) {
			result += "<tr>\n";
			result += "<td>" + items[i].member_name + "</td>\n"
			result += "<td>" + items[i].member_id + "</td>\n"
			result += "<td>" + items[i].member_email + "</td>\n"
			result += "<td>" + items[i].member_tel + "</td>\n"
			result += "<td><a onclick='return chkDelete()' href='MemberDeleteOk?uid="
				+ items[i].member_uid + "'><button class='admin-delete-btn'>Delete</button></a></td>"
			result += "</tr>\n";
		}
		
		
		$("#normal").hide();
		$("#search").show();
		
		$("button#search_next").show();
		
		$("table#list tbody").html(result); // 테이블 내용 업데이트
		
		return true;
	} else {
		alert("내용이 없습니다");
		return false;
	}
}

	
	

function chkDelete() {
	return confirm("삭제하시겠습니까?")
}

</script>

<style>
.menu .hide{display:none;}
</style>

<body>
	<c:choose>
		<c:when test="${empty list || fn.length(list) == 0 }">
데이터가 없습니다<br>
		</c:when>
		<c:otherwise>
		<input type="hidden" id="page" />
		<input type="hidden" id="search_page" />
			<div
				class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
				<div class="app-header header-shadow">
					<div class="app-header__logo">
						<div class="logo">
								<a href="/mgb/main"><img src="${pageContext.request.contextPath}/resources/img/logo.png" style="width:140px"/></a>
						</div>
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
										<a href="admin_MemberManage" class="mm-active"> 
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
										<a href="admin_data"> 
											<i class="metismenu-icon pe-7s-download"></i>데이터 갱신
										</a>
									</li>

								</ul>
							</div>
						</div>
					</div>
					<div class="app-main__outer">

						<div class="app-page-title">

							<h2>회원 관리</h2>

						</div>

						<div class="app-main__inner">
							<div class="admin-search-bar">

								<div class="admin-search-select">

									<select class="form-control-sm form-control search_option"
										name="search_option">
										<option value="member_name">이름</option>
										<option value="member_id">아이디</option>
									</select>

								</div>

								<div class="admin-search-text">

									<input type="text" class="form-control search_text"
										name="keyword" placeholder="내용을 입력해주세요">

								</div>

									<button class="admin-search-bar-btn" onclick="search(1)">검색</button>
							</div>
							<table class="admin-table table-bordered" id="list">

								<thead>
									<tr>
										<th class="table-th-left">회원 이름</th>
										<th>회원 아이디</th>
										<th>회원 이메일</th>
										<th>회원 전화번호</th>
										<th class="table-th-right">삭제</th>
									</tr>
								</thead>
								<tbody>

								</tbody>
							</table>
							<div id="normal">
								<button class="admin-page-btn" type="button" id="normal_prev" aria-label="Previous">이전페이지</button>
								<button class="admin-page-btn" type="button" id="normal_next" aria-label="Next">다음페이지</button>
							</div>
							<div id="search">
								<button class="admin-page-btn" type="button" id="search_prev" aria-label="Previous">이전페이지</button>
								<button class="admin-page-btn" type="button" id="search_next" aria-label="Next">다음페이지</button>
							</div>

						</div>

					</div>
				</div>
			</div>
			<script type="text/javascript" src="${pageContext.request.contextPath}/ADMINCSS/assets/scripts/main.js"></script>
		</c:otherwise>
	</c:choose>
</body>
</html>
