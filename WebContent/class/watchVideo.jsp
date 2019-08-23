<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>비디오 보기</title>
<script src="./js/jquery.min.js"></script>
<script src="./js/common.js"></script>
<link href="./css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<link rel="stylesheet" href="./css/slick.css">
<link rel="stylesheet" href="./css/common.css">

<style>
section {
	position: relative;
	top: 70px;
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	trainsition: 0.3s;
	width: 30%;
	boarder-radius: 5px;
	margin-right: 10px;
	margin-botton: 10px;
	float: left;
}

.card .container {
	margin-top: 5px;
}
</style>
</head>
<body>
	<div class="header">
			<div class="gnbWrap">
				<div class="inner">
					<h1>
						<a href="./index.html"> <img class="logo_mo"
							src="img/logo_mo1.png" alt="베타GO"> <img class="logo_pc"
							src="img/logo_pc1.png" alt="베타GO">
						</a>
					</h1>
					<button class="gnbOpen">
						<span>모바일메뉴열기</span>
					</button>

					<nav class="gnb">
						<div class="gnbLogo">
							<a href="#"> <img class="logo_mo" src="img/logo_mo1.png"
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
					</br>
					<h3>${selectedVideo.video_title }</h3>
					</br>
					<h4>조회수 ${selectedVideo.video_viewcnt }</h4>
					<h4>카테고리</h4>
					<p><button type="button" class="btn btn-primary" onclick='location.href="./BetagoController.bo?mode=searchVideoCategory.bo&vtype=${selectedVideo.video_category_no }"'>#${selectedVideo.video_category_title }</button></p>
					<p>${selectedVideo.video_category_desc }</p>
					<!-- <div style="float: left;">-->
					<iframe width="900" height="470" src="https://www.youtube.com/embed/${selectedVideo.video_link }" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
					</hr>
					<h3>노트</h3>
					<div class="form-group">
  						<label for="comment">연습해보세요 :</label>
						<textarea class="form-control" rows="10" id="comment"></textarea>
					</div>
					<p>* 티끌모아 태산이다.</p>
					<!--</div>-->
				</div>
			</div>
		</div>

</body>
</html>