<%@ page import="java.sql.*" %>

<%
String url="jdbc:mysql://localhost:3306/data_visualization22";
Class.forName("com.mysql.jdbc.Driver");
Connection Con=DriverManager.getConnection(url,"root","");
Statement stmt=Con.createStatement();
Statement stmt1=Con.createStatement();
Statement stmt2=Con.createStatement();
Statement stmt3=Con.createStatement();
Statement stmt4=Con.createStatement();
Statement stmt5=Con.createStatement();
Statement stmt6=Con.createStatement();


%>