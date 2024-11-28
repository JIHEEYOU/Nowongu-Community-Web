<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="DB.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap-4.6.2-dist/css/bootstrap.min.css">
<title>게시판 창</title>
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
	<%
		String userID = null;
		if(session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<p>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<%
					ResultSet rs = null;
					Statement stmt = null;

					int num_size = 1;
					String sql = "select * from board";
					stmt = conn.createStatement();
					rs = stmt.executeQuery(sql);
					while(rs.next())
					{
						String number = rs.getString("Board_ID");
						String title = rs.getString("Board_TITLE");
						String name = rs.getString("User_ID");
						String date = rs.getString("Board_DATE");
						String text = rs.getString("Board_CONTENT");
					%>
					<form action="Board_list.jsp" method="post">
						<tr>
							<td><input type="hidden" value="<%= number %>" name="number"><%= number %></td>					
							<td><input type="submit" value="<%= title %>" name="title" class="btn"></td>					
							<td><input type="hidden" value="<%= name %>" name="name"><%= name %></td>					
							<td><input type="hidden" value="<%= date %>" name="date"><%= date %></td>			
							<td><input type="hidden" value="<%= text %>" name="text"></td>
						</tr>
					</form>
					<%
					}
					%>
				</tbody>
			</table>
		</div>
		<a href="write.jsp" class="btn btn-primary" >글쓰기</a>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>