<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-4.6.2-dist/css/bootstrap.min.css">
<title>Cookie</title>
</head>
<body>
<hr>
	<%
		Cookie[] cookies = request.getCookies();
	%>현재 설정된 쿠키의 개수<%=cookies.length %><br>
	  =================================<br>
		삭제전 설정된 쿠키의 속성 이름<br>
		-------------------------------------------------<br>
		<% for (int i = 0; i < cookies.length; i++) {
		%>	<span class="badge badge-primary"><%=cookies[i].getName()%> </span><br>
			-------------------------------------------------
		<br>
		<%
		cookies[i].setMaxAge(0);
	      response.addCookie(cookies[i]);
		
		}
		%>
	
		
	
	<hr>
				<a href="cookie_out2_1.jsp"><button type="button" class="btn btn-outline-primary">삭제 후 쿠키 페이지로 이동</button></a>
			<hr>		
<script src="../bootstrap-4.6.2-dist/jquery/jquery-3.5.1.js"></script>
<script src="../bootstrap-4.6.2-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>