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
    
    %>현재 설정된 쿠키의 개수=><%=cookies.length %><br>
    =================================<br>
    <% for (int i = 0; i < cookies.length; i++) {
  		
		%>
		  
    	삭제후 쿠키의 속성 이름[<%=i%>]:	<span class="badge badge-primary"><%=cookies[i].getName()%> </span><br>
    	설정된 쿠키의 속성 값[<%=i%>]:	<span class="badge badge-success"><%=cookies[i].getValue()%> </span><br>

		<br>
    <%
    }
	%>
	<div class="text-center">
	<hr>
				<a href="welcome.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
			<hr>	</div>
<script src="../bootstrap-4.6.2-dist/jquery/jquery-3.5.1.js"></script>
<script src="../bootstrap-4.6.2-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>