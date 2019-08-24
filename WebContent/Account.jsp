<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>BETA_GO ACCOUNT</title>
<link href="./css/bootstrap.min.css" type="text/css" rel="stylesheet" />


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="./js/jquery.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
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
	
/* 	if (idisdup !== result) {
		return false;
	} else if (phisdup !== result){
		return false;
	}
		return true
} */
	
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
	
	
	
	
	function phisdup(){
		var user_phone = $('#user_phone').val();
		var result = true;
		if (user_phone.length >= 11) { 
			$.ajax({ 
				type : "GET",
				url : "../BetagoController.bo?user_phone=" + user_phone,
				dataType : "json", // 서버에서 반환되는 데이터 타입
				success : function(data) {
					console.log(data);
					
					if (data.resultCode == 'true') {
						$('#errorUser_phone').html('이미 있는 번호입니다');
						result = false;
					} 
				},
				error : function(res) {
					console.log(res.responseText);
				},
				complete : function() {
					setTimeout(() => {
						$('#errorUser_phone').empty()
					}, 500);
				}
			}); // ajax 끝
		}
		return result;
	}
	 
	
	 
	
	
	
	
	
	$(document).ready(function() {
		$('#account_id').keyup(idisdup);
	
	});
	
	
	
	$(document).ready(function() {
		$('#user_phone').keyup(phisdup);
		
	});
	
	
 	function mailCheck(){
 		var user_email = $('#user_email').val();
        location.href = "emailCheck.do?tmp=" + user_email
     }

</script>
<style>
.error {
	color: red;
}
</style>
</head>
<style>
#dropdownMenuButton{
border:0;
outline:0;
color:white;
background-color:#85B8CB;
adding-right: .5rem;
    padding-left: .5rem;

}
</style>
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
				<label for="user_email">이메일</label> <input type="email"
					class="form-control" id="user_email" name="user_email"><br>
				<button type="button" class="btn btn-success">이메일 인증</button>
				<!-- 버튼을 누를시 무한루프로 돌아가서 컴퓨터 꺼짐. 일단 mailCheck 뺌. onclick="mailCheck();" -->
			</div>

			<div class="form-group">
				<label for="user_addr">주소</label><br /> <input type="text"
					id="sample3_postcode" name="sample3_postcode" placeholder="우편번호">
				<button type="button" class="btn btn-success"
					onclick="sample3_execDaumPostcode();">우편번호 찾기</button>
				<input type="text" class="form-control" id="sample3_address"
					name="sample3_address" placeholder="주소"><br> <input
					type="text" class="form-control" id="sample3_detailAddress"
					name="sample3_detailAddress" placeholder="상세주소"><br> <input
					type="text" class="form-control" id="sample3_extraAddress"
					placeholder="참고항목">
			</div>
			<div id="wrap"
				style="display: none; border: 1px solid; width: 500px; height: 300px; margin: 5px 0; position: relative">
				<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
					id="btnFoldWrap"
					style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
					onclick="foldDaumPostcode()" alt="접기 버튼">
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

	<script>
	 // 우편번호 찾기 찾기 화면을 넣을 element
    var element_wrap = document.getElementById('wrap');

    function foldDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_wrap.style.display = 'none';
    }

    function sample3_execDaumPostcode() {
        // 현재 scroll 위치를 저장해놓는다.
        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample3_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample3_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample3_postcode').value = data.zonecode;
                document.getElementById("sample3_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample3_detailAddress").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_wrap.style.display = 'none';

                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                document.body.scrollTop = currentScroll;
            },
            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
            onresize : function(size) {
                element_wrap.style.height = size.height+'px';
            },
            width : '100%',
            height : '100%'
        }).embed(element_wrap);

        // iframe을 넣은 element를 보이게 한다.
        element_wrap.style.display = 'block';
    }
	</script>
</body>
</html>