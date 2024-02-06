
<%@page import="org.apache.commons.fileupload.*, java.util.List, java.io.File, java.util.Iterator"%>
<%@page import="org.apache.commons.io.*" %>
<%@include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*"%>


   <%
int q=0;
try
{
    String btn=request.getParameter("Submit");
    if(btn.equals("Search"))
    {
        q=1;
    }
}
catch(Exception e)
{
    
}

%>



<%    String uid = (String) session.getAttribute("uid");
    String uname = (String) session.getAttribute("uname");
    try {
        String a = request.getParameter("Submit");
        if (a.equals("AddCart")) {

            String qt = request.getParameter("qty");
            String qt1[] = request.getParameterValues("qty");
            String qid[] = request.getParameterValues("qid");
//session.setAttribute("nonvegid", qid);
//session.setAttribute("nonveglist", qt1);
            for (int i = 0; i < qid.length; i++) {
                int tm = Integer.parseInt(qt1[i]);
                int tm1 = Integer.parseInt(qid[i]);
                if (tm != 0) {
                    String amt = "0";
                    String nam = "0";
                    String typ = "0";
                    String ptype="";
                    // out.println(tm+"-"+tm1+",");
                    ResultSet rs0 = stmt3.executeQuery("select * from product where id='" + tm1 + "'");
                    int s = 0;
                    while (rs0.next()) {
                        nam = rs0.getString("id");
                        ptype = rs0.getString("ptype");
                        amt = rs0.getString("price");

                        int amt1 = Integer.parseInt(amt);
                        int tamt = amt1 * tm;
                        String qry = "select max(id) as maxid from cart";
                        ResultSet rs = stmt1.executeQuery(qry);
                        int id1 = 0;
                        if (rs.next()) {
                            id1 = rs.getInt("maxid");
                        }
                        int id2 = id1 + 1;
                        session.setAttribute("cid", "" + id2);
                        String ins = "insert into cart values('" + id2 + "','" + uid + "','" + uname + "','" + ptype + "','" + nam + "','" + tm + "','" + amt + "','" + tm + "','" + tamt + "','0')";
                        int n = stmt1.executeUpdate(ins);


%>
<script language="javascript">
    alert("Added Successful");
    window.location.href = "user_view_pro.jsp";
</script>
<%                                  }

                }
            }
//response.sendRedirect("user_order_soup.jsp");

        }
    } catch (Exception e) {

//out.print(e);
    }


%>


<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Data  Visualization</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- fonts -->
      <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
      <!-- font awesome -->
      <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <!--  -->
      <!-- owl stylesheets -->
      <link href="https://fonts.googleapis.com/css?family=Great+Vibes|Poppins:400,700&display=swap&subset=latin-ext" rel="stylesheet">
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesoeet" href="css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
 
   <style>
.siddiq{
                display: flex;
                flex-wrap: wrap;
                border-radius:10px;
                align:center;
                text-align: center;
                border:3px solid yellow;
                padding: 10px; 
                float:left;
            }
            table{
                margin-left: 20px;
                margin-bottom: 20px;
            }
            .siddiq:hover{
                background-color:lightgoldenrodyellow;
            }
</style>
   

   </head>
   <body>
      <!-- banner bg main start -->
      <div class="banner_bg_main">
         <!-- header top section start -->
         <div class="container">
            <div class="header_section_top">
               <div class="row">
                  <div class="col-sm-12">
                     <div class="custom_menu">
                        <ul>
                          <li><a href="user_home.jsp">Home</a></li>
                         <li><a href="user_view_pro.jsp"style="color:yellow">View Product</a></li>
                         <li><a href="user_view_cart.jsp">View Cart</a></li>
                           <li><a href="index.jsp">Logout</a></li></a></li>
                      
                           
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- header top section start -->
         <!-- logo section start -->
         <div class="logo_section">
            <div class="container">
               <div class="row">
                 
               </div>
            </div>
         </div>
         <!-- logo section end -->
         <!-- header section start -->
         <div class="header_section">
            <div class="container">
               <div class="containt_main">
                  <div id="mySidenav" class="sidenav">
                     <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                     <a href="index.html">Home</a>
                     <a href="fashion.html">Fashion</a>
                     <a href="electronic.html">Electronic</a>
                     <a href="jewellery.html">Jewellery</a>
                  </div>
                  <span class="toggle_icon" onclick="openNav()"><img src="images/toggle-icon.png"></span>
                  <div class="dropdown">
                     <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     </button>
                    
                  </div>
                  <div class="main">
                     <!-- Another variation with a button -->
                     <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search this blog">
                        <div class="input-group-append">
                           <button class="btn btn-secondary" type="button" style="background-color: #f26522; border-color:#f26522 ">
                           <i class="fa fa-search"></i>
                           </button>
                        </div>
                     </div>
                  </div>
                  <div class="header_box">
                     <div class="lang_box ">
                        <a href="#" title="Language" class="nav-link" data-toggle="dropdown" aria-expanded="true">
                        <img src="images/flag-uk.png" alt="flag" class="mr-2 " title="United Kingdom"> English <i class="fa fa-angle-down ml-2" aria-hidden="true"></i>
                        </a>
                        <div class="dropdown-menu ">
                           <a href="#" class="dropdown-item">
                           <img src="images/flag-france.png" class="mr-2" alt="flag">
                           French
                           </a>
                        </div>
                     </div>
                     <div class="login_menu">
                        <ul>
                           <li><a href="#">
                              <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                              <span class="padding_10">Cart</span></a>
                           </li>
                           
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- header section end -->
         <!-- banner section start -->
         <div class="banner_section layout_padding">
            <div class="container">
               <div id="my_slider" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                     <div class="carousel-item active">
                        <div class="row">
                           <div class="col-sm-12">
                              <h1 class="banner_taital">Get YOUR<br>MEMBERSHIP ACCESS AND GET FLAT 50% DISCOUNT</h1>
                              <div class="buynow_bt"><a href="#">Buy Now</a></div>
                           </div>
                        </div>
                     </div>
                     <div class="carousel-item">
                        <div class="row">
                           <div class="col-sm-12">
                              <h1 class="banner_taital">Get Start <br>YOUR FAVOURITE SHOPPING</h1>
                              <div class="buynow_bt"><a href="#">Buy Now</a></div>
                           </div>
                        </div>
                     </div>
                     <div class="carousel-item">
                        <div class="row">
                           <div class="col-sm-12">
                              <h1 class="banner_taital">WE ARE HERE <br> ONLY FOR YOU</h1>
                              <div class="buynow_bt"><a href="#">Buy Now</a></div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <a class="carousel-control-prev" href="#my_slider" role="button" data-slide="prev">
                  <i class="fa fa-angle-left"></i>
                  </a>
                  <a class="carousel-control-next" href="#my_slider" role="button" data-slide="next">
                  <i class="fa fa-angle-right"></i>
                  </a>
               </div>
            </div>
         </div>
         <!-- banner section end -->
      </div>
      <!-- banner bg main end -->
      
            <form id="form" name="form" method="post" action="">
					<table width="911">
  <tr>
    <td height="45" colspan="4"><div align="center" class="style1">PRODUCT: </div></td>
    </tr>
  <tr>
    <td width="242" height="52">&nbsp;</td>
    <td width="204"><span class="style2">Product Type : </span></td>
    <td width="325"><input name="name" type="text" class="style2" /></td>
    <td width="120">&nbsp;</td>
  </tr>
  <tr>
    <td height="40" colspan="4"><div align="center">
      <input name="Submit" type="submit" value="Search" />
    </div></td>
    </tr>
</table>
             
                        
                        <table width="908">
            <%
            if(q==1)
            {
                int s=0;
                int j=0;
                String name=request.getParameter("name").toString().trim();
                String sql=" select * from product where ptype='"+name+"'   ";
                ResultSet rs0=stmt.executeQuery(sql);
                while(rs0.next())
                {
                    if(s==0)
                    {
                        j=1;
                        %>
                        
                        <form action="" method="post" name="form1" id="form1" >
            <p>&nbsp;</p>
            <h2 align="center"><span class="style2 style1"><span class="bold style1 style3">Product Details </span></span></h2>

                        
            <table class="siddiq" width="30%"  align="right">
                <tr><td></td>
                    <td><div width="250px" >
                            <img src="upload/<% out.print(rs0.getString("img"));%>" style="align:center; width:150px; height:150;" alt="" />
                            </span></div></td></tr>
                <tr>   <td width="98"><h4 align="center" class="style7 style4"><strong>Product Type</strong></h4></td>
                    <td><div align="center"><span class="style7 style4 style6">
                                <% out.print(rs0.getString("ptype"));%>
                            </span></div></td></tr>
                
                 <tr>  <td width="84"><h4 align="center" class="style7 style4"><strong>Product Name</strong></h4></td>
                    <td><div align="center"><span class="style7 style4 style6">
                                <% out.print(rs0.getString("model"));%>
                            </span></div></td></tr>
                

                <tr>  <td width="84"><h4 align="center" class="style7 style4"><strong>Stoke</strong></h4></td>
                    <td><div align="center"><span class="style7 style4 style6">
                                <% out.print(rs0.getString("quantity"));%>
                            </span></div></td></tr>
                <tr><td width="61"><h4 align="center" class="style7 style4"><strong> Price</strong></h4></td> 
                    <td><div align="center"><span class="style7 style4 style6">
                                <% out.print(rs0.getString("price"));%>
                            </span></div></td>
                </tr>
               

                <tr>   <td width="62"><h4 align="center" class="style7 style4"><strong>Quantity</strong></h4></td>
                    <td><div align="center">
                            <label>
                                <input name="qty" type="number" class="style2" value="0" /> 
                                <input type="hidden" name="qid" value="<%out.print(rs0.getString("id"));%>"/>
                            </label>
                        </div></td>	</tr>

                <%
                    }
                if(j==0)
    {
        %>
  <tr>
      <td height="49" colspan="5"><div align="center" class="style3"><% out.print("Data Not Found!!!!"); %>  </div></td>
  </tr>
  <%
    }
                }
            }      
            
                %>
            
          

            </table>
            <table class="asar" width="1250">
                <tr>
                    <td class="td" align="center">
                        <input name="Submit" type="submit" class="row4" value="AddCart">
                    </td>
                </tr>
            </table>>
        </form>
        <br><br><br><br>
            
            
            
      
     
    
      <!-- jewellery  section end -->
      <!-- footer section start -->
      <div class="footer_section layout_padding">
         <div class="container">
             <div class="input_bt">
               <input type="text" class="mail_bt" placeholder="Your Email" name="Your Email">
               <span class="subscribe_bt" id="basic-addon2"><a href="#">Subscribe</a></span>
            </div>
            <div class="footer_menu">
               <ul>
                  <li><a href="#">Best Sellers</a></li>
                  <li><a href="#">Gift Ideas</a></li>
                  <li><a href="#">New Releases</a></li>
                  <li><a href="#">Today's Deals</a></li>
                  <li><a href="#">Customer Service</a></li>
               </ul>
            </div>
            <div class="location_main">Help Line  Number : <a href="#">+1 1800 1200 1200</a></div>
         </div>
      </div>
      <!-- footer section end -->
      <!-- copyright section start -->
      <div class="copyright_section">
         <div class="container">
            <p class="copyright_text">© 2020 All Rights Reserved. Design by <a href="https://html.design">Free html  Templates</a></p>
         </div>
      </div>
      <!-- copyright section end -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <script>
         function openNav() {
           document.getElementById("mySidenav").style.width = "250px";
         }
         
         function closeNav() {
           document.getElementById("mySidenav").style.width = "0";
         }
      </script>
   </body>
</html>