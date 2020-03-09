<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

function chklocal() {

	frm = document.forms['local_frm'];
	
	var local_name = frm['local_name'].value.trim();
	var local_loc = frm['local_loc'].value.trim();
	var local_lat = frm['local_lat'].value.trim();
	var local_lng = frm['local_lng'].value.trim();
	
	if(local_name == ""){
		alert("관광지 이름을 입력해주세요")
		frm['local_name'].focus();
		return false;
	}
	if(local_loc == ""){
		alert("관광지 이름을 입력해주세요")
		frm['local_loc'].focus();
		return false;
	}
	/*
	if(local_lat == ""){
		alert("관광지 위도을 입력해주세요")
		frm['local_lat'].focus();
		return false;
	}
	if(local_lng == ""){
		alert("관광지 경도을 입력해주세요")
		frm['local_lng'].focus();
		return false;
	}
	*/
	return true;
}

function search_local_addr() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("local_loc").value = addr;
			
            // 좌표 변환 -
            var geocoder = new kakao.maps.services.Geocoder();
        	
        	var local = document.getElementById("local_loc").value;
        	
        	var callback = function(result, status) {
        	    if (status === kakao.maps.services.Status.OK) {
        	        console.log(result);
        	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
        			
        	        var local_lat = result[0].y
        	        var local_lng = result[0].x
        	        /*
        	        alert("위도 : " + local_lat);
        	        alert("경도 : " + local_lng);
        	        */
        	        document.getElementById("local_lat").value = local_lat;
        	        document.getElementById("local_lng").value = local_lng;
        	        
        	        

        	    }
        	};
        	geocoder.addressSearch(local, callback);
        	// - 좌표 변환
        	
        }
    }).open();
}

</script>

<style>

.form-control{
	margin: 0 25%;
	width: 50%;
}

.addr{
	margin: 0 0 0 25%;
	width:40%;
	float:left;
}

.addr_btn{
	width:10%;
	float:left;
}

</style>

<body>
	

			<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
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
										<a href="admin_MemberManage"> 
											<i class="metismenu-icon pe-7s-users"></i>회원 관리
										</a>
									</li>

									<li>
										<a href="admin_LocalManage">
											<i class="metismenu-icon pe-7s-mouse"></i>관광지 관리
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

								</ul>
							</div>
						</div>
					</div>
					<div class="app-main__outer">

						<div class="app-page-title">

							<h2>관광지 추가</h2>

						</div>

						<div class="app-main__inner">
							
							<form name="local_frm" action="admin_AddLocalOk" enctype="multipart/form-data" method="post" onsubmit="return chklocal()">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								<input class="form-control" id="local_name" name="local_name" type="text" placeholder="관광지 이름">
								<br><br>
								<textarea class="form-control" name="local_hello" placeholder="관광지 소개"></textarea>
								<br><br>
								<div style=padding-bottom:35px;>
								<input class="form-control addr" id="local_loc" name="local_loc" type="text"  placeholder="주소">
								<input class="admin-search-bar-btn addr_btn" type="button" onclick="search_local_addr()" value="주소 검색">
								</div>
								<br><br>
								<input class="form-control" id="local_tel" name="local_tel" type="text" placeholder="관광지 번호">
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
									 
								<br><br>
								

								<input id="local_lat" name="local_lat" type="hidden" placeholder="위도">
								<input id="local_lng" name="local_lng" type="hidden" placeholder="경도">
								<input class="admin-search-bar-btn"  type="submit" id="add_local_btn" value="추가하기">
								
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
