<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<title>Beta-GO</title>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="viewport" content="width, initial-scale=1.0">
<link rel="stylesheet" href="./css/slick.css">
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/home.css">
<script src="./js/jquery.min.js"></script>
<script src="./js/common.js"></script>
<link href="./css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<link rel="stylesheet" href="./css/slick.css">
<link rel="stylesheet" href="./css/common.css">

<style>
.swiper-container {
	max-width: 1920px;
	margin: 0 auto;
}

.swiper-container img {
	width: 100%;
}

.section {
	text-align: center;
}

.section h3 {
	margin-top: 35px;
	font-size: 22px;
	font-weight: 400;
}

.section h3+p {
	margin-top: 10px;
}

.section .single-item .slick-arrow {
	z-index: 1;
	position: absolute;
	top: 50%;
	width: 50px;
	height: 50px;
	margin-top: -25px;
	border: none;
	font-size: 0;
	color: transparent;
	background-color: transparent;
	background: url(./asset/img/arrow.png) no-repeat center center;
	background-size: 50px;
}

.section .single-item .slick-dots {
	position: absolute;
	bottom: 20px;
	width: 100%;
}

.section .single-item .slick-dots li {
	display: inline-block;
	margin: 0 7px;
	font-size: 0;
	color: transparent;
}

.section .single-item .slick-dots li button {
	width: 10px;
	height: 10px;
	background-color: #fff;
	border: none;
	border-radius: 50%;
}

.section .single-item .slick-dots li.slick-active button {
	background-color: #abc5d6;
}

.section .single-item .item {
	height: 500px;
	background-repeat: no-repeat;
	background-position: center center;
	background-size: cover;
}

.section .single-item .slick-prev {
	left: 0;
	transform: rotate(180deg);
}

.section .single-item .slick-next {
	right: 0;
}

.section .bestList {
	margin-top: 40px;
}

.section .bestList .listItem {
	float: left;
	overflow: hidden;
	width: 48%;
	height: 200px;
	margin: 10px 1% 0;
	line-height: 200px;
}

.section .bestList .listItem a {
	position: relative;
	display: block;
	height: 100%;
}

.section .bestList .listItem a .imgWrap {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	background-repeat: no-repeat;
	background-position: center center;
	background-size: cover;
	transition: transform .2s;
}

.section .bestList .listItem a:hover .imgWrap, .section .bestList .listItem a:focus .imgWrap
	{
	transform: scale(1.1);
}

.section .bestList .listItem a .txtWrap {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	background-color: rgba(0, 0, 0, .5);
	color: #fff;
	transition: background .2s;
}

.section .bestList .listItem a:hover .txtWrap, .section .bestList .listItem a:focus .txtWrap
	{
	background-color: rgba(0, 0, 0, .2);
}

.section .bestList .listItem img {
	width: 100%;
	display: block;
}

.section .bestList .listItem p {
	display: none;
}

@media all and (min-width:1024px) {
	.section h3 {
		margin-top: 70px;
		font-size: 28px;
	}
	.section .bestList .listItem {
		width: 22%;
		height: 264px;
		margin: 10px 0 0 3%;
		line-height: 1;
	}
	.section .bestList .listItem a>.txtWrap {
		padding: 30px 20px;
	}
	.section .bestList .listItem strong:after {
		content: '';
		display: block;
		width: 40px;
		height: 2px;
		margin: 15px auto 30px;
		background-color: #fff;
	}
	.section .bestList .listItem p {
		display: block;
	}
	.section .bestList li:first-child {
		margin-left: 0;
	}
}

footer {
	width: 100%;
	height: 65px;
	position: fixed;
	bottom: 0;
	border-top: 2px solid black;
	background-color: white;
}

footer ul li {
	/* °¢ ¸Þ´ºµé*/
	float: left;
	width: 33.333%;
	list-style-type: none;
	text-align: center;
	font-size: 1em;
}

footer ul li a img {
	height: 45px;
}

footer ul li a div {
	line-height: 0px;
	color: #000;
}

a:hover {
	text-decoration: none;
}

.abtn {
	text-decoration: none;
	font-size: 2rem;
	color: white;
	padding: 10px 20px 10px 20px;
	margin: 20px;
	display: inline-block;
	border-radius: 10px;
	transition: all 0.1s;
	text-shadow: 0px -2px rgba(0, 0, 0, 0.44);
	font-family: 'Lobster', cursive;
	background-color: #1f75d9;
	border-bottom: 5px solid #165195;
	border-bottom: 2px solid #165195;
}
</style>

</head>

<body>
	<div class="wrap">
		<div class="header">
			<div class="gnbWrap">
				<div class="inner">
					<h1>
						<a href="./index.html"> <img class="logo_mo"
							src="../img/logo_mo1.png" alt="BETA-GO"> <img
							class="logo_pc" src="../img/logo_pc1.png" alt="BETA-GO">
						</a>
					</h1>
					<button class="gnbOpen">
						<span>모바일메뉴열기</span>
					</button>

					<nav class="gnb">
						<div class="gnbLogo">
							<a href="#"> <img class="logo_mo" src="../img/logo_mo1.png"
								alt="베타GO">
							</a>
						</div>
						<ul class="depth1">
							<li><a href="#">베타-GO 란?</a></li>
							<li><a href="#">강의 찾기</a></li>
							<li><a href="#">묶음 강의</a></li>
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
			<div class='single-item'></div>
			<div class="inner">

				<div class="jumbotron">
					<div class="media">
						<div class="media-left media-top">
							<img src="${selectedLecture.class_img }" class="media-object"
								style="width: 60px">
						</div>
						<div class="media-body">
							<h4 class="media-heading">${selectedLecture.class_title }</h4>
							<p>강사 : ${selectedLecture.user_name}</p>
							<a href="#" class="videoLink" alt="동영상 링크"> <img
								src="../img/default.jpg" class="img-thumbnail
								alt="동영상썸네일">
							</a>
							<h1>강의제목</h1>
							<p>
								<a class="abtn"
									href="BetagoController.bo?mode=classView.bo&historyno=${selectedLecture.class_no }">
									<b>수강신청하기</b>
								</a>
							</p>
						</div>
					</div>
				</div>
				<div>
					<h3>강의 목표</h3>
					<p>${selectedLecture.class_object }</p>
					</br>
					<h3>강의 설명</h3>
					<p>${selectedLecture.class_desc }</p>
				</div>
				<div>
					<h3>이수 기준</h3>
					<table border="1">
						<tr>
							<th>구분</th>
							<th>퀴즈</th>
							<th>중간시험</th>
							<th>기말시험</th>
							<th>총점</th>
						</tr>
						<tr>
							<td>점수</td>
							<td>${selectedLecture.cc_quiz}</td>
							<td>${selectedLecture.cc_mid}</td>
							<td>${selectedLecture.cc_final}</td>
							<td>${selectedLecture.cc_tot}</td>
						</tr>
					</table>
					<p>이수기준 총점 60점 이상</p>
				</div>


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
					<div>Copyright &copy; 자바왕. All Right Reserved.</div>
				</div>
			</div>
			<a href="#" class="topButton">TOP</a>
		</div>
	</div>

	<footer class="mobile_footer">
		<ul>
			<li id="level"><a href="./map.html"> <img
					src='./img/adventurerblk.png' id='levelFooter'
					style="margin-bottom: 5px;" />
					<div>지도</div>
			</a></li>

			<li id="mountain"><a href="./region.html"> <img
					src='./img/goalsblk.png' id='mountainFooter'
					style="margin-bottom: 5px;" />
					<div>명산</div>
			</a></li>

			<li id="community"><a href="./community.html"> <img
					src='./img/friendshipblk.png' id='communityFooter'
					style="margin-bottom: 5px;" />
					<div>커뮤니티</div>
			</a></li>
		</ul>
	</footer>
	<script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
	<script src="./asset/js/slick.min.js"></script>
	<script src="./asset/js/common.js"></script>
	<script>
		$(".single-item").slick({
			dots : true,
			autoplay : true,
			autoplaySpeed : 3000
		});
	</script>
	<script>
		$(".searchText").keydown(
				function(k) { //버튼이 아닌 텍스트 에서 엔터가 일어나므로 클래스는 input text 로 지정 해준다.
					if (k.keyCode == 13) { //keycode 13이 엔터시다.
						location.href = "./sub/area_list.html?q="
								+ $(".searchText").val();
					}
				});

		//키워드 돋보기 클릭시
		function Magnifying() {
			location.href = "./sub/area_list.html?q="
					+ $("input.searchText").val();

		}

		bestimg();
		function bestimg() {
			//요청 url 이자리에 있어야 페이지 번호가 변경된다
			var url = "https://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=XmO47zGbJrkxqEaqsQ5H4mPsp5BQcnSWf5LGCoiHLguhoLQ5Ja8hP%2BeFwSI2NZ%2Bk1O4IhOrjMGTkcYL%2F8HxabA%3D%3D&contentTypeId=&areaCode=&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=B&numOfRows=4&_type=json";
			$.ajax({
				type : "GET", //통신 방식(GET/POST)
				url : url, //통신할 페이지
				dataType : "json", //서버로부터 받을 데이터 형식
				success : function(data) {
					//                    console.log(data);
					parseJson(data);

				}, //통신에 성공했을 때 실행될 콜백함수
				error : function(res) {
					alert("통신실패 : " + res.responseText);
				}, //통신에 실패했을 때 실행될 콜백함수
				complete : function() {
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
			item
					.map(function(i) {
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
						bestList += "<li class='listItem'><a href='" + link + "'><div class='imgWrap'><div class='txtWrap'><img src='" + firstImage + "'alt=''></div></div><div class='txtWrap'><strong>"
								+ i.title
								+ " </strong><p class='add'>"
								+ address
								+ "</p><p class='viewNum'></p></div></a></li>";
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

				for ( var i in paraArr) {
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