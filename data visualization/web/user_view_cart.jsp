


<%@include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>
<%    String uid = (String) session.getAttribute("uid");
    int count = 0;
    int amount = 0;       
   
%>

<%
    try {

        String a = request.getParameter("Submit");
        if (a.equals("Submit")) {
            //  out.print(count+","+amount);
            ResultSet rs4 = stmt.executeQuery("select * from cart where uid='" + uid + "' && status='0'");
            while (rs4.next()) {
                String id = rs4.getString("id");
                stmt.executeUpdate("update cart set status='1' where uid='" + uid + "'");

            }
 
          response.sendRedirect("m_req.jsp");
        }

    } catch (Exception e) {

        //out.print(e);
    }
%>

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
                         <li><a href="user_view_cart.jsp"style="color:yellow">View Cart</a></li>
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
      
      
      
      
         <form action="" method="post" name="form1" id="form1" >
      
         <h3 align="center"><span class="style2">Cart Details</span></h3>
         <table width="871" height="200" border="0" align="center">
            <%  
               
                ResultSet rs0 = stmt.executeQuery("select * from cart where uid='" + uid + "' && status='0' ");
                int s = 0;
                
                while (rs0.next()) {
                    if (s == 0) {
                        
            %>
             <tr>
              <td width="73"><h4 align="center" class="style1 style8 style3"><strong>Id</strong></h4></td>
              
            
              <td width="122"><h4 align="center" class="style1 style8 style3"><strong>Product Name</strong></h4></td>
                 <td width="122"><h4 align="center" class="style1 style8 style3"><strong>Price</strong></h4></td>
              <td width="122"><h4 align="center" class="style1 style8 style3"><strong>Quantity</strong></h4></td>
             
              <td width="195"><h4 align="center" class="style1 style8 style3"><strong>Total</strong></h4></td>
              <td width="195"><h4 align="center" class="style1 style8 style3"><strong>Remove</strong></h4></td>
              
             
            
            </tr>
               <%
                }
                s++;

            %>

        <tr>
             
               <td><div align="center" class="style1 style8 style3 style4">
                            <% out.print(s);%>
                       </div></td>
                        
                        
                        <td><div align="center" class="style1 style8 style3 style4">
                            <% out.print(rs0.getString("ptype"));%>
                     </div></td>
                <td><div align="center" class="style1 style8 style3 style4">
                            <% out.print(rs0.getString("price"));
                             count += Integer.parseInt(rs0.getString("quantity"));
                              session.setAttribute("count1", "" + count);
                            %>
                   </div></td>
                <td><div align="center" class="style1 style8 style3 style4">
                            <% out.print(rs0.getString("quantity"));%>
                        </div></td>
               <td><div align="center" class="style1 style8 style3 style4">
                            <% out.print(rs0.getString("tamount"));
                             amount += Integer.parseInt(rs0.getString("tamount"));
                             session.setAttribute("amount1", "" + amount);
                            %>
                      </div></td>
                         <td><div align="center"><span class="style7">
              <a href="delete1.jsp?cid=<%out.print(rs0.getString("id"));%>&del=del">Remove</a>
			 </span></div></td>		
          </tr>
         
            <%

                }
            %>
            <tr><td></td><td></td>
                <td></td><!-- <td></td> --><td></td>
				<td></td>
            <td></td></tr>
            <tr>
                                <td width="38" height="32">&nbsp;</td>
                               
                                <td width="165">&nbsp;</td>
                                <td width="179"><div align="center" class="style1 style8 style3 style4">Total : </div></td>
                                <td width="177"><h4 align="center" class="style1 style8 style3 style4" >
                                        <%out.print(count);
                                        %>
                                    </h4></td>
                                <td width="177"><h4 align="center" class="style1 style8 style3 style4" >Rs.
                                        <%out.print(amount);
                                           
                                            

                                        %>
                                    </h4></td>
									<td></td>
           </tr>
			
		
         </table>
		    <table width="1250">
  <tr>
    <td><div align="center">
      <input name="Submit" type="submit" class="row4" value="Submit">
    </div></td>
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