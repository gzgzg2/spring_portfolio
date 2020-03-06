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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>귤귤_Planner</title>
<link href="${pageContext.request.contextPath}/USERCSS/mainplanner.css"
	rel="stylesheet">
<style>
	.modal_layer {
            position:fixed;
            top:0;
            left:0;
            width:100%;
            height:100%;
            background:rgba(0, 0, 0, 0.5);
            z-index: 10;
        }
        .modal_inner {
            width:600px;
            height:650px;
            margin: 3.5% auto 0px auto;
            background: #eeeeee;
            z-index: 10;
        }   
        .modal_top h3 {
            position: relative;
            bottom: 30px;
            text-align: center;
        }
        .modal_top div {
            width: 98%;
            font-size: 50px;
            text-align: right;
        }
        .modal_description {
            padding: 30px;
        }
        .modal_button div button {
            width: 20%;
            height: 35px;
            border: none;
        }
        .modal_prev button {
            margin-left: 60%;
            background-color: #fff;
        }
        .modal_next button {
            margin-left: 20%;
            color: white;
            background-color: #dfa974;
        }
</style>
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
							<li class="app-sidebar__heading"><h2>귤귤 플래너</h2></li>
							<li>
								<a class="mm-active"> <i class="metismenu-icon pe-7s-plane"></i> Guest님의 여행목록입니다.</a>
								<a class="mm-active"> <i class="metismenu-icon pe-7s-paper-plane"></i> 출발일자 : <input id="start_time" type="date"/> 
								
								</a>	
												
							</li>
						</ul>
						<form id="planListForm" method="get" action="${pageContext.request.contextPath}/plan/saveOk" onsubmit="return saveOk()">
						<div id = "planList" style="overflow:auto; height:300px;">
						
						</div>
						<input type="submit" value="제출"/>
						</form>
					</div>
					
				</div>
				
			</div>
			
			
			
				<div class="app-main__inner" id="map">
					<div class="search-wrapper">
						<div class="input-holder">
							<input type="text" class="search-input" placeholder="지역을 검색하세요">
							<button class="search-icon" onclick="Search()">
								<span></span>
							</button>
						</div>
						<button class="close"></button>
					</div>

					<div
						style="position: absolute; right: 5px; top: 30px; background-color: #2196F3; z-index: 12;"
						class="go-right">
						
							<a class="p-0 btn" onclick="planListForm.submit()">
							
							<img width="42px" class="rounded-circle" src="${pageContext.request.contextPath}/USERCSS/assets/images/avatars/1.PNG"
								alt=""> 플래너 저장하기
								
								<!-- <input value="플래너 저장하기" type="button" onclick="planListForm.submit()"> --> 
							</a>
							
<!-- 						
						<div class="btn-group">
							<a data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false" class="p-0 btn"> <img width="42"
								class="rounded-circle"
								src="${pageContext.request.contextPath}/USERCSS/assets/images/avatars/1.PNG"
								alt=""> GUEST로 작업중/Guest는 저장 할 수 없습니다. <i
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
						</div> -->
					</div>
				</div>
			</div>
		</div>
	

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=57cb4002a8435e61d895fd45dcbcb3fe"></script>
	<script>
		var index = 0;
		var arr = new Array();
		var polyline = new Array();
		var linePath = new Array();
		var planSchedule = new Array();
		var today = new Date();
		var day = today.getDate();
		var month = today.getMonth();
		var year = today.getFullYear();
		
		
		polyline = new kakao.maps.Polyline({
			   
			
		    strokeWeight: 5, // 선의 두께 입니다
		    strokeColor: '#000000', // 선의 색깔입니다
		    strokeOpacity: 0.5, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		    strokeStyle: 'solid', // 선의 스타일입니다
		    endArrow: true,
		    zIndex:20
		});
		var locations = new Array();
		var container = document.getElementById('map');
		var options = {
			center : new kakao.maps.LatLng(33.506964, 126.493271),
			level : 10
		};
		var map = new kakao.maps.Map(container, options);

		// AJAX컨트롤
		var url = "${pageContext.request.contextPath}/AJAXMain/list/"+2+"";
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
				// content내용작성
				var content = document.createElement('div')
				content.className = 'wrap';
				content.innerHTML = '    <div class="info">' + 
	           						'        <div class="title">' + list[i].local_name + 
	          						'            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
	            					'        </div>' + 
	            					'        <div class="body">' + 
	            					'            <div class="img">' +
	            					'                <img src="${pageContext.request.contextPath}/USERCSS/assets/images/marker.png" width="73" height="70">' +
	            					'           </div>' + 
	            					'            <div class="desc">' + 
	            					'                <div class="ellipsis">'+list[i].local_hello+'</div>' + 
	            					'                <div class="jibun ellipsis">tel : '+list[i].local_tel+'</div>' + 
	            					'                <div><button class="Add" onclick="Add('+list[i].local_uid+')">지역 추가하기</button></div>' + 
	            					'            </div>' + 
	            					'        </div>' + 
	            					'    </div>';
				
	           	// 마커 좌표 배열담아주기
				locations.push({
					content :content,
					latlng : new kakao.maps.LatLng(
							parseFloat(list[i].local_lat),
							parseFloat(list[i].local_lng)),
					local_name : list[i].local_name
				});
				
			}
			
			
			var imageSrc = "${pageContext.request.contextPath}/USERCSS/assets/images/marker.png"

			for (var i = 0; i < locations.length; i++) {

				// 마커 이미지의 이미지 크기 입니다
				var imageSize = new kakao.maps.Size(25, 25);

				// 마커 이미지를 생성합니다    
				var markerImage = new kakao.maps.MarkerImage(imageSrc,
						imageSize);

				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
					zIndex: 1,
					map : map, // 마커를 표시할 지도
					position : locations[i].latlng, // 마커를 표시할 위치
					//image : markerImage,
					title : locations[i].local_name
					
				// 마커 이미지 
				});
				

				// 인포윈도우를 생성합니다
				var overlay = new kakao.maps.CustomOverlay({
					content : locations[i].content,
					map: map,
					position: marker.getPosition(),
					zIndex: 2,
					clickable:true
				});
				overlay.setMap(null);

				// 마커에 이벤트를 등록하는 함수 만들고 즉시 호출하여 클로저를 만듭니다
				// 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
				(function(marker, overlay) {
					// 마커에 mouseover 이벤트를 등록하고 마우스 오버 시 인포윈도우를 표시합니다 
					kakao.maps.event.addListener(marker, 'click', function() {
						overlay.setMap(map);
						map.setLevel(9);
						map.setCenter(marker.getPosition());
					});

					// 마커에 mouseout 이벤트를 등록하고 마우스 아웃 시 인포윈도우를 닫습니다
					kakao.maps.event.addListener(map, 'click', function () {
						overlay.setMap(null);
					});
				})(marker, overlay);	
			}
		} //end parseJSON
	
		//Add 버튼이 눌렀을때 DIV추가
		function Add(local_uid) {
			
			var url = "${pageContext.request.contextPath}/AJAXLocal/AddPlan/"+local_uid+"";
			$.ajax({
				url : url,
				type : "GET",
				cache : false,
				success : function(data, status) {
					if (status == "success") {
						planList(data);
					};
				}
			});//end ajax
			
		// DIV내용 구성
		function planList(jsonObj) {
			
			var html = 
			'<ul style="margin-top:10px" lat = "'+jsonObj.local_lat+'" lng = "'+jsonObj.local_lng+'" uid = "'+jsonObj.local_uid+'" pid = "'+index+'">'
			+ '<li id = "local_name">여행지 : '+jsonObj.local_name+'</li>'
			+ '<li>숙박일 : </li><input type="text" id = "stay'+index+'" name = "stay'+index+'"/>박'
			+ '<li>교통수단 : </li><input type="text" id = "trans'+index+'" name = "trans'+index+'"/>'
			
			+ '</ul>';
			arr.push(index);
			$('#planList').append(html);
			index++;
		//	PlanList.push({
		//		latlng: new kakao.maps.LatLng(jsonObj.local_lat,jsonObj.local_lng)
		//	});
		
			linePath.push(new kakao.maps.LatLng(parseFloat(jsonObj.local_lat),parseFloat(jsonObj.local_lng)));
			polyline.setPath(linePath);
			
			line();
			polyline.setMap(null);
			// 지도에 선을 표시합니다 
			polyline.setMap(map);
			}
			
		};


		// 검색기능
		function Search() {
			var a = $('.search-input').val().trim();
			if(a != ""){
				if(a.length <= 1){
					alert("검색어는 두글자 이상 입력해주세요");
				}else{
					
					var url = "${pageContext.request.contextPath}/AJAXLocal/Search/"+a+"";
					$.ajax({
						url : url,
						type : "GET",
						cache : false,
						success : function(data, status) {
							if (status == "success") {
								SearchList(data);
							};
						}
					});//end ajax
				}
			}
		};// end Search()
		
		function SearchList(jsonObj) {
			//데이터가져와서 특정 오버레이 오픈시켜주기
			var count = jsonObj.count;
			var list = jsonObj.list;
			if(count == 0){
				alert("검색된 결과가 없습니다. 검색어를 확인해주세요")
			}else if(count == 1){
				
				var myLatlng = new kakao.maps.LatLng(list[0].local_lat,list[0].local_lng);
				
				overlay = new kakao.maps.CustomOverlay();
				var content = document.createElement('div')
				content.className = 'wrap';
				content.innerHTML=
					'   <div class="info">' + 
					'        <div class="title">' + list[0].local_name + 
					'            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
					'        </div>' + 
					'        <div class="body">' + 
					'            <div class="img">' +
					'                <img src="${pageContext.request.contextPath}/USERCSS/assets/images/marker.png" width="73" height="70">' +
					'            </div>' + 
					'            <div class="desc">' + 
					'                <div class="ellipsis">'+list[0].local_hello+'</div>' + 
					'                <div class="jibun ellipsis">tel : '+list[0].local_tel+'</div>' + 
					'                <div><button class="Add" onclick="Add('+list[0].local_uid+')">지역 추가하기</button></div>' + 
					'            </div>' + 
					'        </div>' + 
					'    </div>';
				overlay.setContent(content);
				overlay.setPosition(myLatlng);		
				map.setLevel(9);
				map.setCenter(myLatlng);
				overlay.setMap(map);
				
			}else{
				alert("2개 이상의 결과가 존재합니다. 조금 더 정확한 검색어를 입력해주세요")
			}
		};
		
		// 오버레이 삭제
		function closeOverlay() {

			overlay.setMap(null);
			};
		
		// 선긋기
		function line() {
			
			$('#planList').sortable({
				cursor : 'move',
				opacity : 0.5,
				update:function(){
					
					lineLat = $('#planList').sortable('toArray',{attribute: "lat"});
					lineLng = $('#planList').sortable('toArray',{attribute: "lng"});
					planLocalUid = $('#planList').sortable('toArray',{attribute: "uid"});
					planindex = $('#planList').sortable('toArray',{attribute: "pid"});
						// 지도에 표시할 선의 위치배열을 생성합니다
						linePath = [];
						planSchedule = [];
						arr = [];
						for (var i = 0; i < lineLat.length; i++) {
							linePath.push(new kakao.maps.LatLng(parseFloat(lineLat[i]),parseFloat(lineLng[i])));
							arr.push(planindex[i]);
							// 변경되면 모든 숙박일과 교통수단을 초기화
							
							
							planSchedule.push({
								plan_local_uid : planLocalUid[i],
								plan_next_local_uid : planLocalUid[i+1]
								});
							
							polyline.setPath(linePath);	
						}
						
					}// end UpdateFunction
				
			});// end sortable()
			$('#planList').disableSelection();
		};
		
		function saveOk() {
			//일정이 없을때는 실행 안되게 막아주기
			alert("들어오니?");
			if($('#trans0').val() == null){
				alert("최소 한 곳 이상의 여행지를 선택해주세요.");
				return false;
			}else{
				return true;
			}
			return false;
		};
		
	</script>


	<script type="text/javascript"
		src="${pageContext.request.contextPath}/USERCSS/assets/scripts/main.js"></script>
</body>
</html>
