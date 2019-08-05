<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>BETA-GO BOARD LIST</title>
<link href="./css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="./css/slick.css">
<link rel="stylesheet" href="./css/common.css">
<!-- jQuery 1.8 or later, 33 KB -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!-- Fotorama from CDNJS, 19 KB -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="./js/jquery.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
</head>
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
	background: url(./img/arrow.png) no-repeat center center;
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

.footer {
	position: absolute;
	left: 0;
	bottom: 0;
	width: 100%;
}

#boardList {
	width: 80%; text-align : center;
	margin-right: auto;
	margin-left: auto;
	text-align: center;
}

.bno {
	width: 5%;
}

.bcontent {
	width: 70%;
}

.cnt {
	width: 7%;
}

</style>
<body>
	<div class="header">
		<div class="gnbWrap">
			<div class="inner">
				<h1>
					<a href="./index.html"> <img class="logo_mo" src="./img/logo_mo.png" alt="복지GO"> <img class="logo_pc" src="./img/logo_pc.png" alt="복지GO">
					</a>
				</h1>
				<button class="gnbOpen">
					<span>모바일메뉴열기</span>
				</button>
				<nav class="gnb">
					<div class="gnbLogo" >
						<a href="#"> <img class="logo_mo" src="./img/logo_mo.png" alt="복지GO">
						</a>
					</div>
					<ul class="depth1">
						<li><a href="/sub/tema_list.html">테마별 찾기</a></li>
						<li><a href="/sub/area_list.html">지역별 찾기</a></li>
						<li><a href="/sub/myLocation.html">내주변 찾기</a></li>
					</ul>
				</nav>
				<button class="gnbClose">모바일메뉴닫기</button>
			</div>
		</div>
	</div>
	<!-- Add images to <div class="fotorama"></div> -->
	<div id="fotorama_img">
	<div class="fotorama" >
		<img src="https://s.fotorama.io/1.jpg"> <img src="https://s.fotorama.io/2.jpg">
	</div>
	</div>
	<table class="table" id="boardList">
		<thead>
			<tr>
				<th scope="col" class="bno">번호</th>
				<th scope="col" class="bcontent">제목</th>
				<th scope="col">글쓴이</th>
				<th scope="col">작성일</th>
				<th scope="col" class="cnt">조회</th>
				<th scope="col" class="cnt">댓글</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>1</td>
				<td>2</td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Jacob</td>
				<td>Thornton</td>
				<td>@fat</td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td>Larry</td>
				<td>the Bird</td>
				<td>@twitter</td>
			</tr>
		</tbody>
	</table>
	<footer id="mobile_footer">
		<ul>
			<li id="level"><a href="./map.html"> <img src='./img/adventurerblk.png' id='levelFooter' style="margin-bottom: 5px;" />
					<div>지도</div>
			</a></li>
			<li id="mountain"><a href="./region.html"> <img src='./img/goalsblk.png' id='mountainFooter' style="margin-bottom: 5px;" />
					<div>명산</div>
			</a></li>
			<li id="community"><a href="./community.html"> <img src='./img/friendshipblk.png' id='communityFooter' style="margin-bottom: 5px;" />
					<div>커뮤니티</div>
			</a></li>
		</ul>
	</footer>
</body>
</html>