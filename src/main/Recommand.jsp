<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width",initial-scale="1">
<link rel="stylesheet" href="bootstrap-4.6.2-dist/css/bootstrap.min.css">
<title>추천 영상</title>
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

<div>
	<img alt="image" 
		 src="cafe.png"
		style="position: absolute; left: 2%; 
		top: 45%; width: 32%; height: 48%" display:block"/>

	<iframe
		style="position: absolute; left: 4%; top: 55%; width: 28%; height: 35%" src="https://www.youtube.com/embed/ruwM6HsfYsU"v
		title="YouTube video player" frameboarder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen
	></iframe>
	
	<img alt="image" src="cafeteria.png"
		style="position: absolute; left: 33.5%; top: 45%; width: 32%; height: 48%" display:block"/>

	<iframe
		style="position: absolute; left: 35.5%; top: 55%; width: 28%; height: 35%"src="https://www.youtube.com/embed/oCVgwsJbFpk"
		title="YouTube video player" frameboarder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"allowfullscreen
	></iframe>
	
	<img alt="image" 
		 src="play.png"
		style="position: absolute; right: 3%; top: 45%; 
		width: 32%; height: 48%" display:block"/>

	<iframe
		style="position: absolute; right: 5%; top: 55%; width: 28%; height: 35%" src="https://www.youtube.com/embed/RSMsyMqGWWM"
		title="YouTube video player" frameboarder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen
	></iframe>
</div>	
	

<script src="//code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="bootstrap-4.6.2-dist/js/bootstrap.bundle.min.js"></script>	
</body>
</html>