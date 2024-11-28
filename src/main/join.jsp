<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width",initial-scale="1">
<link rel="stylesheet" href="bootstrap-4.6.2-dist/css/bootstrap.min.css">
<title>회원가입 창</title>
<style>
		body{
			background-image : url('logo_bg.png');
	  		background-size: cotain;
	  		background-repeat: no-repeat;
	  	}
</style>
</head>
<body>
<div align="center">
	<img src="logo.png" alt="이미지 설명"  width= "30%" style="padding-top: 15px;">

<div class="container" style="width: 950px;">
	<nav class="navbar navbar-expand-rg navbar-light bg-light">
		<div class="row">
			<div class="dropdown">
				<button style="margin-left: 30px;" class="navbar-toggler" type="button" data-toggle="dropdown" aria-expanded="false" aria-haspopup="true">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="login.jsp">로그인</a>
					<a class="dropdown-item" href="join.jsp">회원가입</a>
				</div>
			</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a style="color: gray; font-size: 25px;" href="MainPage.jsp">Home</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a style="color: black; font-size: 25px;" href="Board.jsp">Board</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a style="color: gray; font-size: 25px;" href="Event.jsp">Event</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a style="color: black; font-size: 25px;" href="Recommand.jsp">Recommand</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<form class="d-flex col-auto">
				<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success" type="submit">Search</button>
			</form>
		</div>
	</nav>
</div>

<div align="center">
<div class="col-lg-offset-4 col-lg-4">'
	<div class="jumbortron" style="padding-top: 10px; ">
	<img src="welcome.png" alt="이미지 설명"  width= "70%" >
	<form action="join_process.jsp" method="post">
	<div class="form-group">
	  	<input type="text" class="form-control" placeholder="아이디" 
	  		   name="userID"  maxlength="20">
	</div>
	<div class="form-group">
		<input type="text" class="form-control" placeholder="비밀번호" 
			   name="userPWD" maxlength="20">
	</div>
	<div class="form-group">
	  	<input type="text" class="form-control" placeholder="이름" 
	  		   name="userNAME" maxlength="20">
	</div>
	<div class="form-group">
	 	<input type="text" class="form-control" placeholder="전화번호" 
	 		   name="userPNUM" maxlength="45">
	</div>
	<p><input type="submit" class="btn btn-primary form-control" value="회원가입"></p>
	</form>
</div>
</div>
</div>
<script src="//code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="bootstrap-4.6.2-dist/js/bootstrap.bundle.min.js"></script>	
</body>
</html>