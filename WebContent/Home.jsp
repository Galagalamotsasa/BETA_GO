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

</head>
<body>
<div class="wrap">
        <div class="header">
            <div class="gnbWrap">
                <div class="inner">
                    <h1>
                        <a href="./index.html">
                            <img class="logo_mo" src="./img/logo_mo.png" alt="베타GO">
                            <img class="logo_pc" src="./img/logo_pc.png" alt="베타GO">
                        </a>
                    </h1>
                    <button class="gnbOpen"><span>모바일메뉴열기</span></button>
                    <nav class="gnb">
                        <div class="gnbLogo">
                            <a href="#">
                                <img class="logo_mo" src="./img/logo_mo.png" alt="베타GO">
                            </a>
                        </div>
                        <ul class="depth1">
                            <li><a href="#">BETA-GO란?</a></li>
                            <li><a href="lectureList.jsp">강좌 찾기</a></li>
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
                    <ul class="clearFix">
                        <li><a href=#>이용약관</a></li>
                        <li><a href=#>개인정보 처리방침</a></li>
                        <li><a href=#>오시는길</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer2">
                <div class="inner">
                    <address>서울시 금천구 가산디지털2로 대륭테크노타운 3차</address>
                    <a href="tel:02.000.0000">문의전화 02)000-0000 </a>
                    <div>Copyright &copy; 오벤져스. All Right Reserved.</div>
                </div>
            </div>
            <a href="#" class="topButton">TOP</a>
        </div>
    </div>
    
     <footer id="mobile_footer">
        <ul>
            <li id="level">
                <a href="./map.html">
                    <img src='./img/adventurerblk.png' id='levelFooter' style="margin-bottom: 5px;" />
                    <div>지도</div>
                </a>
            </li>

            <li id="mountain">
                <a href="./region.html">
                    <img src='./img/goalsblk.png' id='mountainFooter' style="margin-bottom: 5px;" />
                    <div>명산</div>
                </a>
            </li>

            <li id="community">
                <a href="./community.html">
                    <img src='./img/friendshipblk.png' id='communityFooter' style="margin-bottom: 5px;" />
                    <div>커뮤니티</div>
                </a>
            </li>
        </ul>
    </footer>
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
    <script>
        $(".searchText").keydown(function(k) { //버튼이 아닌 텍스트 에서 엔터가 일어나므로 클래스는 input text 로 지정 해준다.
            if (k.keyCode == 13) { //keycode 13이 엔터시다.
                location.href = "./sub/area_list.html?q="+ $(".searchText").val(); }
        });
        
         //키워드 돋보기 클릭시
        function Magnifying(){
            location.href = "./sub/area_list.html?q=" +$("input.searchText").val();
                        
        }
         
        bestimg();
        function bestimg() {
            //요청 url 이자리에 있어야 페이지 번호가 변경된다
            var url = "https://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=XmO47zGbJrkxqEaqsQ5H4mPsp5BQcnSWf5LGCoiHLguhoLQ5Ja8hP%2BeFwSI2NZ%2Bk1O4IhOrjMGTkcYL%2F8HxabA%3D%3D&contentTypeId=&areaCode=&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=B&numOfRows=4&_type=json";
            $.ajax({
                type: "GET", //통신 방식(GET/POST)
                url: url, //통신할 페이지
                dataType: "json", //서버로부터 받을 데이터 형식
                success: function(data) {
                    //                    console.log(data);
                    parseJson(data);

                }, //통신에 성공했을 때 실행될 콜백함수
                error: function(res) {
                    alert("통신실패 : " + res.responseText);
                }, //통신에 실패했을 때 실행될 콜백함수
                complete: function() {
                    $("#loding").css("display", "none");

                } //통신이 완료 되었을때 
            });

        }

        function parseJson(data) {
                        $(".bestList").empty();
            var bestList = '';
            var item = data.response.body.items.item;
            //            var bestList clearFix = '<div class="listItem">';
            //            var item = data.response.body.items.item;
            //            console.log(item);
            item.map(function(i) {
                var link = "./sub/detail.html?contentid=" + i.contentid;
               
                //                bestList clearFix += '<a href="' + link + '" class="list-group-item d-flex justify-content-between align-items-center">';
                if (i.firstimage) {
                    var firstImage = i.firstimage;

                } else {
                    var firstImage = "https://dummyimage.com/500x300/b7bcbd/fff&text=no-image"

                }
                if (i.addr1) {
                            var address = i.addr1;
                        } else {
                            address = "";
                        }
                        bestList += "<li class='listItem'><a href='" + link + "'><div class='imgWrap'><div class='txtWrap'><img src='" + firstImage + "'alt=''></div></div><div class='txtWrap'><strong>" + i.title + " </strong><p class='add'>" + address + "</p><p class='viewNum'></p></div></a></li>";
            });
                $(".bestList").append(bestList);
        }

        function getParameter(parameterName) {
            var url = decodeURI(decodeURIComponent(location.href));
            var result = false;
            if (url.indexOf("?") == -1) {
                return result;
            } else {
                var temp = url.split("?")[1];
                var paraArr = temp.split("&");

                for (var i in paraArr) {
                    if (paraArr[i].indexOf(parameterName) != -1) {
                        result = true;
                        return paraArr[i].split("=")[1];
                    }
                }
            }
        }
 
    </script>
</body>
</html>