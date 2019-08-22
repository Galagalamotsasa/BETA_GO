<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="./css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="./css/slick.css">
<link rel="stylesheet" href="./css/common.css">
<!-- jQuery 1.8 or later, 33 KB -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="./js/jquery.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script>


function rereply(values){

	var value = "reReply" +values
	var values = document.getElementById(value);
	if(values.style.display =="none"){
		values.style.display = "block";
		
	}else{
		values.style.display = "none";
	
	}
}

		
</script>
<style>
#reply_aroow {
	width: 20px;
}



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
						<li><a href="/sub/tema_list.html">BETA-GO란?</a></li>
						<li><a href="/sub/tema_list.html">강좌 찾기</a></li>
						<li><a href="/sub/area_list.html">묶음 찾기</a></li>
						<li><a href="/sub/myLocation.html">커뮤니티</a></li>
					</ul>
				</nav>
				<button class="gnbClose">모바일메뉴닫기</button>
			</div>
		</div>
	</div>
	<table>

		<tr>
			<th>날짜</th>
			<td>${requestScope.board_content[0].board_write_date  }</td>
		</tr>

		<tr>
			<th>제목</th>
			<td>${requestScope.board_content[0].board_title }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${requestScope.board_content[0].account_id }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${requestScope.board_content[0].board_content }</td>


		</tr>

		<tr>
			<td><img src="${requestScope.board_content[0].board_img }" /></td>
		</tr>
	</table>
	<table>
	</table>
	<div class="form-group">
		<label for="comment">댓글:</label>
		<table>
			<c:forEach items="${requestScope.board_content }" var="board_reply"
				begin="1">
				<tr>
					<c:choose>
						<c:when test="${board_reply.board_a_reply_order >=1}">
							<!--  답글일 경우 -->
							<td><c:forEach begin="0"
									end="${board_reply.board_a_reply_order }">
									&nbsp;
									</c:forEach> <img src="./img/reply-right-arrow.png" id="reply_aroow" /></td>
						</c:when>
					</c:choose>

					<td>${board_reply.board_content }<span class="writReReply"
						id="rere"><button id="rereply${board_reply.board_no }" onclick="rereply(${board_reply.board_no });">(댓글달기)</button></span>
								<div id="reReply${board_reply.board_no }" style="display: none">
						<form  method="post"
							action="./boardController.bo?mod=reReplyInsert&board_a_no=${board_reply.board_a_no }&board_a_reply=${board_reply.board_a_reply}"
							 >
							<textarea class="form-control" rows="5" id="comment"
								placeholder="답글을 입력해주세요." name="reply"></textarea>
							<button type="submit" class="btn btn-primary">답글 달기</button>
						</form>
					</div>
					</td>
					<td>${board_reply.board_write_date }</td>

				</tr>
			</c:forEach>
		</table>


	</div>
	
	
	<form
		action="./boardController.bo?mod=replyInsert&board_no=${requestScope.board_content[0].board_no }"
		method="post">
		<textarea class="form-control" rows="5" id="comment"
			placeholder="댓글을 입력해주세요." name="reply"></textarea>
		<button type="submit" class="btn btn-primary" required>댓글달기</button>
	</form>


	<button type="button" class="btn btn-primary"
		onclick="location='./boardController.bo?mod=boardUpdate&board_no=${requestScope.board_content[0].board_no}'">글
		수정</button>
	<button type="button" class="btn btn-primary"
		onclick="location='./boardController.bo?mod=delBoard&bno=${requestScope.board_content[0].board_no}'">글
		삭제</button>
	<!-- -------------------------------------------------------------------a태그를 이제 리스트로 연결하기 -->
	<a href="./boardController.bo?mod=boardView&boardno=7">확인</a>
	<footer id="mobile_footer">
		<ul>
			<li id="level"><a href="./map.html"> <img
					src='./img/adventurerblk.png' id='levelFooter'
					style="margin-bottom: 5px;" />
					<div>지도</div>
			</a></li>
			<li id="mountain"><a href="./region.html"> <img
					src='./img/goalsblk.png' id='mountainFooter'
					style="margin-bottom: 5px;" />
					<div>명산</div>
			</a></li>
			<li id="community"><a href="./community.html"> <img
					src='./img/friendshipblk.png' id='communityFooter'
					style="margin-bottom: 5px;" />
					<div>커뮤니티</div>
			</a></li>
		</ul>

	</footer>


</body>


</html>