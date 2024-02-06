<%@include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>
<%@page import="javapack.SMSAPI"%>
<%
     String uid = (String) session.getAttribute("uid");
    out.print(uid);
    String sql="select * from membership where id='"+uid+"'";
    ResultSet rs=stmt.executeQuery(sql);
    rs.next();
    String con=rs.getString("contact");
    out.print(con);
      SMSAPI.sendMessage(con,"Your Payment Successfully Transfered And The Order Will Be Delivered Within 4-7 Working days");
    response.sendRedirect("product_tracking.jsp");
  
   
    
    
%>