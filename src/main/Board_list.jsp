<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String number = request.getParameter("number");
	String title = request.getParameter("title");
	String name = request.getParameter("name");
	String date = request.getParameter("date");
	String text = request.getParameter("text");
	
%>
<!DOCTYPE html>
<html>

<style>
		body{
			background-image : url('logo_bg.png');
	  		background-size: cotain;
	  		background-repeat: no-repeat;
	  	}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="bootstrap-4.6.2-dist/css/bootstrap.min.css">
<title>게시판 내용창</title>
</head>
<body>

<div class="container" style="margin-top: 200px;">
	<div class="jumbotron">
		<div class="card">
			<div class="card">
				<div class="card-body">
					<h4><b>게 시 판</b></h4>
				</div>
			</div>
			<div id="bbsArticle">
				<p>
				<div class="text-center">
					<h2><b><%= title %></b></h2>
				</div>
				<div class="card">
					<dl class="row col">
						<dt class="col-sm-2"><h4>작성자 :</h4></dt>
						<dd class="col-sm-4"><h4><%=name %></h4></dd>
						<dt class="col-sm-2"><h4>등록일 :</h4></dt>
						<dd class="col-sm-4"><h4><%=date %></h4></dd>
					</dl>		
				</div>
				
				<div id="bbsArticle_content">
					<table width="600" border="0">
					<tr>
						<td style="padding-left: 20px 80px 20px 62px;" 
						valign="top" height="200">
						<h3><%=text %></h3>
						</td>
					</tr>			
					</table>
				</div>
				
			</div>
		</div>
	</div>
	<div id="bbsArticle_footer">
		<div id="leftFooter">
			<form action="Board_delete.jsp" method="post">
				<input type="hidden" value="<%= number %>" name="number">
				<input type="submit" value=" 삭제 " class="btn btn-outline-secondary"/>
			</form>
		</div>
		<div id="rightFooter">
			<input type="button" value=" 리스트 " class="btn btn-outline-secondary" 
			onclick="javascript:history.back();"/>
			<!-- 여기 pageNum을 넣어줘야함 -->
		</div>	
	</div>
	
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>