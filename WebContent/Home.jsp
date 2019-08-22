<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<link href="./css/bootstrap.min.css" type="text/css" rel="stylesheet" />


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="./js/jquery.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<!-- jQuery 1.8 or later, 33 KB -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Fotorama from CDNJS, 19 KB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>


<style>
.carousel-item {
	height: 65vh;
	min-height: 350px;
	background: no-repeat center center scroll;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
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
<script type="text/javascript">
	$(document).ready(function() {
		getEvent();
		getClass();
	});

	function getClass() {
		$
				.ajax({
					type : "GET",
					url : "boardController.bo?mode=getclass.bo",
					dataType : "json",
					success : function(data) {
						console.log(data);
						var output = "";
						for (var i = 0; i < data.length; i++) {
							output += '<div class="col-lg-3 col-md-6 mb-4"><div class="card h-100">';
							output += '<img class="card-img-top" src='
									+data[i].class_img
									+' alt="">';
							output += '<div class="card-body"><h4 class="card-title">'
									+ data[i].class_title
									+ '</h4><p class="card-text">'
									+ data[i].class_object + '</p></div>';
							output += '<div class="card-footer"><a href="#" class="btn btn-primary">수강 신처하러 가기</a></div></div></div>'
						}
						$("#class_output").append(output);
					},
					error : function(res) {
						console.log(res.responseText);
					},
					complete : function() {

					}
				}); // ajax 끝
	}

	function getEvent() {
		$.ajax({
			type : "GET",
			url : "boardController.bo?mode=getevent.bo",
			dataType : "json",
			success : function(data) {
				console.log(data);
				var output = "";
				for (var i = 0; i < data.length; i++) {
					output += '<img src="'+data[i].board_img+'"/>';

				}
				$(".fotorama").append(output); // 포토라마에 이미지 적재
				$('.fotorama').fotorama(); // 포토라마 초기화
			},
			error : function(res) {
				console.log(res.responseText);
			},
			complete : function() {

			}
		}); // ajax 끝

	}
</script>
<style>
</style>

<body>


	<header style="background-color: #85B8CB">
		<!-- Navigation -->
		<div>
			<nav class="navbar navbar-expand-lg navbar-dark static-top">
				<div class="container" style="background: #85B8CB">
					<a class="navbar-brand" href="#"> <img src="./img/logo_mo1.png"
						alt="">
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarResponsive" aria-controls="navbarResponsive"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarResponsive">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="#">마이페이지
									<span class="sr-only">(current)</span>
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#" style="color:white">BETA-GO란</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#" style="color:white">묶음강좌</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#" style="color:white">강좌찾기</a>
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


	<!-- /.container -->
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">


		<div class="fotorama" data-loop="true"></div>

	</div>



	<!-- Page Features -->

	<div id="class_output" class="row text-center"></div>

</body>
</html>