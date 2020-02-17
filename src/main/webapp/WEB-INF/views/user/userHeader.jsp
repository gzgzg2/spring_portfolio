<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Header Section Begin -->
<header class="header-section">
    <div class="menu-item">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="logo">
                        <a href="./index.html">
                            <img src="img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-10">
                    <div class="nav-menu">
                        <nav class="mainmenu">
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/user/index">홈</a></li>
                                <li><a href="${pageContext.request.contextPath}/user/planner/planner">플래너</a></li>
                                <li><a href="${pageContext.request.contextPath}/user/tour/list">한국투어</a>
                                    <ul class="dropdown">
                                        <li><a href="${pageContext.request.contextPath}/user/">관광지</a></li>
                                        <li><a href="${pageContext.request.contextPath}/user/activ/list">액티비티</a></li>
                                    </ul>
                                <li><a href="${pageContext.request.contextPath}/user/inn/list">숙소</a></li>
                                </li>
                                <li class="active"><a href="${pageContext.request.contextPath}/user/temp/list">템플릿</a></li>
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
<!-- Header End -->