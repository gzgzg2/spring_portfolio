<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>관리자(회원관리)</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
    <meta name="description" content="This is an example dashboard created using build-in elements and components.">
    <meta name="msapplication-tap-highlight" content="no">
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/ADMINCSS/admin-main.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/ADMINCSS/admin-css.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<script>

</script>
<body>
<input type="hidden" id="page"/>
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
            </div>    
            <div class="app-header__content">
                
                <div class="app-header-right">
                    <div class="header-btn-lg pr-0">
                        <div class="widget-content p-0">
                            <div class="widget-content-wrapper">
                                <div class="widget-content-left">
                                    <div class="btn-group">
                                        <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="p-0 btn">
                                            <img width="42" class="rounded-circle" src="assets/images/avatars/1.jpg" alt="">
                                            <i class="fa fa-angle-down ml-2 opacity-8"></i>
                                        </a>
                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu dropdown-menu-right">
                                            <button type="button" tabindex="0" class="dropdown-item">User Account</button>
                                            <button type="button" tabindex="0" class="dropdown-item">Settings</button>
                                            <h6 tabindex="-1" class="dropdown-header">Header</h6>
                                            <button type="button" tabindex="0" class="dropdown-item">Actions</button>
                                            <div tabindex="-1" class="dropdown-divider"></div>
                                            <button type="button" tabindex="0" class="dropdown-item">Dividers</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget-content-left  ml-3 header-user-info">
                                    <div class="widget-heading">
                                        Alina Mclourd
                                    </div>
                                    <div class="widget-subheading">
                                        VP People Manager
                                    </div>
                                </div>
                                <div class="widget-content-right header-user-info ml-3">
                                    <button type="button" class="btn-shadow p-1 btn btn-primary btn-sm show-toastr-example">
                                        <i class="fa text-white fa-calendar pr-1 pl-1"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>        
                </div>
            </div>
        </div>        
       
        <div class="app-main">
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
                                
                                <li>
                                    <a href="admin_MemberManage" class="mm-active">
                                        <i class="metismenu-icon pe-7s-rocket"></i>
                                        회원 관리
                                    </a>
                                </li>

                                <li>
                                    <a href="admin_BookingManage">
                                        <i class="metismenu-icon pe-7s-display2"></i>
                                        예약 관리
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="admin_MotelManage">
                                        <i class="metismenu-icon pe-7s-display2"></i>
                                        숙소 관리
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="admin_LocalManage">
                                        <i class="metismenu-icon pe-7s-mouse"></i>
                                        여행지 관리
                                    </a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>    
                <div class="app-main__outer">

                    <div class="app-page-title">

                        <h2>회원 관리</h2>
                        
                        
                    </div>

                    <div class="app-main__inner">
                        <form>

                            <table class="admin-table table-bordered" id="list">
                                <colgroup>
                                <col width="8%"/>
                                <col width="30.6%"/>
                                <col width="30.6%"/>
                                <col width="30.6%"/>
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th class="table-th-left">No</th>
                                        <th>회원 이름</th>
                                        <th>회원 아이디</th>
                                        <th class="table-th-right">상세정보 / 삭제</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>아</td>
                                        <td>id</td>
                                        <td>
                                            <button class="admin-info-btn">Info</button>
                                            <button class="admin-delete-btn">Delete</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>css</td>
                                        <td>c발</td>
                                        <td>
                                            <button class="admin-info-btn">Info</button>
                                            <button class="admin-delete-btn">Delete</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>짜증난다</td>
                                        <td>s기</td>
                                        <td>
                                            <button class="admin-info-btn">Info</button>
                                            <button class="admin-delete-btn">Delete</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">4</th>
                                        <td>ㅠ</td>
                                        <td>s타일</td>
                                        <td>
                                            <button class="admin-info-btn">Info</button>
                                            <button class="admin-delete-btn">Delete</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">5</th>
                                        <td>으</td>
                                    <td>으</td>
                                    <td>
                                        <button class="admin-info-btn">Info</button>
                                        <button class="admin-delete-btn">Delete</button>
                                    </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">6</th>
                                        <td>아</td>
                                        <td>아</td>
                                        <td>
                                            <button class="admin-info-btn">Info</button>
                                            <button class="admin-delete-btn">Delete</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            

                            <div class="admin-search-bar">

                                <div class="admin-search-select">
                                    
                                    <select class="form-control-sm form-control">
                                        <option>아이디</option>
                                        <option>이름</option>
                                    </select>
                                    
                                </div>
                                
                                <div class="admin-search-text">
                                    
                                    <input type="text" class="form-control" placeholder="내용을 입력해주세요">
                                    
                                </div>
                                
                                <div class="admin-search-bar-btn">
                                    
                                    <input type="button" class="admin-search-btn" value="검색"/>
                                    
                                </div>
                                
                            </div>

                        </form>
                    
                    </div>
 
                </div>
                <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        </div>
    </div>
<script type="text/javascript" src="${pageContext.request.contextPath}/ADMINCSS/assets/scripts/main.js"></script>
</body>
</html>
