<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/slick.css">
<link rel="stylesheet" href="css/common.css">
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
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
.section {
margin-top: 50px;
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
</style>
<script>

</script>
</head>
<body>
	<div class="wrap">
		<div class="header">
			<div class="gnbWrap">
				<div class="inner">
					<h1>
						<a href="./index.html"> <img class="logo_mo"
							src="./asset/img/logo_mo.png" alt="복지GO"> <img
							class="logo_pc" src="./asset/img/logo_pc.png" alt="복지GO">
						</a>
					</h1>
					<button class="gnbOpen">
						<span>모바일메뉴열기</span>
					</button>
					<nav class="gnb">
						<div class="gnbLogo">
							<a href="#"> <img class="logo_mo"
								src="./asset/img/logo_mo.png" alt="복지GO">
							</a>
						</div>
						<ul class="depth1">
							<li><a href="lectureList.jsp">강의 목록 보기</a></li>
							<li><a href="/sub/area_list.html">지역별 찾기</a></li>
							<li><a href="/sub/myLocation.html">설문조사</a></li>
						</ul>
					</nav>
					<button class="gnbClose">모바일메뉴닫기</button>
				</div>
			</div>
		</div>
		<div class="searchWrap">
			<div class="inner">
				<div class="search">
					<input type="text" class="searchText" placeholder="검색어를 입력해 주세요.">
					<input type="button" class="searchButton" onclick="Magnifying();">
				</div>
			</div>
		</div>

<div class="container">
		<div class="section">
			<form action="../boardController.bo?command=boardWrite.bo"
				method="post" enctype="multipart/form-data"
				onsubmit="return check();">

				<div class="form-group">
					<label for="btitle">수업 과정은 어떠하셨습니까?</label>
					<textarea rows="4" cols="150" name="bcontent"></textarea>
				</div>
				<div class="form-group">
					<label for="bwriter">강사님의 강의는 어떠하셨습니까</label> 
						<textarea rows="4" cols="150" name="bcontent"></textarea>
				</div>
				<div class="form-group">
					<label for="bpassword">강사님에게 바라는 점</label>
						<textarea rows="4" cols="150" name="bcontent"></textarea>
				</div>
				<div class="form-group">
					<label for="bcontent">강의 동영상에 추가 되었으면 하는점</label>
					<!-- <input type="text"
					class="form-control" id="bcontent" name="bcontent"  /> -->
					<textarea rows="4" cols="150" name="bcontent"></textarea>
				</div>			
				<div class="form-group">
					<label for="bcontent">취업은 어떤 방식으로 하실 예정이신가요?</label>
					<!-- <input type="text"
					class="form-control" id="bcontent" name="bcontent"  /> -->
					<textarea rows="4" cols="150" name="bcontent"></textarea>
				</div>		
				<div class="form-group">
					<label for="bcontent">BETO_GO에게 바라는점</label>
					<!-- <input type="text"
					class="form-control" id="bcontent" name="bcontent"  /> -->
					<textarea rows="4" cols="150" name="bcontent"></textarea>
				</div>			

				<input type="hidden" name="command" value="boardWrite.bo" />
				<button type="button" class="btn btn-dark" onclick="history.back();">취
					소</button>
				<button type="submit" class="btn btn-dark">제출</button>
			</form>
		</div>
</div>

	</div>
	<div class="inner"></div>


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
	

	<script>
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
	</script>
</body>
</html>