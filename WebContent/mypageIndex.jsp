<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/lectureList.css">
<link rel="stylesheet" href="css/bot.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<style>

.sidenav {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	right: 0;
	background-color: #85B8CB;
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 60px;
}

.sidenav a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.sidenav a:hover {
	color: #f1f1f1;
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}
</style>
</head>


<body>
	<div class="wrap">
		<div class="header">
			<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<a href="#">
			<div class="container">
				<img src="img/profileImg.png" class="img-rounded" alt="Cinque Terre"
					width="150" height="150">
			</div>
		</a>
		<a href="#">Services</a>
		<a href="#">Clients</a>
		<a href="#">정보수정</a>
	</div>

	<span style="font-size: 30px;"cursor: pointer" onclick="openNav()">&#9776; </span>
			
			<div class="gnbWrap">
				<div class="inner">
					<h1>
						<a href="./index.html"> <img class="logo_mo"
							src="./img/logo_mo.png" alt="베타GO"> <img class="logo_pc"
							src="./img/logo_pc.png" alt="베타GO">
						</a>
					</h1>

					<nav class="gnb">
						<div class="gnbLogo">
							<a href="#"> <img class="logo_mo" src="./img/logo_mo.png"
								alt="베타GO">
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
			<div class="inner"></div>
		</div>
		<div class="section">
			<div class="inner">
				<div class="container">
					<h2>작성 글</h2>

					<table class="table table-hover">
						<thead>
							<tr>
								<th>Firstname</th>
								<th>Lastname</th>
								<th>Email</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>John</td>
								<td>Doe</td>
								<td>john@example.com</td>
							</tr>
							<tr>
								<td>Mary</td>
								<td>Moe</td>
								<td>mary@example.com</td>
							</tr>
							<tr>
								<td>July</td>
								<td>Dooley</td>
								<td>july@example.com</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="container">
					<h2>수강 중인 강의</h2>

					<table class="table table-hover">
						<thead>
							<tr>
								<th>Firstname</th>
								<th>Lastname</th>
								<th>Email</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>John</td>
								<td>Doe</td>
								<td>john@example.com</td>
							</tr>
							<tr>
								<td>Mary</td>
								<td>Moe</td>
								<td>mary@example.com</td>
							</tr>
							<tr>
								<td>July</td>
								<td>Dooley</td>
								<td>july@example.com</td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>


			<br> <br>
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
	<script>
		function openNav() {
			document.getElementById("mySidenav").style.width = "250px";
		}

		function closeNav() {
			document.getElementById("mySidenav").style.width = "0";
		}
	</script>
</body>
</html>