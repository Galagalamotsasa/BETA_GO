<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BETA-GO BOARD LIST</title>
<link href="./Resoureces/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
<script src="./Resoureces/js/jquery.min.js"></script>
<script src="./Resoureces/js/bootstrap.min.js"></script>
</head>

<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<!-- Brand/logo -->
		<a class="navbar-brand" href="#">Home</a>

		<!-- Links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link"
				href="member/registerMember.jsp">회원가입</a></li>
			<li class="nav-item"><a class="nav-link" href="#">로그인</a></li>
			<li class="nav-item"><a class="nav-link" href="admin/adminHome.jsp">관리자페이지</a></li>
			<li class="nav-item"><a class="nav-link" href="boardController.bo?command=boardList.bo">게시판</a></li>
		</ul>
	</nav>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">First</th>
				<th scope="col">Last</th>
				<th scope="col">Handle</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Jacob</td>
				<td>Thornton</td>
				<td>@fat</td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td>Larry</td>
				<td>the Bird</td>
				<td>@twitter</td>
			</tr>
		</tbody>
	</table>
</body>
</html>