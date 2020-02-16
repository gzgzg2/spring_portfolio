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
    <title>Sona | Template</title>

    <!-- Calendar -->
	<script type="text/javascript" src="./calendar_trial/codebase/calendar.js?v=6.4.1"></script>
	<link rel="stylesheet" href="./calendar_trial/codebase/calendar.css?v=6.4.1">
	<link rel="stylesheet" href="./calendar_trial/samples/common/index.css?v=6.4.1">
	<link rel="stylesheet" href="./calendar_trial/samples/common/calendar.css?v=6.4.1">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <style>
        .tour_info, .comment-option {
            padding-top: 20px;
        }
        .bd-title>ul>li {
            list-style: none;
            font-size: 1.2em;
        }

        .bd-title > ul > li {
            list-style: none;
            font-size: 1.2em;
            float: left;
            margin: 0px 20px;
        }

        .bd-title > ul > li:nth-child(1), .bd-title > ul > li:nth-child(3), .modal_layer .icon_close {
            cursor: pointer;
        }
        .bd-hero-text div {
            width: 30%;
            margin: 0 auto;
        }
        .bd-hero-text div button {
            color: white;
            font-weight: bold;
            width: 100%;
            margin-top: 10px;
            padding: 10px 20px;
            border: 1px solid #dfa974;
            border-radius: 5px;
            background-color: #dfa974;
        }

        .modal_layer {
            display: none;
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

        .comment-option {
            display: none;
        }

        .comment-option i {
            color: rgb(255,167,38);
        }
        .comment-option h3, .comment-option h5, .comment-option .star_avg {
            text-align: center;
        }
        .comment-option h5 {
            padding-bottom: 10px;
            border-bottom: 1px solid #ebebeb;
            margin-bottom: 10px;
        }
    </style>

    <!-- Css Styles -->
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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/detailN.css">
</head>

<body>
    <!-- Header Section Begin -->
	<jsp:include page="../userHeader.jsp"/>
    <!-- Header End -->

    <!-- Blog Details Hero Section Begin -->
    <section class="blog-details-hero set-bg" data-setbg="img/blog/blog-details/blog-details-hero.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="bd-hero-text">
                        <span>투어</span>
                        <h2 style="white-space: nowrap;">${dto[0].tour_name }</h2>
                        <ul>
                            <li class="b-time"><i class="icon_clock_alt"></i> ${dto[0].tour_period }박 ${dto[0].tour_period + 1 }일</li>
                            <li><i class="icon_star"></i> 9.5</li>
                        </ul>
                        <div>
                            <button onclick="openModal()">
                                예약 하기
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Hero End -->

    <!-- Blog Details Section Begin -->
    <section class="blog-details-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="blog-details-text">
                        <div class="bd-title">
                        <div class="bd-title">
                            <ul>
                                <li>기본 루트&일정</li>
                                <li>|</li>
                                <li>리뷰</li>
                            </ul>
                        </div>
                        <div class="tour_info" style="clear: both;">
                            <div class="date-detail dayArea_1 j_scheduleDetail">
                                <div class="day-info">
                                    <strong class="tit j_parentOfScheduleDate">1일차 <span class="j_scheduleDate">2020.03.02 (월)</span></strong>
                                    <div class="comment">
                                        <p class="eat">조-개별식,중-개별식,석-자유식</p>
                                        <p class="">  </p>
                                        <p class=""></p>
                                    </div>
                                </div>
        
                                    <ul class="day-schedule">
                                            <li>김포공항출발</li>
                                            <li>제주공항도착</li>
                                            <li>수목원테마파크</li>
                                            <li>석식☞자유식</li>
                                            <li>호텔이동</li>
        
                                    </ul>
        
        
        
        
                                    <div class="total-sch">
                                            <div class="spot-area">
                                                    <strong class="title"><em>PM 15:00 전후</em> 김포공항출발</strong>
        
                                            </div>                                    <div class="spot-area">
                                                
                                                        
                                                </div>
                                            <div class="spot-area">
                                                    <strong class="title"><em> </em> 제주공항도착</strong>
            <div class="html-box">        
                <div class="detail-data">
                    <span style="FONT-FAMILY: '나눔고딕코딩',NanumGothicCoding,Sans-serif">- [아시아나연합, 손님성함] 피켓 확인 후 가이드미팅</span>
                </div>
            </div>
        
                                            </div>                                    <div class="spot-area">
                                                
                                                        
                                                </div>
                                            <div class="spot-area">
                                                    <strong class="title"><em> </em> 수목원테마파크</strong>
                <div class="spot-type1">
                    <span class="thumb"><img alt="수목원테마파크(아이스뮤지엄)" src="http://tong.visitkorea.or.kr/cms/resource/88/2553688_image2_1.bmp" onerror="setDefaultImg(this , 280)"></span>
                    <span class="tit">수목원테마파크(아이스뮤지엄)</span>
                    <span class="data" title="수목원테마파크(아이스뮤지엄)에는 다양한 얼음 조각전시와 관람객들이 직접 체험할 수 있는 이글루, 대형 아이스 미끄럼틀로 더욱 재미있는 공간을 연출하였다.아이들이 더욱 좋아하는 5D영상관과 그림이 살아 움직이는 증강현실 착시아트가 있어 더욱 실감나는 AR증강현실 체험을 할 수 있다. 그 외 플레이박스(가상현실체험)와 수목원길(LED공원) 다양한 식당가들이 있다.<br>">수목원테마파크(아이스뮤지엄)에는 다양한 얼음 조각전시와 관람객들이 직접 체험할 수 있는 이글루, 대형 아이스 미끄럼틀로 더욱 재미있는 공간을 연출하였다.아이들이 더욱 좋아하는 5D영상관과 그림이 살아 움직이는 증강현실 착시아트가 있어 더욱 실감나는 AR증강현실 체험을 할 수 있다. 그 외 플레이박스(가상현실체험)와 수목원길(LED공원) 다양한 식당가들이 있다.</span>
                    <button class="btn1 point2-1 schedule_detailView" onclick="ShowSpotGallery('125366');">자세히 보기</button>
                </div>
            <div class="html-box">        
                <div class="detail-data">
                    <p>&nbsp;</p>
                </div>
            </div>
        
                                            </div>                                    <div class="spot-area">
                                                
                                                        
                                                </div>
                                            <div class="spot-area">
                                                    <strong class="title"><em> </em> 석식☞자유식</strong>
        
                                            </div>                                    <div class="spot-area">
                                                
                                                        
                                                </div>
                                            <div class="spot-area">
                                                    <strong class="title"><em> </em> 호텔이동</strong>
            <div class="html-box">        
                <div class="detail-data">
                    <span style="FONT-SIZE: 9pt; FONT-FAMILY: '나눔고딕',NanumGothic,Sans-serif; COLOR: #ff0000"><strong><span style="FONT-SIZE: 10pt; FONT-FAMILY: '나눔고딕코딩',NanumGothicCoding,Sans-serif; COLOR: #ff0000">※&nbsp;상기 일정은 현지사정 천재지변으로 인해 변경될 수 있습니다. 대체관광시 관광지 입장료 차액 환불 없습니다.</span></strong></span>
                </div>
            </div>
        
                                            </div>                                    <div class="spot-area">
                                                
                                                        
                                                </div>
                                    </div>
                                </div>
                                <div class="date-detail dayArea_2 j_scheduleDetail">
                                    <div class="day-info">
                                        <strong class="tit j_parentOfScheduleDate">2일차 <span class="j_scheduleDate">2020.03.03 (화)</span></strong>
                                        <div class="comment">
                                            <p class="eat">조-호텔식,중-고등어구이+흑돼지두루치기,석-자유식</p>
                                            <p class="">  </p>
                                            <p class=""></p>
                                        </div>
                                    </div>
            
                                        <ul class="day-schedule">
                                                <li>호텔 조식 후 투어 출발</li>
                                                <li>카멜리아힐</li>
                                                <li>[쇼핑] 관광농원</li>
                                                <li>중식☞고등어구이+돼지두루치기</li>
                                                <li>[선택관광] 산방산 유람선</li>
                                                <li>송악산둘레길</li>
                                                <li>비밀의그림자공연</li>
                                                <li>석식☞자유식</li>
                                                <li>호텔이동</li>
            
                                        </ul>
            
            
            
            
                                        <div class="total-sch">
                                                <div class="spot-area">
                                                        <strong class="title"><em> </em> 호텔 조식 후 투어 출발</strong>
            
                                                </div>                                    <div class="spot-area">
                                                    
                                                            
                                                    </div>
                                                <div class="spot-area">
                                                        <strong class="title"><em> </em> 카멜리아힐</strong>
                    <div class="spot-type1">
                        <span class="thumb"><img alt="카멜리아힐" src="http://tong.visitkorea.or.kr/cms/resource/23/2455623_image2_1.jpg" onerror="setDefaultImg(this , 280)"></span>
                        <span class="tit">카멜리아힐</span>
                        <span class="data" title="안덕면 상창리 172,000㎡에 조성된 카멜리아힐은 세계에서 가장 큰 동백꽃을 비롯하여 가장 일찍 피는 동백꽃, 향기를 내는 동백꽃에 이르기까지  전세계 500여 종 6000여 그루의 동백나무가 한데 모여 있다. 카멜리아힐은 동백과 함께 야자수 등 각종 조경수가 함께 어우러진 수목원이기도 하다. 야생화 코너를 비롯해 넓은 잔디광장, 생태연못 등도 골고루 갖추고 있다. 초가별장과 목조별장, 스틸하우스, 콘도형 별장 등 다양한 숙박시설을 비롯해 동백꽃을 소재로 제작된 공예품을 전시하는 갤러리, 다목적 세미나실도 마련했다.<br>">안덕면 상창리 172,000㎡에 조성된 카멜리아힐은 세계에서 가장 큰 동백꽃을 비롯하여 가장 일찍 피는 동백꽃, 향기를 내는 동백꽃에 이르기까지  전세계 500여 종 6000여 그루의 동백나무가 한데 모여 있다. 카멜리아힐은 동백과 함께 야자수 등 각종 조경수가 함께 어우러진 수목원이기도 하다. 야생화 코너를 비롯해 넓은 잔디광장, 생태연못 등도 골고루 갖추고 있다. 초가별장과 목조별장, 스틸하우스, 콘도형 별장 등 다양한 숙박시설을 비롯해 동백꽃을 소재로 제작된 공예품...</span>
                        <button class="btn1 point2-1 schedule_detailView" onclick="ShowSpotGallery('95432');">자세히 보기</button>
                    </div>
                <div class="html-box">        
                    <div class="detail-data">
                        <p>&nbsp;</p>
                    </div>
                </div>
            
                                                </div>                                    <div class="spot-area">
                                                    
                                                            
                                                    </div>
                                                <div class="spot-area">
                                                        <strong class="title"><em> </em> [쇼핑] 관광농원</strong>
                    <div class="spot-type1">
                        <span class="thumb"><img alt="석부작박물관" src="http://tong.visitkorea.or.kr/cms/resource/47/2551247_image2_1.jpg" onerror="setDefaultImg(this , 280)"></span>
                        <span class="tit">석부작박물관</span>
                        <span class="data" title="석부작박물관은 제주도를 대표하는 곳으로 성장하기위해 삼다도의 상징중에서 '돌'을 소재로 하여 설립하였다. '석부작'은 제주의 대표 돌인 현무암에 제주의 야생화와 풍란을 뿌리 내리게 하여 하나의 생명을 키워내는것으로서, 제주자연에서 얻을 수 있는 자연예술작품을 만들었다.<br>">석부작박물관은 제주도를 대표하는 곳으로 성장하기위해 삼다도의 상징중에서 '돌'을 소재로 하여 설립하였다. '석부작'은 제주의 대표 돌인 현무암에 제주의 야생화와 풍란을 뿌리 내리게 하여 하나의 생명을 키워내는것으로서, 제주자연에서 얻을 수 있는 자연예술작품을 만들었다.</span>
                        <button class="btn1 point2-1 schedule_detailView" onclick="ShowSpotGallery('95406');">자세히 보기</button>
                    </div>
            
                                                </div>                                    <div class="spot-area">
                                                    
                                                            
                                                    </div>
                                                <div class="spot-area">
                                                        <strong class="title"><em> </em> 중식☞고등어구이+돼지두루치기</strong>
                <div class="html-box">        
                    <div class="detail-data">
                        <p><span style="FONT-FAMILY: '나눔고딕',NanumGothic,Sans-serif; COLOR: rgb(0,0,0)"><span style="FONT-FAMILY: '나눔고딕',NanumGothic,Sans-serif; COLOR: rgb(255,0,0)"><span style="FONT-SIZE: 10pt; COLOR: #000000"><span style="FONT-SIZE: 10pt; FONT-FAMILY: '나눔고딕코딩',NanumGothicCoding,Sans-serif; COLOR: #000000"></span>&nbsp;</span></span></span></p>
                    </div>
                </div>
            
                                                </div>                                    <div class="spot-area">
                                                    
                                                            
                                                    </div>
                                                <div class="spot-area">
                                                        <strong class="title"><em> </em> [선택관광] 산방산 유람선</strong>
                <div class="html-box">        
                    <div class="detail-data">
                        <font face="Arial"><span style="FONT-SIZE: 10pt; FONT-FAMILY: '나눔고딕코딩',NanumGothicCoding,Sans-serif; COLOR: #000000"><p><span style="FONT-FAMILY: '나눔고딕',NanumGothic,Sans-serif; COLOR: rgb(0,0,0)"><span style="FONT-FAMILY: '나눔고딕',NanumGothic,Sans-serif; COLOR: rgb(255,0,0)"><span style="FONT-SIZE: 10pt; COLOR: #000000">- 제주도 최고 절경 중의 절경 송악산, 산방산, 형제섬을 유람선을 타고 여행</span></span></span></p><p><span style="FONT-FAMILY: '나눔고딕',NanumGothic,Sans-serif; COLOR: rgb(0,0,0)"><span style="FONT-FAMILY: '나눔고딕',NanumGothic,Sans-serif; COLOR: rgb(255,0,0)"><span style="FONT-SIZE: 10pt; COLOR: #000000">- 요금 : 1인 17,500원 (현지직불)</span></span></span></p><p><span style="FONT-FAMILY: '나눔고딕',NanumGothic,Sans-serif; COLOR: rgb(0,0,0)"><span style="FONT-FAMILY: '나눔고딕',NanumGothic,Sans-serif; COLOR: rgb(255,0,0)"><span style="FONT-SIZE: 10pt; COLOR: #000000">-&nbsp;선택관광 미참여시&nbsp;: 화순해수욕장 올레길</span></span></span></p><span style="FONT-FAMILY: '나눔고딕',NanumGothic,Sans-serif; COLOR: rgb(0,0,0)"><span style="FONT-FAMILY: '나눔고딕',NanumGothic,Sans-serif; COLOR: rgb(255,0,0)"><span style="FONT-SIZE: 10pt; COLOR: #000000"><p><span style="FONT-SIZE: 10pt; FONT-FAMILY: '나눔고딕코딩',NanumGothicCoding,Sans-serif; COLOR: #000000">(선택관광 참여여부는 자유롭게 선택하실 수 있으며, 미참여에 대한 불이익은 없습니다.)</span></p></span></span></span></span></font>
                    </div>
                </div>
            
                                                </div>                                    <div class="spot-area">
                                                    
                                                            
                                                    </div>
                                                <div class="spot-area">
                                                        <strong class="title"><em> </em> 송악산둘레길</strong>
                    <div class="spot-type1">
                        <span class="thumb"><img alt="송악산" src="http://tong.visitkorea.or.kr/cms/resource/30/1620230_image2_1.jpg" onerror="setDefaultImg(this , 280)"></span>
                        <span class="tit">송악산</span>
                        <span class="data" title="산방산(395m)의 남쪽, 가파도가 손에 잡힐 듯 보이는 바닷가에 불끈 솟은 산이 산방산이다.
             99개의 작은 봉우리가 모여 일명 99봉이라고도 한다. 남제주군 산방굴사에서 송악산  초입까지는 풍치 좋기로 소문난 해안도로이다. 그 길을 달려 송악산에 이른다.  송악산은 한라산처럼 웅장하거나 산방산처럼 경치가 빼어나지는 않다. 그러나 송악산 정상에 오르면  누구나 감탄사를 토해낸다.
             앞으로 가까이 보이는 최남단의 마라도와 가파도, 형제섬, 우뚝 솟은 산방산, 멀리 보이는 
             한라산, 그리고 끝없는 태평양, 바다를 씻겨온 바람과 능선에 이어지는 푸른 잔디의  풋풋한 감촉 때문이다.
            <br />
             송악산은 그 모양새가 다른 화산들과는 달리 여러 개의 크고 작은 봉우리들이 모여 이루어져 있다. 주봉의 높이는 해발 104m. 이 주봉을 중심으로 하여 서북쪽은 넓고 평평한  초원지대이고 서너 개의 봉우리가 있다.  주봉에는 둘레 500m, 깊이 80m 정도되는 분화구가 있는데 그 속에는 아직도 검붉은 화산재가 남아 있다. 그리고 바닷가 해안 절벽에는 일제 때
             일본군이 뚫어 놓은 동굴이 여러 개 있어 지난날의 아픈 역사를 말해주고 있다. 송악산 아래 해안은 감성돔이나 뱅에돔, 다금바리가 많이 잡히는 낚시터로도 유명하다.
             <br>">산방산(395m)의 남쪽, 가파도가 손에 잡힐 듯 보이는 바닷가에 불끈 솟은 산이 산방산이다.
             99개의 작은 봉우리가 모여 일명 99봉이라고도 한다. 남제주군 산방굴사에서 송악산  초입까지는 풍치 좋기로 소문난 해안도로이다. 그 길을 달려 송악산에 이른다.  송악산은 한라산처럼 웅장하거나 산방산처럼 경치가 빼어나지는 않다. 그러나 송악산 정상에 오르면  누구나 감탄사를 토해낸다.
             앞으로 가까이 보이는 최남단의 마라도와 가파도, 형제섬, 우뚝 솟은 산방산, 멀리 보이는...</span>
                        <button class="btn1 point2-1 schedule_detailView" onclick="ShowSpotGallery('95411');">자세히 보기</button>
                    </div>
                <div class="html-box">        
                    <div class="detail-data">
                        <p><span style="FONT-SIZE: 10pt; FONT-FAMILY: '나눔고딕코딩',NanumGothicCoding,Sans-serif; COLOR: #000000"></span>&nbsp;</p>
                    </div>
                </div>
            
                                                </div>                                    <div class="spot-area">
                                                    
                                                            
                                                    </div>
                                                <div class="spot-area">
                                                        <strong class="title"><em> </em> 비밀의그림자공연</strong>
                    <div class="spot-type1">
                        <span class="thumb"><img alt="제주 아트리움 공연장" src="http://tourimage.interpark.com/Spot/208/17402/201101/6343094648919578741.jpg" onerror="setDefaultImg(this , 280)"></span>
                        <span class="tit">제주 아트리움 공연장</span>
                        <span class="data" title="하나의 장르에 국한되지않고 서커스, 미술, 음악, 조명, 시나리오 등을 모두 혼합함으로써 기존의 특정한 장르가 가지는 장단점을 서로 보완하면서 재미와 감동을 선사한다. 첫작품 이니샤를 시작으로 매년 다른 작품을 선보일 예정이다. ">하나의 장르에 국한되지않고 서커스, 미술, 음악, 조명, 시나리오 등을 모두 혼합함으로써 기존의 특정한 장르가 가지는 장단점을 서로 보완하면서 재미와 감동을 선사한다. 첫작품 이니샤를 시작으로 매년 다른 작품을 선보일 예정이다. </span>
                        <button class="btn1 point2-1 schedule_detailView" onclick="ShowSpotGallery('77627');">자세히 보기</button>
                    </div>
            
                                                </div>                                    <div class="spot-area">
                                                    
                                                            
                                                    </div>
                                                <div class="spot-area">
                                                        <strong class="title"><em> </em> 석식☞자유식</strong>
            
                                                </div>                                    <div class="spot-area">
                                                    
                                                            
                                                    </div>
                                                <div class="spot-area">
                                                        <strong class="title"><em> </em> 호텔이동</strong>
                <div class="html-box">        
                    <div class="detail-data">
                        <span style="FONT-SIZE: 9pt; FONT-FAMILY: '나눔고딕',NanumGothic,Sans-serif; COLOR: #ff0000"><strong><span style="FONT-SIZE: 10pt; FONT-FAMILY: '나눔고딕코딩',NanumGothicCoding,Sans-serif; COLOR: #ff0000">※&nbsp;상기 일정은 현지사정 천재지변으로 인해 변경될 수 있습니다. 대체관광시 관광지 입장료 차액 환불 없습니다.</span></strong></span>
                    </div>
                </div>
            
                                                </div>                                    <div class="spot-area">
                                                    
                                                            
                                                    </div>
                                        </div>
                                    </div>
                                    <div class="date-detail dayArea_3 j_scheduleDetail">
                                        <div class="day-info">
                                            <strong class="tit j_parentOfScheduleDate">3일차 <span class="j_scheduleDate">2020.03.04 (수)</span></strong>
                                            <div class="comment">
                                                <p class="eat">조-호텔식,중-연근토종돼지불고기+좁쌀막걸리,석-개별식</p>
                                                <p class="">  </p>
                                                <p class=""></p>
                                            </div>
                                        </div>
                
                                            <ul class="day-schedule">
                                                    <li>호텔 조식 후 투어 출발</li>
                                                    <li>[쇼핑] 기념품&amp;농수산직매장</li>
                                                    <li>승마체험</li>
                                                    <li>[쇼핑] 성읍민속마을</li>
                                                    <li>중식☞연근토종돼지불고기+좁쌀막걸리</li>
                                                    <li>[선택관광] 아쿠아플라넷+오션아레나공연</li>
                                                    <li>광치기해변</li>
                                                    <li>석예원 본초족욕</li>
                                                    <li>해안도로경유 (해녀촌)</li>
                                                    <li>제주공항 도착 후 출발 수속</li>
                                                    <li>김포공항 도착</li>
                
                                            </ul>
                
                
                
                
                                            <div class="total-sch">
                                                    <div class="spot-area">
                                                            <strong class="title"><em> </em> 호텔 조식 후 투어 출발</strong>
                
                                                    </div>                                    <div class="spot-area">
                                                        
                                                                
                                                        </div>
                                                    <div class="spot-area">
                                                            <strong class="title"><em> </em> [쇼핑] 기념품&amp;농수산직매장</strong>
                
                                                    </div>                                    <div class="spot-area">
                                                        
                                                                
                                                        </div>
                                                    <div class="spot-area">
                                                            <strong class="title"><em> </em> 승마체험</strong>
                        <div class="spot-type1">
                            <span class="thumb"><img alt="송당승마장" src="http://tong.visitkorea.or.kr/cms/resource/65/1618265_image2_1.jpg" onerror="setDefaultImg(this , 280)"></span>
                            <span class="tit">송당승마장</span>
                            <span class="data" title="제주 여행에서 빠질 수 없는 승마를 즐길 수 있는 송당승마장은 단거리코스부터 산책코스까지 다양한 승마 코스가 있으며 1시간 자유승마도 가능하다. 남녀노소 모든 연령이 즐길 수 있으며 처음 승마를 접하는 초보자들도 교관들의 친절한 지도하에 쉽고 즐겁게 승마를 배울 수 있다.<br>">제주 여행에서 빠질 수 없는 승마를 즐길 수 있는 송당승마장은 단거리코스부터 산책코스까지 다양한 승마 코스가 있으며 1시간 자유승마도 가능하다. 남녀노소 모든 연령이 즐길 수 있으며 처음 승마를 접하는 초보자들도 교관들의 친절한 지도하에 쉽고 즐겁게 승마를 배울 수 있다.</span>
                            <button class="btn1 point2-1 schedule_detailView" onclick="ShowSpotGallery('99695');">자세히 보기</button>
                        </div>
                
                                                    </div>                                    <div class="spot-area">
                                                        
                                                                
                                                        </div>
                                                    <div class="spot-area">
                                                            <strong class="title"><em> </em> [쇼핑] 성읍민속마을</strong>
                        <div class="spot-type1">
                            <span class="thumb"><img alt="성읍민속마을" src="http://tong.visitkorea.or.kr/cms/resource/93/2364393_image2_1.jpg" onerror="setDefaultImg(this , 280)"></span>
                            <span class="tit">성읍민속마을</span>
                            <span class="data" title="※ 19_20 한국관광 100선 ※<br /><br />표선리에서 북쪽으로 8km쯤 가면 한라산 기슭 아래 성읍마을이 있다. 성읍리는 원래 제주도가 방위상 3현으로 나뉘어 통치되었을 때(1410-1914) 정의현의 도읍지였던 마을로서 제주도 옛 민가의 특징을 잘 간직하고 있는 곳이다. 유형, 무형의 많은 문화유산이 집단적으로 분포되어 있고, 옛마을 형태의 민속경관이 잘 유지되어 그 옛 모습을 계속 유지하고자 민속마을로 지정.보호하고 있다. 이곳에서는 옛민가, 향교, 옛관공서, 돌하루방, 연자방아, 성터, 비석 등의 유형 문화유산과  중산간 지대 특유의 민요, 민속놀이, 향토음식, 민간공예, 제주방언 등의 무형 문화유산이 아직까지 전수되고 있다. 천연기념물 제 161호인 느티나무, 팽나무 등은 오백년 도읍지로서의 긍지를 엿볼 수 있다. 제주 초가를 가장 잘 보존하고 있는 성읍민속마을은 실제로 제주 초가에 살고 있는 성읍리 주민들과 제주의 전통 화장실인 '통시'를 만나볼 수도 있다. 특히 마을내 고목과 돌담 그리고 옛 성벽 등이 어우러진 고풍스런 모습은 오백년 도읍지의 역사를 그대로 말해준다.<br>">※ 19_20 한국관광 100선 ※표선리에서 북쪽으로 8km쯤 가면 한라산 기슭 아래 성읍마을이 있다. 성읍리는 원래 제주도가 방위상 3현으로 나뉘어 통치되었을 때(1410-1914) 정의현의 도읍지였던 마을로서 제주도 옛 민가의 특징을 잘 간직하고 있는 곳이다. 유형, 무형의 많은 문화유산이 집단적으로 분포되어 있고, 옛마을 형태의 민속경관이 잘 유지되어 그 옛 모습을 계속 유지하고자 민속마을로 지정.보호하고 있다. 이곳에서는 옛민가, 향교, 옛관공서, 돌하루방, 연자...</span>
                            <button class="btn1 point2-1 schedule_detailView" onclick="ShowSpotGallery('96235');">자세히 보기</button>
                        </div>
                
                                                    </div>                                    <div class="spot-area">
                                                        
                                                                
                                                        </div>
                                                    <div class="spot-area">
                                                            <strong class="title"><em> </em> 중식☞연근토종돼지불고기+좁쌀막걸리</strong>
                
                                                    </div>                                    <div class="spot-area">
                                                        
                                                                
                                                        </div>
                                                    <div class="spot-area">
                                                            <strong class="title"><em> </em> [선택관광] 아쿠아플라넷+오션아레나공연</strong>
                        <div class="spot-type1">
                            <span class="thumb"><img alt="아쿠아플라넷 제주" src="http://tong.visitkorea.or.kr/cms/resource/57/2408057_image2_1.jpg" onerror="setDefaultImg(this , 280)"></span>
                            <span class="tit">아쿠아플라넷 제주</span>
                            <span class="data" title="아쿠아플라넷제주는 제주 동부 성산일출봉 옆에 국내 최대의 아쿠아리움이다. 수조 용적량이 1만 800톤에 달하는 월드 클래스급 초대형 해양종합문화시설로써, 전시생물 450여종 4만5천여마리의 생물들이 전시되어 있다.특히 최대 6,000톤까지 해수를 수용할 수 있는 메인(Main)수조는 2만 7천마리의 어류를 관람할 수 있는 초대형 수조로 수조앞면(가로23mX세로9mX두께620mm)에서 바라보다보면 마치 바닷속에 들어와 있는듯한 착각을 불러온다. 이런한 아쿠아리움시설은 현재 아쿠아플라넷여수의 2배, 삼성코엑스 아쿠아리움의 3.6배, 부산씨라이프의 3배의 규모이다.매 시간마다 진행하는 오션아레나 공연과 제주전통해녀시연은 또다른 볼거리이다.<br /><br />※개관일 : 2012년 7월 14일<br>">아쿠아플라넷제주는 제주 동부 성산일출봉 옆에 국내 최대의 아쿠아리움이다. 수조 용적량이 1만 800톤에 달하는 월드 클래스급 초대형 해양종합문화시설로써, 전시생물 450여종 4만5천여마리의 생물들이 전시되어 있다.특히 최대 6,000톤까지 해수를 수용할 수 있는 메인(Main)수조는 2만 7천마리의 어류를 관람할 수 있는 초대형 수조로 수조앞면(가로23mX세로9mX두께620mm)에서 바라보다보면 마치 바닷속에 들어와 있는듯한 착각을 불러온다. 이런한 아쿠아리움시설은 현재...</span>
                            <button class="btn1 point2-1 schedule_detailView" onclick="ShowSpotGallery('116019');">자세히 보기</button>
                        </div>
                    <div class="html-box">        
                        <div class="detail-data">
                            <span style="FONT-SIZE: 10pt; FONT-FAMILY: '나눔고딕코딩',NanumGothicCoding,Sans-serif; COLOR: #000000">- 통통 튀는 매력을 소유한 해양 동물들과의 즐거운 생태설명회 진행 </span><br><span style="FONT-SIZE: 10pt; FONT-FAMILY: '나눔고딕코딩',NanumGothicCoding,Sans-serif; COLOR: #000000">- 요금 : 1인 25.000원 (현지직불)</span><br><span style="FONT-SIZE: 10pt; FONT-FAMILY: '나눔고딕코딩',NanumGothicCoding,Sans-serif; COLOR: #000000">- 선택관광 미참여시 : 섭지코지</span><br><span style="FONT-SIZE: 10pt; FONT-FAMILY: '나눔고딕코딩',NanumGothicCoding,Sans-serif; COLOR: #000000">(선택관광 참여여부는 자유롭게 선택하실 수 있으며, 미참여에 대한 불이익은 없습니다.)</span>
                        </div>
                    </div>
                
                                                    </div>                                    <div class="spot-area">
                                                        
                                                                
                                                        </div>
                                                    <div class="spot-area">
                                                            <strong class="title"><em> </em> 광치기해변</strong>
                        <div class="spot-type1">
                            <span class="thumb"><img alt="광치기해변" src="http://tong.visitkorea.or.kr/cms/resource/55/2564155_image2_1.jpg" onerror="setDefaultImg(this , 280)"></span>
                            <span class="tit">광치기해변</span>
                            <span class="data" title="
                성산일출봉에서 섭지코지로 향하는 길목에 있는 광치기 해변은 제주올레 1코스의 마지막이자 2코스가 시작되는 곳이다. 펄펄끓던 용암이 바다와 만나 빠르게 굳어지며 형성된 지질구조가 특징이며, 특히 썰물때는 바닷물에 가려있던 비경들이 속속들이 들어나 숨은 비경을 선사한다. 용암 지질과 녹색 이끼가 연출하는 장관은 전 세계 어디서도 볼 수 없는 풍경을 자아내어 많은 사진작가들이 찾는 사진명소이기도 하다. 특히 성산일출봉 옆으로 뜨는 일출을 한 프레임에 담을 수 있어 연말연시에 많은 사람들이 찾는다. 광치기 해변의 모래는 현무암의 풍화작용으로 오랜 세월에 걸쳐 만들어진 입자로, 검은 색을 띄는 것이 특징이다.<br>">성산일출봉에서 섭지코지로 향하는 길목에 있는 광치기 해변은 제주올레 1코스의 마지막이자 2코스가 시작되는 곳이다. 펄펄끓던 용암이 바다와 만나 빠르게 굳어지며 형성된 지질구조가 특징이며, 특히 썰물때는 바닷물에 가려있던 비경들이 속속들이 들어나 숨은 비경을 선사한다. 용암 지질과 녹색 이끼가 연출하는 장관은 전 세계 어디서도 볼 수 없는 풍경을 자아내어 많은 사진작가들이 찾는 사진명소이기도 하다. 특히 성산일출봉 옆으로 뜨는 일출을 한 프레임에 담을 수 있어 연말연시에 ...</span>
                            <button class="btn1 point2-1 schedule_detailView" onclick="ShowSpotGallery('125664');">자세히 보기</button>
                        </div>
                
                                                    </div>                                    <div class="spot-area">
                                                        
                                                                
                                                        </div>
                                                    <div class="spot-area">
                                                            <strong class="title"><em> </em> 석예원 본초족욕</strong>
                    <div class="html-box">        
                        <div class="detail-data">
                            <span style="FONT-SIZE: 10pt; FONT-FAMILY: '나눔고딕코딩',NanumGothicCoding,Sans-serif; COLOR: #000000">- 피로에 지친 몸과 마음을 따뜻하게 녹여주며 머리가 맑아지는 족욕 체험</span>
                        </div>
                    </div>
                
                                                    </div>                                    <div class="spot-area">
                                                        
                                                                
                                                        </div>
                                                    <div class="spot-area">
                                                            <strong class="title"><em> </em> 해안도로경유 (해녀촌)</strong>
                
                                                    </div>                                    <div class="spot-area">
                                                        
                                                                
                                                        </div>
                                                    <div class="spot-area">
                                                            <strong class="title"><em>PM 21:00 전후</em> 제주공항 도착 후 출발 수속</strong>
                
                                                    </div>                                    <div class="spot-area">
                                                        
                                                                
                                                        </div>
                                                    <div class="spot-area">
                                                            <strong class="title"><em> </em> 김포공항 도착</strong>
                    <div class="html-box">        
                        <div class="detail-data">
                            <span style="FONT-SIZE: 9pt; FONT-FAMILY: '나눔고딕',NanumGothic,Sans-serif; COLOR: #ff0000"><strong><span style="FONT-SIZE: 10pt; FONT-FAMILY: '나눔고딕코딩',NanumGothicCoding,Sans-serif; COLOR: #ff0000">※&nbsp;상기 일정은 현지사정 천재지변으로 인해 변경될 수 있습니다. 대체관광시 관광지 입장료 차액 환불 없습니다.</span></strong></span>
                        </div>
                    </div>
                
                                                    </div>                                    <div class="spot-area">
                                                        
                                                                
                                                        </div>
                                            </div>
                                        </div>
                        </div>
                        <div class="comment-option" style="clear: both;">
                            <h3>리뷰</h3>
                            <div class="star_avg">
                                <i class="icon_star"></i>
                                <i class="icon_star"></i>
                                <i class="icon_star"></i>
                                <i class="icon_star"></i>
                                <i class="icon_star"></i>
                                <span>10</span>
                            </div>
                            <h5>전체 리뷰 3개</h5>
                            <div class="single-comment-item first-comment">
                                <div class="sc-author">
                                    <img src="img/blog/blog-details/avatar/avatar-1.jpg" alt="">
                                </div>
                                <div class="sc-text">
                                    <span>2020-02-10 / 00:00:00</span>
                                    <p style="margin-top: 7px;">리뷰 제목<span style="color: white; font-weight: 300; padding: 2px 5px; margin-left: 5px; background-color: rgb(255,167,38); border: 1px solid rgb(255,167,38); border-radius: 5px;">9.5</span></p>
                                    <h5 style="text-align: left;">Brandon Kelley</h5>
                                    <p>Neque porro qui squam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                                        adipisci velit, sed quia non numquam eius modi tempora. incidunt ut labore et
                                        dolore magnam.
                                    </p>
                                </div>
                            </div>
                            <div class="single-comment-item first-comment">
                                <div class="sc-author">
                                    <img src="img/blog/blog-details/avatar/avatar-1.jpg" alt="">
                                </div>
                                <div class="sc-text">
                                    <span>2020-02-10 / 00:00:00</span>
                                    <p style="margin-top: 7px;">리뷰제목<span style="color: white; font-weight: 300; padding: 2px 5px; margin-left: 5px; background-color: rgb(255,167,38); border: 1px solid rgb(255,167,38); border-radius: 5px;">9.5</span></p>
                                    <h5 style="text-align: left;">Brandon Kelley</h5>
                                    <p>Neque porro qui squam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                                        adipisci velit, sed quia non numquam eius modi tempora. incidunt ut labore et
                                        dolore magnam.
                                    </p>
                                </div>
                            </div>
                            <div class="single-comment-item first-comment">
                                <div class="sc-author">
                                    <img src="img/blog/blog-details/avatar/avatar-1.jpg" alt="">
                                </div>
                                <div class="sc-text">
                                    <span>2020-02-10 / 00:00:00</span>
                                    <p style="margin-top: 7px;">리뷰 제목<span style="color: white; font-weight: 300; padding: 2px 5px; margin-left: 5px; background-color: rgb(255,167,38); border: 1px solid rgb(255,167,38); border-radius: 5px;">9.5</span></p>
                                    <h5 style="text-align: left;">Brandon Kelley</h5>
                                    <p>Neque porro qui squam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                                        adipisci velit, sed quia non numquam eius modi tempora. incidunt ut labore et
                                        dolore magnam.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->

    <!-- Recommend Blog Section Begin -->
    <section class="recommend-blog-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Recommended</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="blog-item set-bg" data-setbg="img/blog/blog-1.jpg">
                        <div class="bi-text">
                            <span class="b-tag">Travel Trip</span>
                            <h4><a href="#">Tremblant In Canada</a></h4>
                            <div class="b-time"><i class="icon_clock_alt"></i> 15th April, 2019</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="blog-item set-bg" data-setbg="img/blog/blog-2.jpg">
                        <div class="bi-text">
                            <span class="b-tag">Camping</span>
                            <h4><a href="#">Choosing A Static Caravan</a></h4>
                            <div class="b-time"><i class="icon_clock_alt"></i> 15th April, 2019</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="blog-item set-bg" data-setbg="img/blog/blog-3.jpg">
                        <div class="bi-text">
                            <span class="b-tag">Event</span>
                            <h4><a href="#">Copper Canyon</a></h4>
                            <div class="b-time"><i class="icon_clock_alt"></i> 21th April, 2019</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Recommend Blog Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="footer-text">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="ft-about">
                            <div class="logo">
                                <a href="#">
                                    <img src="img/footer-logo.png" alt="">
                                </a>
                            </div>
                            <p>We inspire and reach millions of travelers<br /> across 90 local websites</p>
                            <div class="fa-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-tripadvisor"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="ft-contact">
                            <h6>Contact Us</h6>
                            <ul>
                                <li>(12) 345 67890</li>
                                <li>info.colorlib@gmail.com</li>
                                <li>856 Cordia Extension Apt. 356, Lake, United State</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="ft-newslatter">
                            <h6>New latest</h6>
                            <p>Get the latest updates and offers.</p>
                            <form action="#" class="fn-form">
                                <input type="text" placeholder="Email">
                                <button type="submit"><i class="fa fa-send"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-option">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <ul>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy</a></li>
                            <li><a href="#">Environmental Policy</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-5">
                        <div class="co-text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <div class="modal_layer select_date">
        <div class="modal_inner">
            <div class="modal_top">
                <div><i class="icon_close"></i></div>
                <h3>객실 예약</h3>
            </div>
            <div class="modal_description">
                <section class="dhx_sample-container">
                    <div class="dhx_sample-container__widget" id="calendar"></div>
                </section>
            </div>
            <div class="modal_button row">
                <div class="modal_prev col-sm-6">
                    <button>prev</button>
                </div>
                <div class="modal_next col-sm-6">
                    <button onclick="location.href = './tourReserve.html'">next</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Search model Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch"><i class="icon_close"></i></div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search model end -->

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
        $(document).ready(function() {
            $(".bd-title > ul > li").eq(0).click(function() {
                $(".tour_info").css("display", "block")
                $(".comment-option").css("display", "none")
            })
            $(".bd-title > ul > li").eq(2).click(function() {
                $(".tour_info").css("display", "none")
                $(".comment-option").css("display", "block")
            })

            $(".modal_inner .icon_close").click(function() {
                $(".modal_layer").css("display", "none")
            })
        })
        function openModal() {
            $(".modal_layer").css("display", "block");
        }
    </script>

    <script>
        var calendar = new dhx.Calendar("calendar", {
            disabledDates: function(date) {
                var disabled = {
                    0: true,
                    1: true,
                    2: true,
                    3: true,
                    4: true,
                    5: true,
                    6: true
                }
                return disabled[date.getDay()];
            },
            css: "dhx_widget--bordered"
        });
    </script>
</body>

</html>