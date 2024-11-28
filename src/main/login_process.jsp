<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ include file="DB.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
		body{
			background-image : url('C:/Users/youjh/eclipse-workspace/nowongu/image/logo_background.png');
	  		background-size: cotain;
	  		background-repeat: no-repeat;
	  	}
</style>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String userID = request.getParameter("userID");
	String userPWD = request.getParameter("userPWD");
	
	PreparedStatement stmt=null;
	ResultSet rs = null;
	
	String SQL="SELECT userPWD FROM user WHERE userID=?";
	stmt=conn.prepareStatement(SQL);
	stmt.setString(1, userID);
	rs=stmt.executeQuery();
	if(rs.next()) {
		if(rs.getString(1).equals(userPWD)) {
			session.setAttribute("session_ID",userID);
			session.setAttribute("session_PWD",userPWD);
			response.sendRedirect("MainPage.jsp");
		} else{
			
			PrintWriter script = response.getWriter();
	           script.println("<script>");
	           script.println("alert('아이디 혹은 비밀번호가 틀립니다.')");
	           script.println("history.back()");
	           script.println("</script>");
			
			
		}
	}
	%>
</body>
</html>