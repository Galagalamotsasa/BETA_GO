<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- jQuery 1.8 or later, 33 KB -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/lectureList.css">
<link rel="stylesheet" href="./css/bot.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<style>
	body, ul {

margin: 0;

padding: 0;

}

li {

list-style-type: none;

}

a {

text-decoration: none;

color: inherit;
}

/* Design Area */여기서 부터 실제 디자인하는 영역

body {

text-align: center;

}

.horizontal-menu {

display: inline-block;

overflow: hidden;

border-bottom: 3px solid #318294;

}

.horizontal-menu li {

float: left;

}

.horizontal-menu a {

display: block;

height: 50px;

line-height: 50px;

background-color: #3ea3ba;

color: #ddd;

padding: 0 35px;

border-right: 1px solid #358da1;

}

.horizontal-menu li:last-child a { 

border-right: 0;

}

.horizontal-menu a:hover { 

background-color: #358da1;

color: #fff;

}
#dropdownMenuButton{
border:0;
outline:0;
color:white;
background-color:#85B8CB;
adding-right: .5rem;
    padding-left: .5rem;

}
</style>
</head>

<body>
<header style="background-color: #85B8CB">
		<!-- Navigation -->
		<div>
			<nav class="navbar navbar-expand-lg navbar-dark static-top">
				<div class="container" style="background: #85B8CB">
					<a class="navbar-brand" href="./Home.jsp"> <img src="./img/logo_mo1.png"
						alt="">
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarResponsive" aria-controls="navbarResponsive"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarResponsive">
						<ul class="navbar-nav ml-auto">
						
						<c:choose>
							<c:when test="${sessionScope.userid !=null }">
							<li class="nav-item active"><a class="nav-link" href="#">마이페이지
									<span class="sr-only">(current)</span>
							</a></li>
							</c:when>
							
							<c:when test="${sessionScope.userid ==null }">
							<li class="nav-item active"><a class="nav-link" href="./login.jsp">로그인/회원가입
									<span class="sr-only">(current)</span>
							</a></li>
							</c:when>
							</c:choose>
							
							<li class="nav-item"><a class="nav-link" href="#" style="color:white">BETA-GO란</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#" style="color:white">묶음강좌</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="./lectureList.jsp" style="color:white">강좌찾기</a>
							</li>
							<div class="dropdown" >
								<button class="dropdown-toggle" type="button"
									id="dropdownMenuButton" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">게시판</button>
								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="background-color:#85B8CB;">
									<a class="dropdown-item" href="#" style="color:white">공지사항</a> <a
										class="dropdown-item" href="#" style="color:white">자유게시판</a> <a
										class="dropdown-item" href="#" style="color:white">모두의 코딩</a>
										<a
										class="dropdown-item" href="#" style="color:white">FAQ</a>
								</div>
							</div>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		
	</header>
	<div class="wrap">
		
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
			<div class="inner">
				<h2>프로그래밍 언어 강의 찾기</h2>
				<div class="temaSort">
					<select id="sort" onchange="sortF();">
						<option name="sortName" value="">전체</option>
						<option name="sortName" value="A">제목순</option>
						<option name="sortName" value="B">인기순</option>
						<option name="sortName" value="D">생성일순</option>
					</select>
				</div>

				<div class="areaSelectWrap">
					<button class="checkedTxt">전체</button>
					<ul class="horizontal-menu" >
						<li><a href="">JAVA</a></li>
						<li><a href="">JavaScript</a></li>
						<li><a href="">Python</a></li>
						<li><a href="">C#</a></li>
						<li><a href="">C언어</a></li>
						<li><a href="">C++</a></li>
						<li><a href="">PHP</a></li>
						<li><a href="">HTML</a></li>
						<!-- <li><label><input id="ss" type="radio"
								name="typeSelect" value="" class="allCheck" checked><span>프로그래밍강의</span></label></li>
						<li><label><input type="radio" name="typeSelect"
								value="12"><span>JAVA</span></label></li>
						<li><label><input type="radio" name="typeSelect"
								value="14"><span>Python</span></label></li>
						<li><label><input type="radio" name="typeSelect"
								value="15"><span>JavaScript</span></label></li>
						<li><label><input type="radio" name="typeSelect"
								value="25"><span> C#</span></label></li>
						<li><label><input type="radio" name="typeSelect"
								value="28"><span>C언어</span></label></li>
						<li><label><input type="radio" name="typeSelect"
								value="32"><span>PHP</span></label></li>
						<li><label><input type="radio" name="typeSelect"
								value="38"><span>C++</span></label></li>
						<li><label><input type="radio" name="typeSelect"
								value="39"><span>HTML</span></label></li> -->
					</ul>

				</div>

				<div class="daeDetail"></div>

				<div class="jungDetail"></div>

				<div class="soDetail"></div>
				<!--
                <ul class="output">
                </ul>
-->
			</div>

			<div class="container text-center">
				<h3>What We Do</h3>
				<br>
				<div class="row">
					<div class="col-sm-4">
						<img src="https://placehold.it/150x80?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
						<p>Current Project</p>
					</div>
					<div class="col-sm-4">
						<img src="https://placehold.it/150x80?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
						<p>Project 2</p>
					</div>
					<div class="col-sm-4">
						<img src="https://placehold.it/150x80?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
						<p>Project 2</p>
					</div>
				</div>
			</div>
			<br>
			<div class="container text-center">
				<div class="row">
					<div class="col-sm-4">
						<img src="https://placehold.it/150x80?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
						<p>Current Project</p>
					</div>
					<div class="col-sm-4">
						<img src="https://placehold.it/150x80?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
						<p>Project 2</p>
					</div>
					<div class="col-sm-4">
						<img src="https://placehold.it/150x80?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
						<p>Project 2</p>
					</div>
				</div>
			</div>
			<br>
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
					<a href="tel:02.000.0000">문의전화 02)000-0000</a>
					<div>Copyright &copy; 오벤져스. All Right Reserved.</div>
				</div>
			</div>

		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
	<script src="../asset/js/common.js"></script>


	<script>		

		$.ajax({
			type : "GET", //통신 방식(GET/POST)
			url : url, //통신할 페이지
			dataType : "json", //서버로부터 받을 데이터 형식
			success : function(data) {
				console.log(data);
				practice(data);
			}, //통신에 성공했을 때 실행될 콜백함수
			error : function(res) {
				alert("통신실패 : " + res.responseText);
			}, //통신에 실패했을 때 실행될 콜백함수
			complete : function() {
				//                        $("#loading").css("display", "none"); //통신이 완료 되었을 때 로딩 이미지를 없애라.
			} //통신이 완료 되었을때 
		});}
	</script>
</body>
</html>