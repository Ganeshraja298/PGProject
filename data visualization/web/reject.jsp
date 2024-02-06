<%@include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>

<%

String id=request.getParameter("id");
 
//String pid = (String)session.getAttribute("pid");
try

{
   
    {
       // String amt=request.getParameter("amt");
       
        String sql="update membership set status='2' where id='"+id+"' ";
         int n=stmt.executeUpdate(sql);
                 if(n==1)
               { 
                  
                    %>
                    <script language="javascript">
                        alert(" Request Rejected");
                        window.location.href="admin_view_mrequest.jsp";
                        </script>

<%
     
                }
 
                
    }
}
catch(Exception e)
{
    
}

%>
