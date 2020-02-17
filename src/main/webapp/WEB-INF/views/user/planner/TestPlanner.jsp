<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "ko">
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
    <meta name="description" content="This is an example dashboard created using build-in elements and components.">
    <meta name="msapplication-tap-highlight" content="no">
    
<title>MGB_Planner 플래너작성</title>

<link href="${pageContext.request.contextPath}/USERCSS/mainplanner.css" rel="stylesheet" text="text/css">
</head>
<body>
    <div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
        <div class="app-header header-shadow">
            <div class="app-header__logo">
                <div class="logo-src"></div>
                <div class="header__pane ml-auto">
                    <div>
                        <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="app-header__mobile-menu">
                <div>
                    <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </button>
                </div>
            </div>
            <div class="app-header__menu">
                <span>
                    <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                        <span class="btn-icon-wrapper">
                            <i class="fa fa-ellipsis-v fa-w-6"></i>
                        </span>
                    </button>
                </span>
            </div>    <div class="app-header__content">
                <div class="app-header-right">
                   
                    <ul class="header-menu nav">
                        <li class="nav-item">
                            <a href="javascript:void(0);" class="nav-link">
                                <i class="nav-link-icon fa fa-database"> </i>
                                Statistics
                            </a>
                        </li>
                        <li class="btn-group nav-item">
                            <a href="javascript:void(0);" class="nav-link">
                                <i class="nav-link-icon fa fa-edit"></i>
                                Projects
                            </a>
                        </li>
                        <li class="dropdown nav-item">
                            <a href="javascript:void(0);" class="nav-link">
                                <i class="nav-link-icon fa fa-cog"></i>
                                Settings
                            </a>
                        </li>
                    </ul>        </div>
             
            </div>
        </div>  <div class="app-main">
                <div class="app-sidebar sidebar-shadow">
                    <div class="app-header__logo">
                        <div class="logo-src"></div>
                        <div class="header__pane ml-auto">
                            <div>
                                <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                                    <span class="hamburger-box">
                                        <span class="hamburger-inner"></span>
                                    </span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="app-header__mobile-menu">
                        <div>
                            <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                        </div>
                    </div>
                    <div class="app-header__menu">
                        <span>
                            <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                                <span class="btn-icon-wrapper">
                                    <i class="fa fa-ellipsis-v fa-w-6"></i>
                                </span>
                            </button>
                        </span>
                    </div>    
                    <div class="scrollbar-sidebar">
                        <div class="app-sidebar__inner">
                            <ul class="vertical-nav-menu">
                                <li class="app-sidebar__heading"><h2>mgb 플래너</h2></li>
                                <li>
                                    <a href="#" class="mm-active">
                                        <i class="metismenu-icon pe-7s-plane"></i>
                                       	 Guest님의 여행목록입니다.
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>    <div class="app-main__outer">
                    <div class="app-main__inner" id="map">
                            <div class="search-wrapper">
                                <div class="input-holder">
                                    <input type="text" class="search-input" placeholder="지역을 검색하세요">
                                    <button class="search-icon"><span></span></button>
                                </div>
                                <button class="close"></button>
                            </div>                      
                       
                        <div style="position:absolute; right:5px; top:30px; background-color: #2196F3; z-index:12; "  class = "go-right">
                            <div class="btn-group">
                                <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="p-0 btn">
                                  <img width="42" class="rounded-circle" src="${pageContext.request.contextPath}/USERCSS/assets/images/avatars/1.PNG" alt="">
                                  GUEST로 작업중
                                  <i class="fa fa-angle-down ml-2 opacity-8"></i>
                              </a>
                             	<div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu dropdown-menu-right">
                                	<h6 tabindex="-1" class="dropdown-header">Guest는 저장을 할 수 없습니다.</h6>
                                	<div tabindex="-1" class="dropdown-divider"></div>
                                	<button type="button" tabindex="0" class="dropdown-item">로그인 하기</button>
                               		<button type="button" tabindex="0" class="dropdown-item">회원가입 하기</button>
                            	</div>
                            </div>
                        </div>
    
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=57cb4002a8435e61d895fd45dcbcb3fe"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.506964, 126.493271),
			level: 10
		};

		var map = new kakao.maps.Map(container, options);
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition,
		    clickable: true// 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
		});
		
		marker.setMap(map);
		
		var iwContent = '<div style="padding:5px;">카카오 본사 <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">여행목록 추가하기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

		// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
	    content : iwContent,
	    removable : iwRemoveable
		});
	    
		// 마커에 클릭이벤트를 등록합니다
		kakao.maps.event.addListener(marker, 'click', function() {
		      // 마커 위에 인포윈도우를 표시합니다
		      infowindow.open(map, marker);  
		});
		
	</script>
			</div>
            </div>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
           
        </div>
    </div>
<script type="text/javascript" src="${pageContext.request.contextPath}/USERCSS/assets/scripts/main.js"></script></body>
</html>
