<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" ,initial-scale="1">
<link rel="stylesheet" href="bootstrap-4.6.2-dist/css/bootstrap.min.css">
<title>이벤트 창</title>
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
	<img src="logo.png" alt="이미지 설명" width="30%" style="padding-top: 15px;">

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
<div style="positon: relative;">
	<img src="festival.png" style="position: absolute; 
			left: 18%; top: 40%; width: 62%; height: 82%"></img>
	<div style="position:absolute; top:553px; left:440px;">
		<a href="https://blog.naver.com/goodnowon/223059804337">
		<img src="popcorn.png" width="400" height="450" style="padding-top: 50px;"></a>
	
	    <a href="https://blog.naver.com/goodnowon/223097385790">
	    <img src="chuchu.png" width="400" height="450" style="padding-top: 50px;"></a>
	
	    <a href="https://blog.naver.com/nowonart/223109704221">
	    <img src="beer_festival.png" width="400" height="450" style="padding-top: 50px;"></a>
	</div>
</div>

</body>
</html>