<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>투어 | 찾기</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

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

	<style>
		body {
    		overflow-x: hidden;
    	}
    	.breadcrumb-section2 h2 {
        	text-shadow: 0px 2px 6px grey;
        	padding: 15px 0px;
        	font-weight: bold;
        	color: white;
        }
    	.room-item {
    		background: white;
    		box-shadow: 0px 14px 38px -18px rgba(0,0,0,0.75);
    	}
    	.breadcrumb-section2 {
    		background-image: url("https://new7wonders.com/app/uploads/sites/4/2016/09/044-Seongsan-Ilchulbong-and-Hallasan-1920x1227.jpg");
    		background-size: cover;
    		background-position: 30%;
    	}
		.nice-select {
			width: 100%;
			margin: 5px 0px 20px 0px;
		}
		.paging p {
			text-align: center;
		}
		.paging > p > span { padding-left: 5px; }
		.paging_button {
			width: 62px;
			margin: 0 auto;
		}
		.paging_button button {
			background: none;
			border: none;
		}
	</style>

</head>

<body>
          <c:choose>
	
		<c:when test="${not empty sessionScope.loginUid}">
			<jsp:include page="../topMenuIncludeMyPage.jsp"/>
		</c:when>
		
		<c:otherwise>
			<jsp:include page="../topMenuIncludeLogOut.jsp"/>
		</c:otherwise>
   	</c:choose>

    <!-- Breadcrumb Section Begin -->
    <div class="breadcrumb-section2">
        <div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <h2>투어</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section End -->

    <!-- Rooms Section Begin -->
    <section class="rooms-section spad">
        <div class="container">
        	<select name="orderBy">
				<option value="starHigh">별점 순</option>
				<option value="costHigh">가격 높은 순</option>
				<option value="costLow">가격 낮은 순</option>
			</select>
            <div class="row">
            	
            </div>
            <div class="paging">
	        	<p>Page<span class="0">1</span></p>
	        	<div class="paging_button">
			        <button onclick="change(0)">◀</button>
			        <button onclick="change(1)">▶</button>
	        	</div>
	        </div>
        </div>
    </section>
    <!-- Rooms Section End -->

    <!-- Footer Section Begin -->
	<jsp:include page="../footer.jsp"/>
    <!-- Footer Section End -->

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
    
    	function change(go) {
    		var curPage = parseInt($(".paging p span").text());
    		var curOption = $(".current").text();
    		
    		if (go == 0 && curPage != 1) {
    			if (curOption === "별점 순") {
    				starHigh((curPage * 6) - 12, 6);
    			} else if (curOption === "가격 높은 순") {
    				costHigh((curPage * 6) - 12, 6);
    			} else if (curOption === "가격 낮은 순") {
    				costLow((curPage * 6) - 12, 6);
    			} 
   				$(".paging p span").text(curPage - 1)
    		} else if (go == 1) {
    			if (curOption === "별점 순") {
       				starHigh(curPage * 6, 6);
    			} else if (curOption === "가격 높은 순") {
    				costHigh(curPage * 6, 6);
    			} else if (curOption === "가격 낮은 순") {
    				costLow(curPage * 6, 6);
    			} 
   				$(".paging p span").text(curPage + 1)
    		}
    		
    		$('html').scrollTop($(".breadcrumb-section2").outerHeight());
    	}
    
    	$(document).ready(function() {
    		starHigh(0, 6);
    		
    		$("li[data-value='starHigh']").click(function() {
    			$(".paging p span").text(1)
    			starHigh(0, 6);
    		})
    		$("li[data-value='costHigh']").click(function() {
    			$(".paging p span").text(1)
    			costHigh(0, 6);
    		})
    		$("li[data-value='costLow']").click(function() {
    			$(".paging p span").text(1)
    			costLow(0, 6);
    		})
    	})
    
	    function comma(num){
	        var len, point, str; 
	           
	        num = num + ""; 
	        point = num.length % 3 ;
	        len = num.length; 
	       
	        str = num.substring(0, point); 
	        while (point < len) { 
	            if (str != "") str += ","; 
	            str += num.substring(point, point + 3); 
	            point += 3; 
	        }
	    }
    	
    	function starHigh(page, viewPage) {
    		$.ajax({
    			url: "${pageContext.request.contextPath}/user/tour/ajax/starHigh/" + page + "/" + viewPage,
    			method: "GET",
    			success: function(data) {
    				var row = "<div class='row'>";
    				for (i = 0; i < data.length; i++) {
    					row += "<div class='col-lg-4 col-md-6'>";
    					row += "<div class='room-item'>";
    					row += "<img src='" + data[i].tour_pic + "' style='height: 250px'>";
    					row += "<div class='ri-text'>";
    					row += "<h4 style='height: 100px'>" + data[i].tour_name + "</h4>";
    					row += "<h3>" + data[i].tour_cost.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원<span>/성인 1명</span></h3>";
    					row += "<table>";
    					row += "<tbody>";
    					row += "<tr>";
    					row += "<td class='r-o'>기간:</td>";
    					row += "<td>" + data[i].tour_period + "박 " + (parseInt(data[i].tour_period) + 1) + "일</td>";
    					row += "</tr>";
    					row += "<tr>";
    					row += "<td class='r-o'>별점:</td>";
    					row += "<td>" + data[i].review_star + "</td>";
    					row += "</tr>";
    					row += "</tbody>";
    					row += "</table>";
    					row += "<a href='./view/" + data[i].tour_uid + "' class='primary-btn'>더보기</a>";
    					row += "</div>";
    					row += "</div>";
    					row += "</div>";
    				}
    				row += "</div>";
    				$(".rooms-section.spad > .container > .row").html(row);
    				if (row.length == 23) {
    					starHigh(page - 6, viewPage)
    					$(".paging p span").text(page / 6)
    					alert("더 이상 투어가 없습니다")
    				}
    			}
    		})
    	}
    	
    	function costHigh(page, viewPage) {
    		$.ajax({
    			url: "${pageContext.request.contextPath}/user/tour/ajax/costHigh/" + page + "/" + viewPage,
    			method: "GET",
    			success: function(data) {
    				var row = "<div class='row'>";
    				for (i = 0; i < data.length; i++) {
    					row += "<div class='col-lg-4 col-md-6'>";
    					row += "<div class='room-item'>";
    					row += "<img src='" + data[i].tour_pic + "' style='height: 250px'>";
    					row += "<div class='ri-text'>";
    					row += "<h4 style='height: 100px'>" + data[i].tour_name + "</h4>";
    					row += "<h3>" + data[i].tour_cost.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원<span>/성인 1명</span></h3>";
    					row += "<table>";
    					row += "<tbody>";
    					row += "<tr>";
    					row += "<td class='r-o'>기간:</td>";
    					row += "<td>" + data[i].tour_period + "박 " + (parseInt(data[i].tour_period) + 1) + "일</td>";
    					row += "</tr>";
    					row += "<tr>";
    					row += "<td class='r-o'>별점:</td>";
    					row += "<td>" + data[i].review_star + "</td>";
    					row += "</tr>";
    					row += "</tbody>";
    					row += "</table>";
    					row += "<a href='./view/" + data[i].tour_uid + "' class='primary-btn'>더보기</a>";
    					row += "</div>";
    					row += "</div>";
    					row += "</div>";
    				}
    				row += "</div>";
    				$(".rooms-section.spad > .container > .row").html(row);
    				if (row.length == 23) {
    					costHigh(page - 6, viewPage)
    					$(".paging p span").text(page / 6)
    					alert("더 이상 투어가 없습니다")
    				}
    			}
    		})
    	}
    	
    	function costLow(page, viewPage) {
    		$.ajax({
    			url: "${pageContext.request.contextPath}/user/tour/ajax/costLow/" + page + "/" + viewPage,
    			method: "GET",
    			success: function(data) {
    				var row = "<div class='row'>";
    				for (i = 0; i < data.length; i++) {
    					row += "<div class='col-lg-4 col-md-6'>";
    					row += "<div class='room-item'>";
    					row += "<img src='" + data[i].tour_pic + "' style='height: 250px'>";
    					row += "<div class='ri-text'>";
    					row += "<h4 style='height: 100px'>" + data[i].tour_name + "</h4>";
    					row += "<h3>" + data[i].tour_cost.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원<span>/성인 1명</span></h3>";
    					row += "<table>";
    					row += "<tbody>";
    					row += "<tr>";
    					row += "<td class='r-o'>기간:</td>";
    					row += "<td>" + data[i].tour_period + "박 " + (parseInt(data[i].tour_period) + 1) + "일</td>";
    					row += "</tr>";
    					row += "<tr>";
    					row += "<td class='r-o'>별점:</td>";
    					row += "<td>" + data[i].review_star + "</td>";
    					row += "</tr>";
    					row += "</tbody>";
    					row += "</table>";
    					row += "<a href='./view/" + data[i].tour_uid + "' class='primary-btn'>더보기</a>";
    					row += "</div>";
    					row += "</div>";
    					row += "</div>";
    				}
    				row += "</div>";
    				$(".rooms-section.spad > .container > .row").html(row);
    				if (row.length == 23) {
    					costLow(page - 6, viewPage)
    					$(".paging p span").text(page / 6)
    					alert("더 이상 투어가 없습니다")
    				}
    			}
    		})
    	}
    </script>
</body>

</html>