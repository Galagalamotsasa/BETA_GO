<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>BETA_GO ACCOUNT</title>
<link href="./css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
</head>
<body>
	<div class="container">
		<form>
			<div class="form-group">
				<label for="account_id">아이디</label>
				<input type="text" class="form-control" id="account_id" >
			</div>
			<div class="form-group">
				<label for="account_pwd">비밀번호</label>
				<input type="password" class="form-control" id="account_pwd">
			</div>
			<div class="form-group">
				<label for="account_pwdConf">비밀번호 재확인</label>
				<input type="password" class="form-control" id="account_pwdConf">
			</div>
			<div class="form-group">
				<label for="user_name">이름</label>
				<input type="text" class="form-control" id="user_name">
			</div>
			<div class="form-group">
				<label for="user_birth">생년월일</label>
				<input type="date" class="form-control" id="user_birth">
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
				<input type="text" class="form-control" id="user_phone">
			</div>
			<div class="form-group">
				<label for="user_addr">주소</label>
				<input type="text" class="form-control" id="user_addr">
			</div>
			<div class="form-group">
				<label for="user_img">이미지</label>
				<input type="text" class="form-control" id="user_img">
			</div>
			<div class="form-group">
				<label for="user_email">이메일</label>
				<input type="email" class="form-control" id="user_email">
			</div>
			<div class="form-group">
				<label for="user_education">학력</label>
				<textarea class="form-control" rows="5" id="user_education"></textarea>
			</div>
			<div class="form-group">
				<label for="user_major">전공</label>
				<textarea class="form-control" rows="5" id="user_major"></textarea>
			</div>
			
			  <button type="button" class="btn btn-primary btn-lg btn-block">가입하기</button>
		</form>
	</div>

	<!--  	네이버 참조
	
	//가입날
	//권한
 -->

</body>
</html>