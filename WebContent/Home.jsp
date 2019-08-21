<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width, initial-scale=1.0">
<link rel="stylesheet" href="css/slick.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/home.css">
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link  href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script> 
<script>
</script>
</head>
<body>
<div class="wrap">
        <div class="header">
            <div class="gnbWrap">
                <div class="inner">
                    <h1>
                        <a href="Home.jsp">
                            <img class="logo_mo" src="./asset/img/logo_mo.png" alt="BETA-GO">
                            <img class="logo_pc" src="./asset/img/logo_pc.png" alt="BETA-GO">
                        </a>
                    </h1>
                    <button class="gnbOpen"><span>모바일메뉴열기</span></button>
                    <nav class="gnb">
                        <div class="gnbLogo">
                            <a href="#">
                                <img class="logo_mo" src="./asset/img/logo_mo.png" alt="복지GO">
                            </a>
                        </div>
                        <ul class="depth1">
                            <li><a href="#">BETA-GO란?</a></li>
                            <li><a href="BetagoController.bo?mode=classList.bo">강좌 찾기</a></li>
                            <li><a href="#">묶음 찾기</a></li>
                            <li><a href="#">커뮤니티</a></li>
                        </ul>
                    </nav>
                    <button class="gnbClose">모바일메뉴닫기</button>
                </div>
            </div>
        </div>
        <div class="searchWrap">
            <div class="inner">
<!--                <form action="#" method="get">-->
                    <div class="search">
                        <input type="text" class="searchText" placeholder="검색어를 입력해 주세요.">
                        <input type="button" class="searchButton" onclick="Magnifying();">
                    </div>
<!--                </form>-->
            </div>
        </div>
        <div class="section">
           <div class='single-item'>
               
            </div>
            <div class="inner">
                
            </div>
        </div>
        <div class="footer">
            <div class="footer1">
                <div class="inner">
                    <ul class="clearFix" >
                        <li><a href="#" style="color:white">이용약관</a></li>
                        <li><a href="#" style="color:white">개인정보 처리방침</a></li>
                        <li><a href="#" style="color:white">오시는길</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer2">
                <div class="inner">
                    <address>서울시 금천구 가산디지털2로 대륭테크노타운 3차</address>
                    <a href="tel:02.000.0000" style="color:white">문의전화 02)000-0000 </a>
                    <div>Copyright &copy; 오벤져스. All Right Reserved.</div>
                </div>
            </div>
            <a href="#" class="topButton" style="color:white">TOP</a>
        </div>
    </div>
    
     
    <script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/common.js"></script>
    <script>
        $(".single-item").slick({
            dots: true,
            autoplay: true,
            autoplaySpeed: 3000
        });

    </script>
    
</body>
</html>