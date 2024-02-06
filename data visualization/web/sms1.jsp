<%@include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>
<%@page import="javapack.SMSAPI"%>

<%
String con="";
String id="";
    ResultSet rs1=stmt3.executeQuery("select * from membership ");
if(rs1.next())
{
  id=rs1.getString("uid");  

}
       ResultSet rs0=stmt3.executeQuery("select * from membership where uid='"+id+"' ");
if(rs0.next())
{
con=rs0.getString("contact");
}
out.print(con);
    
%>
<%
    
Random rnd = new Random();
Random rnd1 = new Random();

    int number = rnd.nextInt(9999);
   

    // this will convert any number sequence into 6 character.
    String ot= String.format("%03d", number);
    
    
    session.setAttribute("ott", ot);
  
  
  String reversed="";
  
   byte[] strAsByteArray = ot.getBytes();
   
 
        byte[] result = new byte[strAsByteArray.length];
 
        // Store result in reverse order into the
        // result byte[]
        for (int i = 0; i < strAsByteArray.length; i++)
            result[i] = strAsByteArray[strAsByteArray.length - i - 1];
        
        reversed=new String(result);
  out.print(reversed);
   out.print(con);
  
  String ins = "update membership set mcode='"+reversed+"' where uid='"+id+"'";                     
       int n = stmt1.executeUpdate(ins);
       
  SMSAPI.sendMessage(con,"YOUR MEMBERSHIP CODE:"+reversed);
if(n==1)
{
    %>
    <script language="javascript">
        alert("CODE Send Successful");
        window.location.href="admin_view_member.jsp";
    </script>
    <%
}
  
%>


