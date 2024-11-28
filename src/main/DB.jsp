<%@ page import="java.sql.*" %>
<%
Connection conn=null;

String dbURL="jdbc:mysql://localhost:3306/Tutorial";
String dbID="root";
String dbPassword="1234";
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection(dbURL,dbID,dbPassword);

%>