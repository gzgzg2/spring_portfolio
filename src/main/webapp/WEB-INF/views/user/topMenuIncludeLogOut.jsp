<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- Page Preloder -->

    <!-- Offcanvas Menu Section Begin -->
  

    <!-- Header Section Begin -->
    <header class="header-section">
   
        <div class="menu-item">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="logo">
                            <a href="${pageContext.request.contextPath}/main">
                                <img id="logoG" src="${pageContext.request.contextPath }/resources/img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-10">
                        <div class="nav-menu">
                            <nav class="mainmenu">
                                <ul>
                                    <li class="active"><a href="${pageContext.request.contextPath}/main">홈</a></li>
                                    <li><a>제주여행</a>
                                    	 <ul class="dropdown">
                                            <li><a href="${pageContext.request.contextPath}/user/tour/list">투어</a></li>
                                            <li><a href="${pageContext.request.contextPath}/user/activ/list">액티비티</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/user/inn/list">숙소</a>
                                    <li><a href="${pageContext.request.contextPath}/user/palanner/plan">내플래너</a>
                                    <li><a href="${pageContext.request.contextPath}/user/mypage/mypageInfo">마이페이지</a></li>
                                    <li><a href="${pageContext.request.contextPath}/user/account/login">로그인</a></li>
                                    <li><a href="${pageContext.request.contextPath}/user/account/join">회원가입</a></li>
                                </ul>
                            </nav>
                            <div class="nav-right search-switch">
                                <i class="icon_search"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
  