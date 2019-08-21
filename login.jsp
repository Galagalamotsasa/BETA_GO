<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="css/slick.css" type="text/css" rel="stylesheet" />
<link href="css/common.css" type="text/css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<link href="css/slick.css" type="text/css" rel="stylesheet" />
<link href="css/common.css" type="text/css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link href="./css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="./css/slick.css">
<link rel="stylesheet" href="./css/common.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
.headline {
	color: white;
}

h2 {
	text-align: center;
	color: #85B8CB;
	padding: 15px;
}

#logincontents {
	text-align: center;
	margin: 30px;
}

.logintext {
	width: 70%;
	max-width: 500px;
	height: 45px;
	padding: 20px;
	margin: 10px auto;
	display: block;
	border: 2px solid lightgray;
}

#loginbutton {
	background-color: #85B8CB;
	width: 110px;
	height: 40px;
	margin: 20px;
	text-align: center;
	line-height: 40px;
	border-radius: 8px;
	color: white;
	display: inline-block;
	font-size: 17px;
	padding-bottom: 15px;
}
#logout{
text-align: center;}
</style>
</head>
<body>

	<div class="header">
		<div class="gnbWrap">
			<div class="inner">
				<h1>
					<a href="./index.html"> <img class="logo_mo"
						src="./img/logo_mo.png" alt="복지GO"> <img class="logo_pc"
						src="./img/logo_pc.png" alt="복지GO">
					</a>
				</h1>
				<button class="gnbOpen">
					<span>모바일메뉴열기</span>
				</button>
				<nav class="gnb">
					<div class="gnbLogo">
						<a href="#"> <img class="logo_mo" src="./img/logo_mo.png"
							alt="복지GO">
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
	<div class="searchWrap">
		<div class="inner">

			<div class="search">
				<input type="text" class="searchText" placeholder="검색어를 입력해 주세요.">
				<input type="button" class="searchButton" onclick="Magnifying();">
			</div>

		</div>
	</div>
	<form action="./login.do?mode=login.bo" method="post">
		<div class="section log">

			<div class="login">
				<c:if test="${sessionScope.login == null }">
					<h2>Beta_Go 로그인</h2>

					<div id="logincontents">
						<input type="text" class="logintext"
							placeholder="아이디는 5~20자로 기입하세요" name="account_id" required/> <input
							type="text" class="logintext" placeholder="비밀번호는 5~20자로 기입하세요"
							name="account_pwd" required/> <input type=submit id="loginbutton"
							value="로그인" /> <input type=reset id="loginbutton" value="취소" />
					</div>
				</c:if>
				<!-- 로그인 했을 때의 정보 ------------------------------------------------------------>
				<div id='logout'>
					<c:if test="${sessionScope.login != null }">

						<div>${sessionScope.login.account_id }님</div>

						<button type="button" class="btn btn-info"
							onclick="location.href='logout.do';">로그아웃</button>

					</c:if>
				</div>


			</div>
		</div>




	</form>


	<!--    <footer>-->
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
				<div>Copyright &copy; Beta_Go.</div>
			</div>
		</div>

	</div>
	<!--        </footer>-->


</body>
</html>