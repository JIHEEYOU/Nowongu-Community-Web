<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*,java.text.*" %>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-4.6.2-dist/css/bootstrap.min.css">
<title>Cookie</title>
</head>
<body>
<div class="container">
		<div class="text-center">
			<hr>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
		   Date date = new Date();
		   SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd일");
		   SimpleDateFormat simpleDate2 = new SimpleDateFormat("hh:mm 분");
		   String strdate = simpleDate.format(date);
		   String strdate2 = simpleDate2.format(date);
		   
		if (user_id.equals("admin") && user_pw.equals("admin1234")) {
			Cookie cookie_id = new Cookie("userID", user_id);
			Cookie cookie_pw = new Cookie("userPW", user_pw);
			cookie_id.setMaxAge(60*60);
			response.addCookie(cookie_id);	
			response.addCookie(cookie_pw);		
			
			%>
			오늘은  <%=strdate%>입니다.<br>
			현재시각은 <%=strdate2 %>입니다.<br>
	
			<span class="badge badge-success"><%=user_id%></span>님 쿠키 설정이 성공했습니다.
			<hr>
			<a href="welcome2.jsp"><button type="button" class="btn btn-outline-primary">다음페이지로 이동</button></a>
			<hr>
		<% 
		} else {%>
			<span class="badge badge-danger"><%out.println("아이디와 비밀번호를 확인해 주세요");%></span>	
			<hr>
				<a href="cookie2.jsp"><button type="button" class="btn btn-outline-primary">처음으로 이동</button></a>
			<hr>		
		<%}
	%>
	
			
		</div>
	</div>
<script src="../bootstrap-4.6.2-dist/jquery/jquery-3.5.1.js"></script>
<script src="../bootstrap-4.6.2-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>