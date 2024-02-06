
<%@page import="javapack.Mail"%>
<%@page import="java.util.Random"%>
<%@ include file="include/dbconnect.jsp" %>

<%
String mail="";
    String id=request.getParameter("id");
       ResultSet rs0=stmt3.executeQuery("select * from  membership where id='"+id+"' ");
if(rs0.next())
{
mail=rs0.getString("gmail");
}

    
%>
<%
    
Random rnd = new Random();
Random rnd1 = new Random();

    int number = rnd.nextInt(999);
   

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
  
  String ins = "update membership set mcode='"+reversed+"' where id='"+id+"'  ";                     
       int n = stmt1.executeUpdate(ins);
       
  Mail.SendMail(mail, "Your OTP Is",reversed,"");
if(n==1)
{
    %>
    <script language="javascript">
        alert("Otp Send Successful");
        window.location.href="accept.jsp";
    </script>
    <%
}
  
%>
