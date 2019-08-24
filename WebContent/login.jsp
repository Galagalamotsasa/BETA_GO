<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link href="./css/common.css" type="text/css" rel="stylesheet" />
<link href="./css/bootstrap.min.css" type="text/css" rel="stylesheet" />


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
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
#dropdownMenuButton{
border:0;
outline:0;
color:white;
background-color:#85B8CB;
adding-right: .5rem;
    padding-left: .5rem;

}
#logout{
text-align: center;}
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
							<li class="nav-item active"><a class="nav-link" href="#">로그인/회원가입
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
							value="로그인" /> <input type=button id="loginbutton" onclick="location.href='./Account.jsp'"  value="회원가입" />
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