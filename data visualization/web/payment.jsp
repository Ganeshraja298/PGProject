<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.apache.commons.fileupload.*, java.util.List, java.io.File, java.util.Iterator"%>
<%@page import="org.apache.commons.io.*" %>
<%@include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*"%>



<%
int amount2=0;
    String uid = (String) session.getAttribute("uid");
    String uname = (String) session.getAttribute("uname");
     String contact = (String) session.getAttribute("contact");
      String email = (String) session.getAttribute("email");
    String amount = (String)session.getAttribute("amount1");
    String count = (String)session.getAttribute("count1");
       int n1=Integer.parseInt(amount);
       
     amount2= n1/2;
      
     
     String damount = Integer.toString(amount2);
      
    
    try
    {
          String Email= "^[\\w-\\+]+(\\.[\\w]+)*@[\\w-]+(\\.[\\w]+)*(\\.[a-z]{2,})$";
        String btn=request.getParameter("Submit");
        if(btn.equals("Submit"))
        {
         
          String cardno=request.getParameter("cno");
           String ccv=request.getParameter("ccv");
            String bankname=request.getParameter("bn");
      
           
            String qry = "select max(id) as maxid from payment";
            ResultSet rs = stmt1.executeQuery(qry);
            int id1 = 0;
            if (rs.next()) {
                id1 = rs.getInt("maxid");
            }
            int id2 = id1 + 1;
            
             String ins = "insert into payment values('" + id2 + "','" + uid + "','" + uname + "','"+count+"','" + amount + "','" + contact + "','" + email + "','" + damount + "','" + cardno + "','" + ccv + "','" + bankname + "','0')";
            int n = stmt1.executeUpdate(ins);
            if(n==1)
            {
               %>
               <script language="javascript">
                   alert("Payment Successful");
                  window.location.href="sms.jsp"
                   </script>
<%
            }else{
           %>
               <script language="javascript">
                   alert("Payment Failed");
                  window.location.href="payment.jsp"
                   </script>
  <%
            
            }
                
       
          
           
           
        }
    }
    catch(Exception e)
    {
        
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
                                    <li><a href="user_view_pro.jsp">View Product</a></li>
                                    <li><a href="user_view_cart.jsp">View Cart</a></li>
                                    <li><a href="payment.jsp">Payment</a></li>
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

        
        
         
         <form id="form" name="form" method="post" action="">
   <table width="1250">
        <tr>
       <td width="30%" height="54">&nbsp;</td>
       <td colspan="2"><div align="center"><span class="style1 style6"> Payment Details </span></div></td>
       <td width="31%">&nbsp;</td>
     </tr>
     <tr>
       <td height="50">&nbsp;</td>
       <td width="19%"><div align="center"><span class="style8">User Id : </span></div></td>
       <td width="20%" class="style8"><% out.print(uid); %></td>
       <td>&nbsp;</td>
     </tr>
     <tr>
       <td height="50">&nbsp;</td>
       <td width="19%"><div align="center"><span class="style8">User Name : </span></div></td>
       <td width="20%" class="style8"><% out.print(uname); %></td>
       <td>&nbsp;</td>
     </tr>
     <tr>
       <td height="50">&nbsp;</td>
       <td><div align="center"><span class="style8">Quantity : </span></div></td>
       <td class="style8"><% out.print(count); %></td>
       <td>&nbsp;</td>
     </tr>
     <tr>
       <td height="50">&nbsp;</td>
       <td><div align="center"><span class="style8">Amount : </span></div></td>
       <td class="style8"><% out.print(amount); %></td>
       <td>&nbsp;</td>
     </tr>
      <tr>
       <td height="50">&nbsp;</td>
       <td><div align="center"><span class="style8">Membership Discount : </span></div></td>
       <td class="style8"><% out.print(amount2); %></td>
       <td>&nbsp;</td>
     </tr>
     <tr>
       <td height="50">&nbsp;</td>
       <td><div align="center"><span class="style8">Contact : </span></div></td>
        <td class="style8"><% out.print(contact); %></td>
       <td>&nbsp;</td>
     </tr>
      
     <tr>
       <td height="50">&nbsp;</td>
       <td><div align="center"><span class="style8">Email : </span></div></td>
        <td class="style8"><% out.print(email); %></td>
       <td>&nbsp;</td>
     </tr>
    <tr>
       <td height="50"></td>
       <td><div align="center"><span class="style8">Card No : </span></div></td>
       <td><input name="cno" type="text" class="style8"></td>
       <td></td>
     </tr>
     <tr>
       <td height="50"></td>
       <td><div align="center"><span class="style8">CCv : </span></div></td>
       <td><input name="ccv" type="password" class="style8"></td>
       <td></td>
     </tr>
     <tr>
       <td height="50"></td>
       <td><div align="center"><span class="style8">Bank Name : </span></div></td>
       <td><input name="bn" type="text" class="style8"></td>
       <td></td>
     </tr>
     <tr>
       <td height="50">&nbsp;</td>
       <td><div align="center">
           <input name="Submit" type="submit" class="row4" value="Submit">
       </div></td>
       <td><input name="Clear" type="reset" class="row4" value="Clear"></td>
       <td>&nbsp;</td>
     </tr>
      </table>
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