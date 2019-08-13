<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>BETA_GO ACCOUNT</title>
<link href="./css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="./css/slick.css">
<link rel="stylesheet" href="./css/common.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

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
	<div class="container">
			<h2>회원가입</h2>
			
			<form action = "" class="account-validated" method="post" onsubmit="return check();" enctype="multipart/form-data" autocomplete="off">
			<div class="form-group">
				<label for="account_id">아이디</label>
				<input type="text" class="form-control" id="account_id" placeholder="아이디는 6~20자로 기입하세요" required>
				<div id="errorAccount_id" class="error"></div>
			</div>
			<div class="form-group">
				<label for="account_pwd">비밀번호</label>
				<input type="password" class="form-control" id="account_pwd" placeholder="비밀번호는 6~20자로 기입하세요" required>
				<div id="errorAccount_pwd" class="error"></div>
			</div>
			<div class="form-group">
				<label for="account_pwdConf">비밀번호 재확인</label>
				<input type="password" class="form-control" id="account_pwdConf" required>
				<div id="errorAccount_pwdConf" class="error"></div>
			</div>
			<div class="form-group">
				<label for="user_name">이름</label>
				<input type="text" class="form-control" id="user_name" required>
			</div>
			<div class="form-group">
				<label for="user_birth">생년월일</label>
				<input type="date" class="form-control" id="user_birth" required>
			</div>
			<div class="form-group">
			<label for="user_birth">성별</label>
				<select id="user_gender" class="form-control" >
					<option value="male" checked>남자</option>
					<option value="female">여자</option>
				</select>
			</div>
			
			<div class="form-group">
				<label for="user_phone">휴대전화</label>
				<input type="text" class="form-control" id="user_phone" placeholder="예) 010-1234-1234" required>
			</div>
			<div class="form-group">
				<label for="user_email">이메일</label>
				<input type="email" class="form-control" id="user_email">
			</div>
			<div class="form-group">
				<label for="user_addr">주소</label>
				<input type="text" class="form-control" id="user_addr">
			</div>
			<div class="form-group">
				<label for="user_img">이미지</label>
				<input type="file" class="form-control" id="user_img">
			</div>

			<div class="form-group">
				<label for="user_education">학력</label>
				<select id="user_education" class="form-control" >
					<option value="middle">중졸</option>
					<option value="high" checked>고졸</option>
					<option value="college">초대졸</option>
					<option value="university">대학(4년)</option>
					<option value="GSM">대학원(석사)</option>
					<option value="GSD">대학원(박사)</option>
				</select>
			</div>
			<!--
			1) 중졸, 고졸시에는 전공 안 뜨게?
			2) 기타 넣어서 직접입력은 어떤지  -->
			<div class="form-group">
				<label for="user_major">전공</label>
				<textarea class="form-control" rows="5" id="user_major"></textarea>
			</div>
			
			<!--
			네이버: 가입페이지 전에 이용약관.
			<button type="reset" class="btn btn-danger btn-lg btn-block">취소하기</button>
			
			-->
			<button type="submit" class="btn btn-primary btn-lg btn-block">가입하기</button>
		</form>
	</div>

	<!--  	네이버 참조
	
	//가입날
	//권한
 -->

</body>
</html>