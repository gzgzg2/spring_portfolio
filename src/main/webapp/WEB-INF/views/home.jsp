
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/welcome.css">
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/slick.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/slicktheme.css">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/USERCSS/assets/images/marker.png">
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
  <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
  <script src="${pageContext.request.contextPath}/USERJS/slick.js" type="text/javascript" charset="utf-8"></script>
  <script type="text/javascript">
    $(document).on('ready', function() {
      $(".regular").slick({
        dots: true,
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        prevArrow: false,
        nextArrow: false,
        autoplay:true,
        autoplaySpeed:2000
      });
    });
</script>

</head>
<body>
<div class="wrap">
    <header>
        <div>
            <div class="logo">
                <img src="${pageContext.request.contextPath}/USERCSS/assets/images/marker.png">
               		 귤귤 플래너
            </div>
            <div class="on_pc">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main">홈</a></li>
                    <li><a href="#">탐색</a></li>
                    <li><a href="#">한국투어</a></li>
                    <li><a href="#">숙소</a></li>
                    <li><a href="#">템플릿</a></li>
                </ul>
            </div>
        </div>
    </header>
    <main>
        <div>
            <div class="left">
                <div>
                    <section class="regular slider">
                        <div>
                          <img src="${pageContext.request.contextPath}/USERCSS/assets/images/welcome01.jpg">
                        </div>
                        <div>
                          <img src="${pageContext.request.contextPath}/USERCSS/assets/images/welcome02.jpg">
                        </div>
                        <div>
                          <img src="${pageContext.request.contextPath}/USERCSS/assets/images/welcome03.jpg">
                        </div>
                        <div>
                          <img src="${pageContext.request.contextPath}/USERCSS/assets/images/welcome04.png">
                        </div>
                      </section>    
                </div>
            </div>
            <div class="right">
                <div>
                    <div>
                        <form class="login_form">
                            <h3>아이디</h3>
                            <input type="text">
                            <h3>비밀번호</h3>
                            <input type="password">
                        </form>
                    </div>
                    <div class="id_check">
                        <a href="#">아이디 / 비밀번호 찾기</a>
                    </div>
                    <div class="join">
                        <div><h3>회원가입</h3></div>
                        <div><h3>로그인</h3></div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
</body>
</html>