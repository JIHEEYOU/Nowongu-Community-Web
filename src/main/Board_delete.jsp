<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="DB.jsp"%>

<%
	request.setCharacterEncoding("UTF-8");
	String number = request.getParameter("number");
    PreparedStatement pstmt = null, pstmt1 = null;

   try{
      String sql = "DELETE FROM Board where Board_ID=?"; //특정한거만 지우는 방법
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, number);
      pstmt.executeUpdate();
      
      String sql1 = "update Board set Board_ID=Board_ID-1 where Board_ID>?"; //특정한거만 지우는 방법
      pstmt1 = conn.prepareStatement(sql1);
      pstmt1.setString(1, number);
      pstmt1.executeUpdate();
      
      response.sendRedirect("Board.jsp");
   }catch(SQLException ex){
      out.println("테이블 삽입이 실패하였습니다.<br>");
      out.println("SQLException: "+ex.getMessage());
   }
%>