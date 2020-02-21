<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="This is an example dashboard created using build-in elements and components.">
<meta name="msapplication-tap-highlight" content="no">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>MGB_Planner 플래너작성</title>

<link href="${pageContext.request.contextPath}/USERCSS/mainplanner.css"
	rel="stylesheet" text="text/css">
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<div class="app-header header-shadow">
			<div class="app-header__logo">
				<div class="logo-src"></div>
				<div class="header__pane ml-auto">
					<div>
						<button type="button"
							class="hamburger close-sidebar-btn hamburger--elastic"
							data-class="closed-sidebar">
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
			</div>
			<div class="app-header__mobile-menu">
				<div>
					<button type="button"
						class="hamburger hamburger--elastic mobile-toggle-nav">
						<span class="hamburger-box"> <span class="hamburger-inner"></span>
						</span>
					</button>
				</div>
			</div>
			<div class="app-header__menu">
				<span>
					<button type="button"
						class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
						<span class="btn-icon-wrapper"> <i
							class="fa fa-ellipsis-v fa-w-6"></i>
						</span>
					</button>
				</span>
			</div>
			<div class="app-header__content">
				<div class="app-header-right">

					<ul class="header-menu nav">
						<li class="nav-item"><a href="javascript:void(0);"
							class="nav-link"> <i class="nav-link-icon fa fa-database">
							</i> Statistics
						</a></li>
						<li class="btn-group nav-item"><a href="javascript:void(0);"
							class="nav-link"> <i class="nav-link-icon fa fa-edit"></i>
								Projects
						</a></li>
						<li class="dropdown nav-item"><a href="javascript:void(0);"
							class="nav-link"> <i class="nav-link-icon fa fa-cog"></i>
								Settings
						</a></li>
					</ul>
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
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
				<div class="app-header__menu">
					<span>
						<button type="button"
							class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
							<span class="btn-icon-wrapper"> <i
								class="fa fa-ellipsis-v fa-w-6"></i>
							</span>
						</button>
					</span>
				</div>
				<div class="scrollbar-sidebar">
					<div class="app-sidebar__inner">
						<ul class="vertical-nav-menu">
							<li class="app-sidebar__heading"><h2>mgb 플래너</h2></li>
							<li><a href="#" class="mm-active"> <i
									class="metismenu-icon pe-7s-plane"></i> Guest님의 여행목록입니다.
							</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="app-main__outer">
				<div class="app-main__inner" id="map">
					<div class="search-wrapper">
						<div class="input-holder">
							<input type="text" class="search-input" placeholder="지역을 검색하세요">
							<button class="search-icon">
								<span></span>
							</button>
						</div>
						<button class="close"></button>
					</div>

					<div
						style="position: absolute; right: 5px; top: 30px; background-color: #2196F3; z-index: 12;"
						class="go-right">
						<div class="btn-group">
							<a data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false" class="p-0 btn"> <img width="42"
								class="rounded-circle"
								src="${pageContext.request.contextPath}/USERCSS/assets/images/avatars/1.PNG"
								alt=""> GUEST로 작업중 <i
								class="fa fa-angle-down ml-2 opacity-8"></i>
							</a>
							<div tabindex="-1" role="menu" aria-hidden="true"
								class="dropdown-menu dropdown-menu-right">
								<h6 tabindex="-1" class="dropdown-header">Guest는 저장을 할 수
									없습니다.</h6>
								<div tabindex="-1" class="dropdown-divider"></div>
								<button type="button" tabindex="0" class="dropdown-item">로그인
									하기</button>
								<button type="button" tabindex="0" class="dropdown-item">회원가입
									하기</button>
							</div>
						</div>
					</div>

					<script type="text/javascript"
						src="//dapi.kakao.com/v2/maps/sdk.js?appkey=57cb4002a8435e61d895fd45dcbcb3fe"></script>
					<script>
						var locations = new Array();
						var container = document.getElementById('map');
						var options = {
							center : new kakao.maps.LatLng(33.506964,
									126.493271),
							level : 10
						};
						var map = new kakao.maps.Map(container, options);

						// AJAX컨트롤
						var url = "${pageContext.request.contextPath}/AJAXLocal/list";
						$.ajax({
							url : url,
							type : "GET",
							cache : false,
							success : function(data, status) {
								if (status == "success") {
									parseJSON(data);
								}
								;
							}
						});//end ajax

						function parseJSON(jsonObj) {
							var count = jsonObj.count;
							var list = jsonObj.list;
							var arrLat = new Array();
							var arrLng = new Array();

							for (var i = 0; i < count; i++) {
								// 마커 좌표 배열담아주기
								locations.push({
									content : '<div style="padding:5px;">'+list[i].local_name+'<br></div>',
									latlng : new kakao.maps.LatLng(
											parseFloat(list[i].local_lat),
											parseFloat(list[i].local_lng))
								});
								console.log(locations[i]);
							}
							console.log(locations.length);
							var imageSrc = "${pageContext.request.contextPath}/USERCSS/assets/images/marker.png"

							for (var i = 0; i < locations.length; i++) {

								// 마커 이미지의 이미지 크기 입니다
								var imageSize = new kakao.maps.Size(35, 35);

								// 마커 이미지를 생성합니다    
								var markerImage = new kakao.maps.MarkerImage(
										imageSrc, imageSize);

								// 마커를 생성합니다
								var marker = new kakao.maps.Marker({
									map : map, // 마커를 표시할 지도
									position : locations[i].latlng, // 마커를 표시할 위치
									image : markerImage
								// 마커 이미지 
								});

								// 인포윈도우를 생성합니다
								var infowindow = new kakao.maps.InfoWindow({
									content : locations[i].content
								});

								// 마커에 이벤트를 등록하는 함수 만들고 즉시 호출하여 클로저를 만듭니다
							    // 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
								(function(marker, infowindow) {
							        // 마커에 mouseover 이벤트를 등록하고 마우스 오버 시 인포윈도우를 표시합니다 
							        kakao.maps.event.addListener(marker, 'click', function() {
							            infowindow.open(map, marker);
							        });

							        // 마커에 mouseout 이벤트를 등록하고 마우스 아웃 시 인포윈도우를 닫습니다
							        kakao.maps.event.addListener(marker, 'mouseout', function() {
							            infowindow.close();
							        });
							    })(marker, infowindow);
							

							}
						} //end parseJSON
					</script>
				</div>
			</div>


		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/USERCSS/assets/scripts/main.js"></script>
</body>
</html>
