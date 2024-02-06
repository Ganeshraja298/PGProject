<%@include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>

<%
String id=request.getParameter("cid");
//out.print(id);
String sql="delete from cart where id='"+id+"'";
int n=stmt1.executeUpdate(sql);
if(n==1)
{
    %>
    <script language="javascript">
        alert("removed  Successful");
        window.location.href="user_view_cart.jsp";
    </script>

<%
}
%>