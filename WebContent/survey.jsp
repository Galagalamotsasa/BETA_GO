<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="./css/bootstrap.min.css" type="text/css" rel="stylesheet" />

<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/lectureList.css">
<link rel="stylesheet" href="./css/bot.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="./js/jquery.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<style>
.swiper-container {
	max-width: 1920px;
	margin: 0 auto;
}

.swiper-container img {
	width: 100%;
}


footer {
	width: 100%;
	height: 65px;
	position: fixed;
	bottom: 0;
	border-top: 2px solid black;
	background-color: white;
}

footer ul li {
	/* °¢ ¸Þ´ºµé*/
	float: left;
	width: 33.333%;
	list-style-type: none;
	text-align: center;
	font-size: 1em;
}

footer ul li a img {
	height: 45px;
}

footer ul li a div {
	line-height: 0px;
	color: #000;
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
<script>

</script>
</head>
<body>
	<header style="background-color: #85B8CB">
		<!-- Navigation -->
		<div>
			<nav class="navbar navbar-expand-lg navbar-dark static-top">
				<div class="container" style="background: #85B8CB">
					<a class="navbar-brand" href="Home.jsp"> <img src="./img/logo_mo1.png"
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


<div class="container">
		<div class="section">
			<form action="../boardController.bo?command=boardWrite.bo"
				method="post" enctype="multipart/form-data"
				onsubmit="return check();">

				<div class="form-group">
					<label for="btitle">수업 과정은 어떠하셨습니까?</label>
					<textarea rows="4" cols="150" name="bcontent"></textarea>
				</div>
				<div class="form-group">
					<label for="bwriter">강사님의 강의는 어떠하셨습니까</label> 
						<textarea rows="4" cols="150" name="bcontent"></textarea>
				</div>
				<div class="form-group">
					<label for="bpassword">강사님에게 바라는 점</label>
						<textarea rows="4" cols="150" name="bcontent"></textarea>
				</div>
				<div class="form-group">
					<label for="bcontent">강의 동영상에 추가 되었으면 하는점</label>
					<!-- <input type="text"
					class="form-control" id="bcontent" name="bcontent"  /> -->
					<textarea rows="4" cols="150" name="bcontent"></textarea>
				</div>			
				<div class="form-group">
					<label for="bcontent">취업은 어떤 방식으로 하실 예정이신가요?</label>
					<!-- <input type="text"
					class="form-control" id="bcontent" name="bcontent"  /> -->
					<textarea rows="4" cols="150" name="bcontent"></textarea>
				</div>		
				<div class="form-group">
					<label for="bcontent">BETO_GO에게 바라는점</label>
					<!-- <input type="text"
					class="form-control" id="bcontent" name="bcontent"  /> -->
					<textarea rows="4" cols="150" name="bcontent"></textarea>
				</div>			

				<input type="hidden" name="command" value="boardWrite.bo" />
				<button type="button" class="btn btn-dark" onclick="history.back();">취
					소</button>
				<button type="submit" class="btn btn-dark">제출</button>
			</form>
		</div>
</div>

	</div>
	<div class="inner"></div>


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
				<div>Copyright &copy; 오벤져스. All Right Reserved.</div>
			</div>
		</div>
		<a href="#" class="topButton">TOP</a>
	</div>
	

	<script>
		function bestimg() {
			//요청 url 이자리에 있어야 페이지 번호가 변경된다
			var url = "https://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=XmO47zGbJrkxqEaqsQ5H4mPsp5BQcnSWf5LGCoiHLguhoLQ5Ja8hP%2BeFwSI2NZ%2Bk1O4IhOrjMGTkcYL%2F8HxabA%3D%3D&contentTypeId=&areaCode=&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=B&numOfRows=4&_type=json";
			$.ajax({
				type : "GET", //통신 방식(GET/POST)
				url : url, //통신할 페이지
				dataType : "json", //서버로부터 받을 데이터 형식
				success : function(data) {
					//                    console.log(data);
					parseJson(data);

				}, //통신에 성공했을 때 실행될 콜백함수
				error : function(res) {
					alert("통신실패 : " + res.responseText);
				}, //통신에 실패했을 때 실행될 콜백함수
				complete : function() {
					$("#loding").css("display", "none");

				} //통신이 완료 되었을때 
			});

		}
	</script>
</body>
</html>