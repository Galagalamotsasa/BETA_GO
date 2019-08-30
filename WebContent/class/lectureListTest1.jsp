<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/common.css">
<link rel="stylesheet" href="../css/lectureList.css">
<link rel="stylesheet" href="../css/bot.css">
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
</style>
</head>

<body>
	<div class="wrap">
		<div class="header">
			<div class="gnbWrap">
				<div class="inner">
					<h1>
						<a href="../index.html"> <img class="logo_mo"
							src="../img/logo_mo.png" alt="베타-GO"> <img
							class="logo_pc" src="../img/logo_pc.png" alt="베타-GO">
						</a>
					</h1>
					<button class="gnbOpen">
						<span>모바일메뉴열기</span>
					</button>
					<nav class="gnb">
						<div class="gnbLogo">
							<a href="#"> <img class="logo_mo"
								src="../img/logo_mo.png" alt="베타-GO">
							</a>
						</div>
						<ul class="depth1">
							<li><a href="/sub/tema_list.html">게시판</a></li>
							<li><a href="/sub/area_list.html">강의 찾기</a></li>
							<li><a href="../BetagoController.bo?mode=videoList.bo">강의 자료</a></li>
							<li><a href="/sub/myLocation.html">커뮤니티</a></li>
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
					<a href="../BetagoController.bo?mode=lecDetail.bo&historyno=1" >
						<img src="../img/3531474460_wrl2txTp_20190709050843.jpg"
							class="img-responsive" style="width: 100%" alt="Image">
						<p>자바 마스터</p>
					</a>
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
			<a href="#" class="topButton">TOP</a>
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
		});
	</script>
</body>
</html>