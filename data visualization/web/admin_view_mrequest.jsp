<%@include file="include/dbconnect.jsp" %>
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*"%>


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
                           <li><a href="admin_home.jsp">Home</a></li>
                            <li><a href="admin_add_pro.jsp">Add Product</a></li>
                            <li><a href="admin_view_mrequest.jsp"style="color: yellow">View Request</a></li>
                            <li><a href="admin_view_cust.jsp">View Customer</a></li>
                            <li><a href="admin_view_member.jsp">View Member</a></li>
                         
                           <li><a href="index.jsp">Logout</a></li>
                           
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
                      <a href="admin_home.jsp">Home</a>
                     <a href="admin_add_pro.jsp">Add Product</a>
                     <a href="admin_view_mrequest.jsp">View Request</a>
                     <a href="admin_view_cust.jsp">View Customer</a>
                     <a href="admin_view_member.jsp">View Member</a>
                     <a href="index.jsp">Logout</a>
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
                           
                        </ul>
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
      
       <form action="" method="post" name="form1" id="form1" >
                        <p>&nbsp;</p>
                        <table width="90%" border="0" align="center">
                             <tr>
                                 <td height="53" colspan="9"><div align="center" class="style1 style3">  <h1 style="color:#e6b800;"> Membership Request: </h1></div></td></h1>
                            </tr>
                             <tr>
                           
                           
                           
                              <td width="49" height="46"><h4 align="center" class="style5 style2">Id</h4></td>
                              <td width="55"><h4 align="center" class="style8 style2">User Id </h4></td>
                              <td width="55"><h4 align="center" class="style8 style2">Name </h4></td>
                             <td width="91"><h4 align="center" class="style8 style2">Contact </h4></td>
                           
                            
                              <td width="91"><h4 align="center" class="style8 style2">Email</h4></td>
                              <td width="91"><h4 align="center" class="style8 style2">Gender</h4></td>
                              <td width="91"><h4 align="center" class="style8 style2">Address</h4></td>
                              
                              <td width="91"><h4 align="center" class="style8 style2">Membership Code</h4></td>
                                 <td width="91"><h4 align="center" class="style8 style2">Password</h4></td>
                               <td width="91"><h4 align="center" class="style8 style2">Accept OR  Reject</h4></td>
                            
                              
                             
                             
                                                      
                            </tr>
                             <%       
                               
                                ResultSet rs0 = stmt3.executeQuery("select * from membership where status='0'  ");
                                int s = 0;
                                while (rs0.next()) {
                                    if (s == 0) {
                            %>
                            <%
                                }
                              // s++;

                            %>
                            <tr>
                                <td height="42"><div align="center"><span class="style5">
                                            <% out.print(rs0.getString("id"));%>
                                        </span></div></td>
                                         <td height="42"><div align="center"><span class="style5">
                                            <% out.print(rs0.getString("uid"));%>
                                        </span></div></td>
                               
                                        <td><div align="center"><span class="style5">
                                            <% out.print(rs0.getString("name"));%>
                                        </span></div></td>
                               
                                         
                                        <td><div align="center"><span class="style5">
                                            <% out.print(rs0.getString("contact"));%>
                                        </span></div></td>
                                        <td><div align="center"><span class="style5">
                                            <% out.print(rs0.getString("email"));%>
                                        </span></div></td>
                                       
                                        <td><div align="center"><span class="style5">
                                            <% out.print(rs0.getString("gender"));%>
                                        </span></div></td>
                                         <td><div align="center"><span class="style5">
                                            <% out.print(rs0.getString("address"));%>
                                        </span></div></td>
                                        <td><div align="center"><span class="style5">
                                            <% out.print(rs0.getString("mcode"));%>
                                        </span></div></td>
                                        
                                        <td><div align="center"><span class="style5">
                                            <% out.print(rs0.getString("pass"));%>
                                        </span></div></td>
                                        
                                        <td><div align="center"><span class="style5">
                                <a href="accept.jsp?id=<% out.print(rs0.getString("id"));%>">Accept</a> OR<a href="reject.jsp?id=<% out.print(rs0.getString("id"));%>">Reject</a>
                            </span></div></td>
                                        
                                         
                              
                                        
                                        
                                         
                                      
                               
                            </tr>
                                      
                               
                            
                            <%

                                }
                            %>
  </table>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                        
</form>   
              
      
      
      
      
      
      
      
      
     
    
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