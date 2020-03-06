<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/mainpage.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/slick.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/slicktheme.css">
    <title>귤귤 플래너</title>
    <style>

    .slick-slide {
      margin: 0px 20px;
    }

    .slick-slide img {
      width: 100%;
    }

    .slick-prev:before,
    .slick-next:before {
      color: black;
    }


    .slick-slide {
      transition: all ease-in-out .3s;
      opacity: .2;
    }
    
    .slick-active {
      opacity: .5;
    }

    .slick-current {
      opacity: 1;
    }
    </style>
</head>
<body>
   <div class="wrap">
      <header>
         <div class="mgb_header">
                <div class="mgb_inner_wrap">
                    <nav class="gnb_container">
                        <h1 class="mgb_logo"><a href="/"><img src="${pageContext.request.contextPath}/USERCSS/assets/images/marker.png">귤귤플래너</a></h1>
                        <ul class="on_pc">
                            <li class="gnb_item"><a href="/">예약내역</a></li>
                            <li class="gnb_item"><a href="/">고객센터</a></li>
                            <li class="gnb_item"><a href="/">로그인</a></li>
                            <li class="gnb_item"><a href="/">회원가입</a></li>
                        </ul>
                    </nav>
                    <nav class="lnb_container">
                        <ul class="lnb_wrap">
                            <li class="lnb_item"><a href="/">홈</a></li>
                            <li class="lnb_item"><a href="/">플래너</a></li>
                            <li class="lnb_item"><a href="/">제주여행</a></li>
                            <li class="lnb_item"><a href="/">숙소</a></li>
                            <li class="lnb_item"><a href="/">템플릿</a></li>
                        </ul>
                        <div>
                            <a href="#"><i class="ico_search"></i></a>
                        </div>
                    </nav>
                </div>
         </div>
        </header>
        <main>
            <section class="section1">
                <div class="mgb_inner_wrap">
                    <div class="sec1_left">
                        <div class="sec1_img">
                            <img style = "height: 300px; width: 100%;"src="${pageContext.request.contextPath}/USERCSS/assets/images/main.jpg">
                        </div>
                    </div>
                    <div class="sec1_right">
                        <div>
                            <div>
                                <h3>
                                당신의 상상속 제주여행을 귤귤플래너에서 실현하세요.
                                제주 여행 맞춤 플래너와 투어 숙소등을 확인하시고 예약하세요.
                                다른 여행자들의 플래너를 확인하시고, 자신의 플래너에 도움을 받으세요.
                                </h3>
                            </div>
                            <div class="sec1_right_bot">
                                <div class="sec1_right_rw">
                                    <a href="${pageContext.request.contextPath}/plan/planner">플래너 시작</a>
                                </div>
                                <div class="sec1_right_lw">
                                    <a href="#">맞춤여행 의뢰</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="section2">
                <div class="mgb_inner_wrap">
                    <div>
                        <h3>다른 여행자들의 플래너 855,014개</h3>
                    </div>
                    <div>
                        <ul>
                            <li>최신순으로 정렬되었습니다.</li>
                        </ul>
                    </div>
                    <div class="new">
                        <ul>
                            <li id = "map0"></li>
                            <li id = "map1"><a href="#"></a></li>
                            <li id = "map2"><a href="#"></a></li>
                            <li id = "map3"><a href="#"></a></li>
                        </ul>
                        <a onclick = showDetail(0);>자세히 보기</a>
                        <a onclick = showDetail(1);>자세히 보기</a>
                        <a onclick = showDetail(2);>자세히 보기</a>
                        <a onclick = showDetail(3);>자세히 보기</a>
                    </div>
                </div>
            </section>

            <section class="section3">
                <div class="mgb_inner_wrap">
                    <div>
                        <h3>유럽 현지투어 얼리버드 & 결합 SALE</h3>
                    </div>
                    <div class="sale">
                        <ul>
                            <li><a href="#">aaaaaaa</a></li>
                            <li><a href="#">bbbbb</a></li>
                            <li><a href="#">ccccccccc</a></li>
                            <li><a href="#">ddddddd</a></li>
                            <li><a href="#">eeeeeeeee</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">fffff</a></li>
                            <li><a href="#">gggggg</a></li>
                            <li><a href="#">hhhhhhh</a></li>
                            <li><a href="#">iiiiiiiiiii</a></li>
                            <li><a href="#">jjjjjjjjjj</a></li>
                        </ul>
                    </div>
                </div>
            </section>

            <section class="section4">
                <div class="mgb_inner_wrap">
                    <div>
                        <h3>다른 여행자들의 플래너 2개</h3>
                    </div>
                    <div>
                        <ul>
                            <li>최신순으로 정렬되었습니다.</li>
                        </ul>
                    </div>
                    <div>
                        <section class="regular slider">
                            <div>
                              <img src="http://placehold.it/350x300?text=1">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=2">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=3">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=4">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=5">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=6">
                            </div>
                          </section>    
                    </div>
                    <div>
                        <h3>얼리버드 추천</h3>
                    </div>
                    <div>
                        <section class="center slider">
                            <div>
                              <img src="http://placehold.it/350x300?text=1">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=2">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=3">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=4">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=5">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=6">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=7">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=8">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=9">
                            </div>
                          </section>
                    </div>
                </div>
            </section>
        </main>
        <footer>


        </footer>
   </div>
</body>
<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
  <script src="${pageContext.request.contextPath}/USERJS/slick.js" type="text/javascript" charset="utf-8"></script>
  <script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=57cb4002a8435e61d895fd45dcbcb3fe"></script>
  <script type="text/javascript">
    $(document).on('ready', function() {
      $(".regular").slick({
        dots: false,
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3,
      });

      $(".center").slick({
        dots: false,
        infinite: true,
        centerMode: true,
        slidesToShow: 4,
        slidesToScroll: 1
      });
      PlannerUid();
    });
    
    var view_planner_uid = new Array();
    // 검색되는 플래너 UID가져오기
    function PlannerUid(){
    	var url = "${pageContext.request.contextPath}/AJAXMain/listCnt";
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
			center : new kakao.maps.LatLng(33.506964, 126.493271),
			level : 12
		};
		var map = new kakao.maps.Map(container, options);
		
		
	
		for (var i = 0; i < count; i++) {
           	// 마커 좌표 배열담아주기
			locations.push({
				latlng : new kakao.maps.LatLng(
						parseFloat(list[i].local_lat),
						parseFloat(list[i].local_lng)),
			});
			
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
				position : locations[i].latlng, // 마커를 표시할 위치
				image : markerImage,
				title : locations[i].local_name
			});
		
			
		}
		
		map.setZoomable(false);  
		
	} //end updateView
	
	function showDetail(index){
		alert(view_planner_uid[index]);
		location.href = "${pageContext.request.contextPath}/plan/showplanner";
	}
    
    
    
</script>
</html>