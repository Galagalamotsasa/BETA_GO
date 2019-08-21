<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>BETA_GO ACCOUNT</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="./css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="./css/slick.css">
<link rel="stylesheet" href="./css/common.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script>


function check(){  //회원가입 유효성 검사
	
	var result = true;

	
	var account_id = $('#account_id').val();
	var account_pwd = $('#account_pwd').val();
	var account_pwdConf = $('#account_pwdConf').val();
	var user_name = $('#user_name').val();
	var user_phone = $('#user_phone').val();
	

	
	if(account_id.length < 5 || account_id.length > 20){
		$('#errorAccount_id').html('아이디는 5~20자로 기입하세요');
		result = false;
	} else if (account_pwd.length < 5 || account_pwd.length > 20) {
		$('#errorAccount_pwd').html('비밀번호는 5~20자로 기입하세요');
		result = false;
	} else 	if (account_pwd !== account_pwdConf) {
		$('#errorAccount_pwdConf').html('비밀번호가 일치하지 않습니다');
		$('#account_pwd').focus();
		result = false;
	}
	
	if (idisdup && result) {
		return true;
	} else {
		return false;
	}
	

}
	
	function idisdup(){
		var account_id = $('#account_id').val();
		var result = true;
		if (account_id.length >= 5) { 
			$.ajax({ 
				type : "GET",
				url : "../BetagoController.bo?account_id=" + account_id,
				dataType : "json", // 서버에서 반환되는 데이터 타입
				success : function(data) {
					console.log(data);
					
					if (data.resultCode == 'true') {
						$('#errorAccount_id').html('아이디가 중복됩니다');
						result = false;
					} 
				},
				error : function(res) {
					console.log(res.responseText);
				},
				complete : function() {
					setTimeout(() => {
						$('#errorAccount_id').empty()
					}, 500);
				}
			}); // ajax 끝
		}
		return result;
	}
	
	$(document).ready(function() {
		$('#uid').keyup(idisdup);
		
	});

</script>
<style>
.error {
	color: red;
}
</style>
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
	width: 80%;
	text-align: center;
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
	<div class="container">
		<h2>회원가입</h2>

		<form action="./BetagoController.bo?mode=insert.do" method="post"
			enctype="multipart/form-data" onsubmit="return check();">
			<!-- class="account-validated"  autocomplete="off" -->

			<div class="form-group">
				<label for="auth_no">해당사항</label> <select id="auth_no"
					name="auth_no" class="form-control">
					<option value="1" checked>학생</option>
					<option value="2">강사</option>
				</select>
			</div>
			<div class="form-group">
				<label for="account_id">아이디</label> <input type="text"
					class="form-control" id="account_id" name="account_id"
					placeholder="아이디는 5~20자로 기입하세요" required>
				<div id="errorAccount_id" class="error"></div>
			</div>

			<div class="form-group">
				<label for="account_pwd">비밀번호</label> <input type="password"
					class="form-control" id="account_pwd" name="account_pwd"
					placeholder="비밀번호는 5~20자로 기입하세요" required>
				<div id="errorAccount_pwd" class="error"></div>
			</div>

			<div class="form-group">
				<label for="account_pwdConf">비밀번호 재확인</label> <input type="password"
					class="form-control" id="account_pwdConf" name="account_pwdConf"
					required>
				<div id="errorAccount_pwdConf" class="error"></div>
			</div>

			<div class="form-group">
				<label for="user_name">이름</label> <input type="text"
					class="form-control" id="user_name" name="user_name" required>
				<div id="errorUser_name" class="error"></div>
			</div>

			<div class="form-group">
				<label for="user_birth">생년월일</label> <input type="date"
					class="form-control" id="user_birth" name="user_birth" required>
				<div id="errorUser_birth" class="error"></div>
			</div>


			<div class="form-group">
				<label for="user_birth">성별</label> <select id="user_gender"
					name="user_gender" class="form-control">
					<option value="m" checked>남자</option>
					<option value="f">여자</option>
				</select>
			</div>

			<div class="form-group">
				<label for="user_phone">휴대전화</label> <input type="text"
					class="form-control" id="user_phone" name="user_phone"
					placeholder="예) 010-1234-1234" required>
				<div id="errorUser_phone" class="error"></div>
			</div>

			<div class="form-group">
				<label for="user_email">이메일(선택)</label> <input type="email"
					class="form-control" id="user_email" name="user_email">
			</div>

			<!-- 주소 zip 가져오기 -->
			<div class="form-group">
				<label for="user_addr">주소</label> <input type="text"
					class="form-control" id="user_addr" name="user_addr">
			</div>


			<div class="form-group">
				<label for="user_img">이미지</label> <input type="file"
					class="form-control" id="user_img" name="user_img">
			</div>

			<div class="form-group">
				<label for="user_education">학력</label> <select id="user_education"
					name="user_education" class="form-control">
					<option value="middle">중졸</option>
					<option value="high" checked>고졸</option>
					<option value="college">초대졸</option>
					<option value="university">대학(4년)</option>
					<option value="GSMD">대학원(석사)</option>
					<!-- Graduated School Master's Degree -->
					<option value="GSDD">대학원(박사)</option>
					<!-- Graduated School Doctor's Degree -->
				</select>
			</div>

			<div class="form-group">
				<label for="user_major">전공</label>
				<textarea class="form-control" rows="3" id="user_major"
					name="user_major"></textarea>
			</div>

			<button type="submit" class="btn btn-primary btn-lg btn-block">가입하기</button>
		</form>
	</div>

	<!--  	네이버 참조
	
	//가입날
	//권한
 -->

</body>
</html>