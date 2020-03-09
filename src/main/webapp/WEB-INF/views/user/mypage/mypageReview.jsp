<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="description" content="Sona Template">
<meta name="keywords" content="Sona, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>귤귤플래너</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap"
	rel="stylesheet">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Css Styles -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/USERCSS/style_rami.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/USERCSS/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/USERCSS/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/USERCSS/elegant-icons.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/USERCSS/flaticon.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/USERCSS/owl.carousel.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/USERCSS/nice-select.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/USERCSS/jquery-ui.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/USERCSS/magnific-popup.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/USERCSS/slicknav.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/USERCSS/style.css">
</head>
<script>
	function memberDelete() {
		if (confirm("정말 삭제하시겠습니까??")) {

			location.href = "${pageContext.request.contextPath}/user/account/accountBye/${sessionScope.loginUid}";

		} else {

			return;
		}
	}
</script>

<body>
	<c:choose>
		<c:when test="${not empty sessionScope.loginUid}">
			<jsp:include page="../topMenuIncludeMyPage.jsp" />
		</c:when>

		<c:otherwise>
			<jsp:include page="../topMenuIncludeMyPage.jsp" />
		</c:otherwise>
	</c:choose>


	<section id="review">

		<div id="reviewDiv">

			<h2 id="ReviewH2">마이페이지</h2>
			<div id="Reviewside">
				<nav id="sidenav">
					<ul id="sideul">
						<li><a href="${pageContext.request.contextPath}/user/mypage/mypageInfo"><i class="fa fa-id-card-o" aria-hidden="true"></i>&nbsp;&nbsp;개인정보</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/mypage/mypageReview"><i class="fa fa-file-text-o" aria-hidden="true"></i>&nbsp;&nbsp;리뷰관리</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/mypage/mypageReserve"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;&nbsp;예약관리</a></li>
                        <li><a href=""><i class="fa fa-plane" aria-hidden="true"></i>&nbsp;&nbsp;내플래너</a></li>
					</ul>
				</nav>
			</div>

			<div id="reviewFormArea">
				<div class="reviewArea">
					<ul>
							
						<li id="activ" class="tabBtn"><input type="radio" checked
							name="tabmenu" id="tabmenu1"> <label id="la1"
							for="tabmenu1">액티비티</label>
							<div class="a">
								<input type="hidden" name="colOption" value="1">
								<table id="activTable">

								</table>
								<div class="paging1" style="width: 100%">
									<p>
										Page<span class="0">1</span>
									</p>
									<div class="paging_button">
										<button onclick="change(0)">◀</button>
										<button onclick="change(1)">▶</button>
									</div>
								</div>
							</div></li>

						<li id="tour" class="tabBtn"><input type="radio"
							name="tabmenu" id="tabmenu2"> <label id="la2"
							for="tabmenu2">투어</label>
							<div class="a">
								<table id="tourTable">

								</table>
								<div class="paging2" style="width: 100%">
									<p>
										Page<span class="0">1</span>
									</p>
									<div class="paging_button">
										<button onclick="change(0)">◀</button>
										<button onclick="change(1)">▶</button>
									</div>
								</div>
							</div></li>
							
						<li id="accom" class="tabBtn"><input type="radio"
							name="tabmenu" id="tabmenu3"> <label id="la3"
							for="tabmenu3">숙소</label>
							<div class="a">
								<table id="accomTable">
								</table>
								<div class="paging3" style="width: 100%">
									<p>
										Page<span class="0">1</span>
									</p>
									<div class="paging_button">
										<button onclick="change(0)">◀</button>
										<button onclick="change(1)">▶</button>
									</div>
								</div>
							</div></li>

					</ul>
				</div>
			</div>
			<!--  reviewEnd -->

		</div>
		<!-- reviewDivEnd -->
	</section>

	<!-- Js Plugins -->
	<script
		src="${pageContext.request.contextPath}/USERJS/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/USERJS/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/USERJS/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/USERJS/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/USERJS/jquery-ui.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/USERJS/jquery.slicknav.js"></script>
	<script
		src="${pageContext.request.contextPath}/USERJS/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/USERJS/main.js"></script>

	<script>
		// 투어 페이징
		function tourReviewPage(page) {
			$
					.ajax({
						url : "${pageContext.request.contextPath}/user/mypage/ajax/tourReview/${sessionScope.loginUid}/"
								+ page,
						method : "GET",
						success : function(data) {
							var table = "";
							for (i = 0; i < data.length; i++) {
								if (i == 0) {
									table = "<tr><th>작성자</th><th>리뷰제목</th><th>날짜</th><th>기간</th><th></th></tr>"
								}
								table += "<td>" + data[i].member_name + "</td>";
								table += "<td><a class='aC' href='${pageContext.request.contextPath}/user/mypage/mypageReviewUpdate/" +data[i].review_uid + "'>" + data[i].tour_name + "</a></td>";
								table += "<td>" + data[i].book_date + "</td>";
								table += "<td>" + data[i].tour_period + "</td>";
								table += '<td><a class="aC" href="${pageContext.request.contextPath}/user/mypage/mypageReviewDeleteOk/'+data[i].book_uid +'>리뷰삭제</a></td>';
								table += "</tr>";
							}
							if (table == "") {
								tourReviewPage(page - 8);
								$(".paging2 p span").text(page / 4);
								alert("데이터가 없습니다");
							} else if (table.length > 0) {
								$("#tourTable").html(table);
							}
						}
					});
		}

		// 액티비티 페이징
		function activReviewPage(page) {
			$.ajax({
						url : "${pageContext.request.contextPath}/user/mypage/ajax/activReview/${sessionScope.loginUid}/"
								+ page,
						method : "GET",
						success : function(data) {
							var table = "";
							for (i = 0; i < data.length; i++) {
								if (i == 0) {
									table = "<tr><th>작성자</th><th>리뷰제목</th><th>지역</th><th></th></tr>"
								}
								table += "<tr>";
								table += "<td>" + data[i].member_name + "</td>";
								table += "<td><a class='aC' href='${pageContext.request.contextPath}/user/mypage/mypageReviewUpdate/" +data[i].review_uid + "'>" + data[i].activ_name + "</a></td>";
								table += "<td>" + data[i].activ_loc + "</td>";
								table += '<td><a class="aC" href="${pageContext.request.contextPath}/user/mypage/mypageReviewDeleteOk/'+data[i].review_uid +'">리뷰삭제</a></td>';
								table += "</tr>";
							}
							if (table == "") {
								activReviewPage(page - 8);
								$(".paging1 p span").text(page / 4);
								alert("데이터가 없습니다");
							} else if (table.length > 0) {
								$("#activTable").html(table);
							}
						}
					});
		}

		// 룸 페이징
		function roomReviewPage(page) {
			$
					.ajax({
						url : "${pageContext.request.contextPath}/user/mypage/ajax/innReview/${sessionScope.loginUid}/"
								+ page,
						method : "GET",
						success : function(data) {
							var table = "";
							for (i = 0; i < data.length; i++) {
								if (i == 0) {
									table = "<tr><th>작성자</th><th>리뷰제목</th><th>숙소명</th><th>날짜</th><th></th></tr>"
								}
								table += "<tr>";
								table += "<td>" + data[i].member_name + "</td>";
								table += '<td><input type="hidden" value="${dto.book_uid}"/>' + data[i].review_title
										+ "</td>";
								table += "<td>" + data[i].inn_name + "</td>";
								table += "<td>" + data[i].inn_sep + "</td>";
								table += '<td><a class="aC" href="${pageContext.request.contextPath}/user/mypage/mypageReviewDeleteOk/${dto.review_uid}">리뷰삭제</a></td>';
								table += "</tr>";
							}
							if (table == "") {
								roomReviewPage(page - 8);
								$(".paging3 p span").text(page / 4);
								alert("데이터가 없습니다");
							} else if (table.length > 0) {
								$("#accomTable").html(table);
							}
						}
					});
		}

		// 페이징 처리 메소드
		function change(go) {
			var curPage3 = parseInt($(".paging3 p span").text());
			var curPage2 = parseInt($(".paging2 p span").text());
			var curPage1 = parseInt($(".paging1 p span").text());

			var curOption = $("input:hidden[name='colOption']").val();

			if (curOption == 3) {
				if (go == 1) {
					roomReviewPage((curPage3 * 4));
					$(".paging3 p span").text(curPage3 + 1);
					return;
				} else {
					if (go == 0 && curPage3 != 1) {
						roomReviewPage((curPage3 * 4) - 8);
						$(".paging3 p span").text(curPage3 - 1);
						return;
					}
				}
			}

			if (curOption == 2) {
				if (go == 1) {
					tourReviewPage((curPage2 * 4));
					$(".paging2 p span").text(curPage2 + 1);
					return;
				} else {
					if (go == 0 && curPage2 != 1) {
						tourReviewPage((curPage2 * 4) - 8);
						$(".paging2 p span").text(curPage2 - 1);
						return;
					}
				}
			}

			if (curOption == 1) {
				if (go == 1) {
					activReviewPage((curPage1 * 4));
					$(".paging1 p span").text(curPage1 + 1);
					return;
				} else {
					if (go == 0 && curPage1 != 1) {
						activReviewPage((curPage1 * 4) - 8);
						$(".paging1 p span").text(curPage1 - 1);
						return;
					}
				}
			}
			
		}

		$(document).ready(function() {

			$("#la1").click(function() {
				$("input:hidden[name='colOption']").val('1');
			});

			$("#la2").click(function() {
				$("input:hidden[name='colOption']").val('2');
			});

			$("#la3").click(function() {
				$("input:hidden[name='colOption']").val('3');
			});

			roomReviewPage(0);
			tourReviewPage(0);
			activReviewPage(0);

		});
	</script>

</body>

</html>