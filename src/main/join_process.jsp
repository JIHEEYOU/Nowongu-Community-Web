<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ include file="DB.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	PreparedStatement pstmt=null;
	
	request.setCharacterEncoding("utf-8");
	String userID = request.getParameter("userID");
	String userPWD = request.getParameter("userPWD");
	String userNAME = request.getParameter("userNAME");
	String userPNUM = request.getParameter("userPNUM");
	
	String SQL = "INSERT INTO user VALUES(?,?,?,?)";
	pstmt = conn.prepareStatement(SQL);
	pstmt.setString(1, userID);
	pstmt.setString(2, userPWD);
	pstmt.setString(3, userNAME);
	pstmt.setString(4, userPNUM);
	pstmt.executeUpdate();
	
	PrintWriter script = response.getWriter();
	script.println("<script>");
    script.println("alert('회원가입에 성공하였습니다!')");
    script.println("location.href='login.jsp'");
    script.println("</script>");
	
	
    
	%>
</body>
</html>