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
        ._2l1y-W{padding-right:2rem;padding-left:2rem;color:#919191;font-weight:500;margin-top:3rem;padding-bottom:3rem}@media screen and (max-width:15.625em){._2l1y-W{padding-right:1.5rem;padding-left:1.5rem}}._2Z8G63{font-size:1.2rem;margin-bottom:2rem}._1by-q-{font-style:normal}._166Ozr{font-size:1.1rem;line-height:normal}._166Ozr:before{content:"\2022"}
        .mktnex{padding-right:2rem;padding-left:2rem;margin-top:3rem}@media screen and (max-width:15.625em){.mktnex{padding-right:1.5rem;padding-left:1.5rem}}._2QOkke{font-size:1.7rem;line-height:2rem}._3sAKHQ{width:100%;font-size:1.5rem;font-weight:500;margin-top:2rem}._1iMsCM:first-child>td{padding:.8rem 0px}._1iMsCM+._1iMsCM>td{padding:.8rem 0}._1iMsCM:last-child>td{padding:.8rem 0}._2sGFwE{width:13.4rem;vertical-align:top}._310ABT{width:1.8rem;vertical-align:middle}.QP4k26{margin-left:1.6rem}.BEF1x6{color:#616161;font-size:1.5rem;line-height:2.3rem;margin-top:3rem;word-break:break-all}
        ._3EtSQV{background:#f2f2f2 url(//yaimg.yanolja.com/joy/sunny/static/images/logo-yanolja-white.svg) 50% no-repeat;background-size:50%;position:relative}._1SDSx1{background:50% no-repeat;background-size:cover;position:absolute;top:0;right:0;bottom:0;left:0}
        ._26p3D2{height:50vh;position:relative;overflow:hidden}._26p3D2 .swiper-pagination{color:#fff;font-size:1.2rem;font-weight:700}._26p3D2 .swiper-button-next,._26p3D2 .swiper-button-prev{display:none}.JFjCpt{height:50vh;background:url(//yaimg.yanolja.com/joy/sunny/static/images/logo-yanolja-white.svg) 50% no-repeat,-webkit-gradient(linear,left top,left bottom,color-stop(65%,#f2f2f2),to(#fff));background:url(//yaimg.yanolja.com/joy/sunny/static/images/logo-yanolja-white.svg) 50% no-repeat,linear-gradient(180deg,#f2f2f2 65%,#fff);top:0}._3l13kE,.JFjCpt{width:100%;display:block;position:absolute;left:0}._3l13kE{height:6rem;background:-webkit-gradient(linear,left top,left bottom,from(transparent),to(#000));background:linear-gradient(180deg,transparent,#000);opacity:.3;bottom:0;z-index:20}._2djA-g{height:50vh;background-size:auto;position:relative;z-index:10}
        ._2omFve{display:-webkit-box;display:-webkit-flex;display:flex;-webkit-box-align:center;-webkit-align-items:center;align-items:center;padding:1.6rem 0}._2aahGK{font-size:1.8rem;font-weight:700;line-height:1.16667}._2vhB8X,._2aahGK{overflow:hidden;text-overflow:ellipsis;white-space:nowrap}._2vhB8X{font-size:1.4rem;color:#616161;line-height:1.21429;margin-top:.2rem}.ozw43d{color:inherit;text-decoration:none;background:url(//yaimg.yanolja.com/joy/sunny/static/images/icon-arrow-small-black.svg) 98% no-repeat;background-size:.5rem;display:block;font-size:1.4rem;margin-left:auto;padding:0 1.3rem 0 1.2rem}
        ._12lb1P{position:relative}._3dXd6H{display:-webkit-box;display:-webkit-flex;display:flex;-webkit-flex-wrap:nowrap;flex-wrap:nowrap;overflow:hidden}._3dXd6H>*{-webkit-flex-shrink:0;flex-shrink:0;visibility:hidden}._3dXd6H>:first-child{visibility:visible}@supports (--v:0){._3dXd6H>*{margin-right:var(--margin);visibility:visible}}._16Qcyd ._3dXd6H{opacity:0;visibility:hidden}.F11iAR>*{-webkit-transform:translateX(-50%);transform:translateX(-50%)}.F11iAR>:first-child{margin-left:50%}._18R7Uv{opacity:0;position:absolute;top:0;right:0;bottom:0;left:0}._16Qcyd ._18R7Uv{opacity:1}
        .I8_Yvh{background:#fff8e3;border-radius:0 0 2rem 2rem;padding:2rem 1.6rem;position:relative}.Sfckur{font-size:1.6rem;font-weight:700}._30BWF5,.Sfckur{word-break:break-all}._30BWF5{font-size:1.4rem;line-height:1.42857;margin-top:.8rem;overflow:hidden;text-overflow:ellipsis;white-space:pre-line}@media screen and (min-width:48em){.I8_Yvh{padding:3.5rem 4rem}.Sfckur{font-size:1.8rem}._30BWF5{font-size:1.6rem;line-height:1.5;margin-top:1.2rem}}
        ._1cU2Rb{padding-right:2rem;padding-left:2rem;margin-top:2rem}@media screen and (max-width:15.625em){._1cU2Rb{padding-right:1.5rem;padding-left:1.5rem}}._3b4H87{border-bottom:.1rem solid #f2f2f2;padding-bottom:3rem}._3k8VKK{border-radius:.4rem .4rem 0 0;overflow:hidden}._1eWj7a{min-width:100%;padding-top:64%}.OkBHZJ{width:auto;background:rgba(0,0,0,.62);border-radius:1.1rem;color:#fff;font-size:1.1rem;line-height:1.18182;padding:.5rem 1rem .4rem;position:absolute;top:1rem;right:1rem;bottom:auto;left:auto;z-index:1}._2iehXo{font-weight:700}._1p7zMs{opacity:.5}._1CtWYs,.hKyXk3{-webkit-appearance:none;-moz-appearance:none;appearance:none;background:none;border:none;width:5.2rem;height:5.2rem;border-radius:.4rem;display:-webkit-box;display:-webkit-flex;display:flex;-webkit-box-align:center;-webkit-align-items:center;align-items:center;-webkit-box-pack:center;-webkit-justify-content:center;justify-content:center;margin-bottom:50%;position:absolute;top:50%;z-index:1}._1CtWYs svg,.hKyXk3 svg{border-radius:50%;box-shadow:0 0 .4rem 0 rgba(0,0,0,.33);fill:none;fill-rule:nonzero;display:block}._1CtWYs svg rect,.hKyXk3 svg rect{fill:#fff}._1CtWYs svg path,.hKyXk3 svg path{fill:#2e2e2e}.hKyXk3{left:0}._1CtWYs{right:0}
        .activ > h2 {font-size: 1.5em; font-weight: bold;}
        .activ table {font-size: 0.95em;}
        .activ table tr:first-child {border-top: 3px solid #eee;}
        .activ table tr {border-bottom: 3px solid #eee; margin-block-end: 5px;}
        
        .activ_shop_info {
        	margin-top: 40px;
        	padding: 20px;
        	background-color: #f0f0f0;
        }
        .activ_shop_info > div > h2, .activ_shop_info > div > div > h2 {
        	font-size: 1.6em;
        	font-weight: bold;
        }
        .activ_shop_info > div > div > h3 {
        	font-size: 1.3em;
        	font-weight: 600;
        	margin-top: 5px;
        }
        .activ_shop_info > div > div > ul {
        	margin: 5px 0px 20px 20px;
        }
        .activ_shop_info > div > div > ul > li > div > ul {
        	margin-left: 10px;
        }
        
        hr {display: none}

        .bd-title>ul>li {
            list-style: none;
            font-size: 1.2em;
            float: left;
            margin: 0px 20px;
        }

        .bd-title > ul > li:nth-child(1), .bd-title > ul > li:nth-child(3), .bd-title > ul > li:nth-child(5) {
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
		
        .ticket {
        	margin: 20px 0px;
            border: 3px solid #dfa974;
            border-radius: 5px;
        }
        
        .ticket_header {
            background-color: #dfa974;
        }

        .ticket_header label {
            color: white;
            font-size: 1.2em;
            font-weight: 600;
        }
        .ticket_description p {
            margin: 20px;
        }
        .ticket_amount > div {
            margin-left: 20px;
            border: 1px solid #dfa974;
        }
        .ticket_amount button, .ticket_amount div {
            float: left;
        }
        .ticket_price p {
            margin: 0px 20px;
            text-align: right;
        }
        .ticket_price p:nth-child(1) {
            font-size: 0.8em;
            text-decoration: line-through;
        }
        .ticket_price p:nth-child(2) {
            font-weight: bold;
            margin-bottom: 10px;
        }
        .ativ_ticket > form > div > button {
            margin-top: 20px;
            width: 100%;
            height: 45px;
            color: white;
            font-weight: 600;
            border: 1px solid #dfa974;
            border-radius: 5px;
            background-color: #dfa974;
        }
        .ativ_ticket {
            display: none;
        }
        .ativ_info, .ativ_ticket, .comment-option {
            padding-top: 30px;
            clear: both;
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
</head>

<body>
    <!-- Offcanvas Menu Section End -->
	<jsp:include page="../userHeader.jsp"/>

    <!-- Blog Details Hero Section Begin -->
    <section class="blog-details-hero set-bg" data-setbg="${dto[0].activ_pic }">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="bd-hero-text">
                        <span>액티비티</span>
                        <h2>${dto[0].activ_name }</h2>
                        <ul>
                            <li class="b-time" style="color: white"><i class="icon_clock_alt"></i> ${dto[0].activ_loc }</li>
                            <li style="color: white"><i class="icon_phone"></i> ${dto[0].activ_tel }</li>
                        </ul>
                        <div>
                            <button onclick="goTicket()">
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
                            <ul>
                                <li>액티비티 소개</li>
                                <li>|</li>
                                <li>티켓</li>
                                <li>|</li>
                                <li>리뷰</li>
                            </ul>
                        </div>
                        <div class="ativ_info" style="clear: both;">
                            <div class="activ">
                                <h2 class="_2QOkke">소개</h2>
                                ${dto[0].activ_info }
                                <div class="activ_shop_info">
	                                ${dto[0].activ_shop_info }                                
                                </div>
                            </div>
                        </div>
                        <div class="ativ_ticket">
                            <form action="./activReserve.html" method="POST">
                                <h3>티켓</h3>
                                <c:forEach var="dto" items="${dto }">
                            		<div class="ticket">
                                    <div class="ticket_header">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" id="jb-checkbox" class="custom-control-input">
                                            <label class="custom-control-label" for="jb-checkbox">${dto.ticket_name }</label>
                                        </div>
                                    </div>
                                    <div class="ticket_description">
                                        <p>${dto.ticket_info }</p>
                                    </div>
                                    <div class="ticket_footer row">
                                        <div class="ticket_amount col-sm-6">
                                            <div>
                                                <button>-</button>
                                                <div>0</div>
                                                <button>+</button>
                                            </div>
                                        </div>
                                        <div class="ticket_price col-sm-6">
                                            <p>${dto.ticket_first_cost }</p>
                                            <p>${dto.ticket_last_cost }</p>
                                        </div>
                                    </div>
                                </div>
                            	</c:forEach>
                                <div>
                                    <button type="submit">결제 하기</button>
                                </div>
                            </form>
                        </div>
                        <div class="comment-option">
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
                            <c:forEach var="review" items="${review }">
	                            <div class="single-comment-item first-comment">
	                                <div class="sc-author">
	                                    <img src="${review.member_pic }" alt="">
	                                </div>
	                                <div class="sc-text">
	                                    <span>2020-02-10 / 00:00:00</span>
	                                    <p style="margin-top: 7px;">리뷰 제목<span style="color: white; font-weight: 300; padding: 2px 5px; margin-left: 5px; background-color: rgb(255,167,38); border: 1px solid rgb(255,167,38); border-radius: 5px;">${review.review_star }</span></p>
	                                    <h5>${review.review_id }</h5>
	                                    <p>${review.review_content }</p>
	                                </div>
                            	</div>
                            </c:forEach>
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
                $(".ativ_info").css("display", "block")
                $(".ativ_ticket").css("display", "none")
                $(".comment-option").css("display", "none")
            })
            $(".bd-title > ul > li").eq(2).click(function() {
                $(".ativ_info").css("display", "none")
                $(".ativ_ticket").css("display", "block")
                $(".comment-option").css("display", "none")
            })
            $(".bd-title > ul > li").eq(4).click(function() {
                $(".ativ_info").css("display", "none")
                $(".ativ_ticket").css("display", "none")
                $(".comment-option").css("display", "block")
            })
            
            $(".bd-hero-text > ul > li:nth-child(2)").text(change($(".bd-hero-text > ul > li:nth-child(2)").text()));
        })
        function goTicket() {
            $(".ativ_info").css("display", "none")
            $(".ativ_ticket").css("display", "block")
            $(".comment-option").css("display", "none")
        }
        
        function change(num) {
        	return num.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");
        }
    </script>

</body>

</html>