<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.time.*"%>
<%@ page import="java.time.format.*"%>
<%@ include file="DB.jsp"%>

<%
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	LocalDateTime now = LocalDateTime.now();
	String date = now.format(DateTimeFormatter.ofPattern("yy.MM.dd HH:mm"));
	
	ResultSet rs_general_number = null;
	Statement stmt_general_number = null;
	PreparedStatement stmt_general_insert = null;

   int num_size = 1;
   String size = "select Board_ID from board";
   stmt_general_number = conn.createStatement();
   rs_general_number = stmt_general_number.executeQuery(size);
   
   while(rs_general_number.next())
   {
      String login = rs_general_number.getString("Board_ID");
      num_size++;
   }
   
   String sql = "INSERT INTO board VALUES(?,?,?,?,?)";
   stmt_general_insert = conn.prepareStatement(sql);
   stmt_general_insert.setInt(1, num_size);
   stmt_general_insert.setString(2, title);
   stmt_general_insert.setString(3, name);
   stmt_general_insert.setString(4, date);
   stmt_general_insert.setString(5, content);
   stmt_general_insert.executeUpdate();
   response.sendRedirect("Board.jsp");
%>
