<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.apache.commons.fileupload.*, java.util.List, java.io.File, java.util.Iterator"%>
<%@page import="org.apache.commons.io.*" %>
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
                            <li><a href="admin_add_pro.jsp"style="color: yellow">Add Product</a></li>
                            <li><a href="admin_view_mrequest.jsp">View Request</a></li>
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
                        `   <a href="admin_add_pro.jsp">Add Product</a>
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


        <br><br><br>
        <h1 style="color:tomato;" align="center">ADD PRODUCT</h1>
        <form id="form" name="form" method="post" action="" enctype="multipart/form-data">
            <table align="center" width="100%" height="200pxpx" border="0">


                <tr>
                    <td style="width:30%"></td>
                    <td width="12%"><div align="center" class="style2"><h2> Product Type: </h2></div></td>
                    <td> <input type="text" id="bookname" name="fname" ></td>
                </tr>


                <tr>
                    <td width="38%" height="61">&nbsp;</td>
                    <td width="12%"><div align="center" class="style2"><h2>Model : </h2></div></td>

                    <td> <input type="text" id="bookname" name="gender" ></td>
                    <td width="36%">&nbsp;</td>
                    </select>
                </tr>

                <tr>
                    <td style="width:30%"></td>
                    <td width="12%"><div align="center" class="style2"><h2>Quantity : </h2></div></td>
                    <td><input type="text" id="author" name="quantity" ></td>
                </tr>

                <tr>
                    <td style="width:30%"></td>
                     <td width="12%"><div align="center" class="style2"><h2>Price : </h2></div></td>
                    <td>  <input type="text" id="publishdate" name="price" ></td>
                </tr>


                <tr>
                    <td style="width:30%"></td>
                    <td width="12%"><div align="center" class="style2"><h2> Image : </h2></div></td>
                    <td><input type="file" id="photo" name="img"><br></td>
                </tr>
                <tr>
                    <td style="width:30%"></td>
                    <td><div style="color:red;" ><input type="Reset"  value="CLEAR"></div></td>
                    <td colspan="1" align="left"><input name="Submit" type="submit" class="row2" value="SUMBIT"></td>

                </tr>
            </table>
            <%             try {

                    String fname = "";
                    String quantity = "";
                    String price = "";
                    String gender = "";

                    String fileName = "";

                    //String fileName = "";
                    String ImagePath = "";
                    boolean isMultipart = FileUpload.isMultipartContent(request);

                    if (!isMultipart) {
                        //     request.getRequestDispatcher("add_book.jsp").forward(request, response);
                        return;
                    }

                    DiskFileUpload upload = new DiskFileUpload();

                    List items = upload.parseRequest(request);

                    Iterator itr = items.iterator();

                    while (itr.hasNext()) {

                        FileItem item = (FileItem) itr.next();

                        if (item.isFormField()) {

                            String fieldName = item.getFieldName();
                            if (fieldName.equals("fname")) {
                                fname = item.getString();
                            }
                            if (fieldName.equals("price")) {
                                price = item.getString();
                            }
                            
                            if (fieldName.equals("gender")) {
                                gender = item.getString();
                            }

                            if (fieldName.equals("quantity")) {
                                quantity = item.getString();
                            }

                            if (fieldName.equals("img")) {
                                fileName = item.getString();
                            }

                        } else {
                            File f = new File(config.getServletContext().getRealPath("/") + "upload/");
                            if (f.exists() == false) {
                                f.mkdir();
                            }
                            File fullFile = new File(item.getName());
                            File fileType = new File(item.getContentType());

                            // ftype=""+fileType.getName();
                            double filesize = item.getSize();
                            double fs1 = filesize / (1024 * 1024);
                            File savedFile = new File(getServletContext().getRealPath("/") + "upload/", fullFile.getName());

                            item.write(savedFile);
                            fileName = fullFile.getName();
                            //fileSize=""+savedFile.length();

                            String qry = "select max(id) as maxid from product";
                            ResultSet rs = stmt1.executeQuery(qry);
                            int id1 = 0;
                            if (rs.next()) {
                                id1 = rs.getInt("maxid");
                            }
                            int id2 = id1 + 1;

                            String ins = "insert into product values('" + id2 + "','" + fname + "','" + gender + "','" + price + "','" + quantity + "','" + fileName + "')";
                            int n = stmt.executeUpdate(ins);
                            if (n == 1) {
            %>
            <script language="javascript">
                alert("Add Successfully...");
                window.location.href = "admin_add_pro.jsp"
            </script>

            <%
            } else {
            %>
            <script language="javascript">
                alert("FAILED");
                window.location.href = "admin_add_pro.jsp";
            </script>

            <% }
                        }
                        // response.sendRedirect("admin_upload.jsp");

                    }

                } catch (Exception e) {
                    // out.print(e.getMessage());
                }
            %>    


        </form>

        <br><br><br>








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