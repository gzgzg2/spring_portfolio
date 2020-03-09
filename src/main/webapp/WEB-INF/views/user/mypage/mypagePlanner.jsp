<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>마이페이지 | 내플래너</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

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
    <script src="https://kit.fontawesome.com/e68b5cc3ca.js" crossorigin="anonymous"></script>
    
    <style>
    	.nice-select {
			width: 100%;
			margin: 20px 0px;
		}
		
		.paging p {
			text-align: center;
			padding-top: 670px;
		}
		.paging > p > span { padding-left: 5px; }
		.paging_button {
			width: 62px;
			margin: 0 auto;
		}
		.paging_button button {
			border: none;
			background-color: white;
			color: #8EC0E4;
		}
    	.reserve { width: 85%; margin: 0 auto; }
    	.reserve_row { margin: 20px 0px; }
    	.item { 
    		width: 45%;
    		float: left;
    		border: 3px solid #8EC0E4;
    		border-radius: 15px;
    		margin: 7px;
    	}
    	.item > div { padding: 15px; }
    	.item_header { height: 80px; background-color: #8EC0E4; }
    	.item_header h5 { font-size: 1.2em; font-weight: 500; color: white; text-shadow: 0px 2px 5px #6AAFE6; }
    	.item_header h6 { font-weight: bold; margin-top: 5px; }
    	.item_body { margin: 0px 10px; }
    	.item_body table { width: 100%; }
    	.item_body td  { text-align: right; }
    	.item_footer {
    		width: 80%;
    		margin: 0 auto;
    	}
    	.item_footer button {
    		padding: 10px 18px;
    		margin-bottom: 20px;
    		background-color: #8EC0E4;
    		border: none;
    		font-weight: 500;
    		color: white;
    	}
    	.item_footer button:hover { background-color: #6AAFE6; }
    </style>
</head>

<body>
    <c:choose>
		<c:when test="${not empty sessionScope.loginUid}">
			<jsp:include page="../topMenuIncludeMyPage.jsp"/>
		</c:when>
		
		<c:otherwise>
			<jsp:include page="../topMenuIncludeMyPage.jsp"/>
		</c:otherwise>
   	</c:choose>

   <section id="member" style="height: 110%;">
       <div id="memDiv">
           <h2 id="memberH2">마이페이지</h2>
           <div id="side">
                <nav id="sidenav">
                    <ul id="sideul">
                      	<li><a href="${pageContext.request.contextPath}/user/mypage/mypageInfo"><i class="fa fa-id-card-o" aria-hidden="true"></i>&nbsp;&nbsp;개인정보</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/mypage/mypageReview"><i class="fa fa-file-text-o" aria-hidden="true"></i>&nbsp;&nbsp;리뷰관리</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/mypage/mypageReserve"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;&nbsp;예약관리</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/mypage/mypagePlanner"><i class="fa fa-plane" aria-hidden="true"></i>&nbsp;&nbsp;내플래너</a></li>
                    </ul>
                </nav>
            </div>

            <div id="memberForm" style="height: 91%">
                <h2 id="frmH2">내플래너</h2>
            
                <div class="mapwrap">
                 
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
      <script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=57cb4002a8435e61d895fd45dcbcb3fe"></script>
    <script>
    $(document).ready(function() {
        PlannerUid();
      });
    var polyline = new Array();
      var view_planner_uid = new Array();
      // 검색되는 플래너 UID가져오기
      function PlannerUid(){
      	var url = "${pageContext.request.contextPath}/AJAXMain/mypagelistCnt/${sessionScope.loginUid }";
  		$.ajax({
  			url : url,
  			type : "GET",
  			cache : false,
  			success : function(data, status) {
  				if (status == "success") {
  					View(data);
  				};
  			}
  		});//end ajax
      }
      
   function View(jsonObj){
  		var list = jsonObj.list;
  		var count = jsonObj.count;
  		for (var i = 0; i < count; i++) {
  			var planner_uid = list[i].planner_uid;
  			
  			var html = 
  			'<div id = "map'+i+'" style = "width: 47%; margin :1%; margin-left: 1.3%; height: 250px; float: left;"></div>';
  			
  			$('.mapwrap').append(html);
  			
  			descPlanner(planner_uid,i);
  			view_planner_uid.push(planner_uid);
  		}
  	} //end 
      

      function descPlanner(planner_uid,i){
      	var url = "${pageContext.request.contextPath}/AJAXMain/list/"+planner_uid+"";
  		$.ajax({
  			url : url,
  			type : "GET",
  			cache : false,
  			success : function(data, status) {
  				if (status == "success") {
  					updateView(data,i);
  				};
  			}
  		});//end ajax
      }
         
      // 플래너 업데이트 
      function updateView(jsonObj,i){

      	var count = jsonObj.count;
  		var list = jsonObj.list;
  		var arrLat = new Array();
  		var arrLng = new Array();
  		var locations = new Array();
  		
  		
  		
  		
  		var container = document.getElementById('map'+i+'');
  		var options = {
  			center : new kakao.maps.LatLng(33.377949, 126.540633),
  			level : 11
  		};
  		var map = new kakao.maps.Map(container, options);
  		
  		
  	
  		for (var i = 0; i < count; i++) {
             	// 마커 좌표 배열담아주기
  			locations.push(new kakao.maps.LatLng(
					parseFloat(list[i].local_lat),
					parseFloat(list[i].local_lng))
		);
  			
  		}
  		
  		polyline = new kakao.maps.Polyline({
  			   
  		    strokeWeight: 5, // 선의 두께 입니다
  		    strokeColor: '#000000', // 선의 색깔입니다
  		    strokeOpacity: 0.5, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
  		    strokeStyle: 'solid', // 선의 스타일입니다
  		    endArrow: true,
  		    zIndex:20,
  		    setPath : locations
  		});
  		
  		var imageSrc = "${pageContext.request.contextPath}/USERCSS/assets/images/marker.png"

  		for (var i = 0; i < locations.length; i++) {

  			// 마커 이미지의 이미지 크기 입니다
  			var imageSize = new kakao.maps.Size(13, 13);

  			// 마커 이미지를 생성합니다    
  			var markerImage = new kakao.maps.MarkerImage(imageSrc,
  					imageSize);

  			// 마커를 생성합니다
  			var marker = new kakao.maps.Marker({
  				zIndex: 1,
  				map : map, // 마커를 표시할 지도
  				position : locations[i], // 마커를 표시할 위치
  				image : markerImage
  			});
  		
  			
  		}
  		polyline.setPath(locations);
		polyline.setMap(map);
  		map.setZoomable(false);  
  		
  	} //end updateView
    </script>
</body>

</html>