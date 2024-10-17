<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="project.connection" %> <!-- Import your connection provider class -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>SHOP ZONE</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">  

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid">

        <div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
            <div class="col-lg-4">
                <a href="" class="text-decoration-none">
                    <span class="h1 text-uppercase text-primary bg-dark px-2">SHOP</span>
                    <span class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">ZONE</span>
                </a>
            </div>
            
            <div class="col-lg-8 col-6 text-right">
                 <p class="m-0">

<%
                        Cookie[] cookies = request.getCookies();
                        String username = null;

                        if (cookies != null) {
                            for (Cookie cookie : cookies) {
                                if (cookie.getName().equals("username")) {
                                    username = cookie.getValue();
                                    break;
                                }
                            }
                        }
                    %>
</p>
                <h5 class="mr-0">
                    <%
                    	boolean is_logged = false;
                        if (username != null) {
                            out.print("Welcome "+username);
                            is_logged = true;
                        } else {
                            out.print("Welcome User");
                            is_logged = false;
                        }
                    %>
                </h5>
                
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    
    
<%--     <%@ page import="java.sql.*, project.connection" %> --%>
<%
    // Declare all variables outside the try block to avoid redeclaration
    Connection conn = null;
    Statement stmtParent = null;
    Statement stmtSub = null;
    ResultSet rsParent = null;
    ResultSet rsSub = null;
%>

<div class="container-fluid bg-dark mb-30">
    <div class="row px-xl-5">
        <div class="col-lg-3 d-none d-lg-block">
            <a class="btn d-flex align-items-center justify-content-between bg-primary w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
                <h6 class="text-dark m-0"><i class=" mr-2"></i>Categories</h6>
                <i class="fa fa-angle-down text-dark"></i>
            </a>
            <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
                <div class="navbar-nav w-100">
                    <%
                        try {
                            // Get the connection using your project connection class
                            conn = connection.getcon();
                            
                            // Parent categories query
                            stmtParent = conn.createStatement();
                            rsParent = stmtParent.executeQuery("SELECT * FROM parent_category");

                            // Loop through parent categories
                            while (rsParent.next()) {
                                int parentCatId = rsParent.getInt("p_cat_id");
                                String parentCategoryName = rsParent.getString("p_cat_name");
                    %>
                                <div class="nav-item dropdown dropright">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                                        <%= parentCategoryName %> <i class="fa fa-angle-right float-right mt-1"></i>
                                    </a>
                                    <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                        <%
                                            // Subcategory query for the current parent category
                                            stmtSub = conn.createStatement();
                                            rsSub = stmtSub.executeQuery("SELECT * FROM sub_category WHERE p_cat_id = " + parentCatId);

                                            while (rsSub.next()) {
                                                String subCategoryName = rsSub.getString("sub_cat_name");
                                        %>
                                                <a href="#" class="dropdown-item"><%= subCategoryName %></a>
                                        <%
                                            }
                                            rsSub.close();
                                            stmtSub.close(); // Close subcategory statement and result set after use
                                        %>
                                    </div>
                                </div>
                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        } finally {
                            // Close resources
                            if (rsParent != null) rsParent.close();
                            if (stmtParent != null) stmtParent.close();
                            if (conn != null) conn.close();
                        }
                    %>
                </div>
            </nav>
            
            
        </div>
        
                    <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
<!--                     <a href="" class="text-decoration-none d-block d-lg-none"> -->
<!--                         <span class="h1 text-uppercase text-dark bg-light px-2">Multi</span> -->
<!--                         <span class="h1 text-uppercase text-light bg-primary px-2 ml-n1">Shop</span> -->
<!--                     </a> -->

                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                            <a href="index.jsp" class="nav-item nav-link active">Home</a>
                            <a href="shop.jsp" class="nav-item nav-link">Shop</a>
                        </div>
                        <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                                            <div class="btn-group mr-2 ">
                        <button type="button" class="btn btn-sm btn-light dropdown-toggle rounded" data-toggle="dropdown">My Account</button>
                        <div class="dropdown-menu dropdown-menu-right">
                            
                            
                            <% if (is_logged) { %>
        <a href="logout.jsp"><button class="dropdown-item" type="button">Logout</button></a>
    <% }
                            else
                            {%>
                            	<a href="signup.jsp"><button class="dropdown-item" type="button">Sign up</button></a>
                                <a href="login.jsp"><button class="dropdown-item" type="button">Sign in</button></a><%
                            }%>
                            
<!--                             <a href="logout.jsp"><button class="dropdown-item" type="button">logout</button></a> -->
                        </div>
                    </div>
                            <a href="wish_list.jsp" class="btn px-0">
                                <i class="fas fa-heart text-primary"></i>
                                <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                            </a>
                            <a href="cust_cart.jsp" class="btn px-0 ml-3">
                                <i class="fas fa-shopping-cart text-primary"></i>
                                <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
    </div>
</div>
        <!-- Navbar End -->
	

    <!-- Carousel Start -->
    <div class="container-fluid mb-3">
        <div class="row px-xl-5">
            <div class="col-lg-8">
                <div id="header-carousel" class="carousel slide carousel-fade mb-30 mb-lg-0" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#header-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#header-carousel" data-slide-to="1"></li>
                        <li data-target="#header-carousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item position-relative active" style="height: 430px;">
                            <img class="position-absolute w-100 h-100" src="img/carousel-1.jpg" style="object-fit: cover;">
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3" style="max-width: 700px;">
                                    <h1 class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Men Fashion</h1>
<!--                                     <p class="mx-md-5 px-5 animate__animated animate__bounceIn">Lorem rebum magna amet lorem magna erat diam stet. Sadips duo stet amet amet ndiam elitr ipsum diam</p> -->
                                    <a class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp" href="#">Shop Now</a>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item position-relative" style="height: 430px;">
                            <img class="position-absolute w-100 h-100" src="img/carousel-2.jpg" style="object-fit: cover;">
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3" style="max-width: 700px;">
                                    <h1 class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Women Fashion</h1>
<!--                                     <p class="mx-md-5 px-5 animate__animated animate__bounceIn">Lorem rebum magna amet lorem magna erat diam stet. Sadips duo stet amet amet ndiam elitr ipsum diam</p> -->
                                    <a class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp" href="#">sShop Now</a>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item position-relative" style="height: 430px;">
                            <img class="position-absolute w-100 h-100" src="img/carousel-3.jpg" style="object-fit: cover;">
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3" style="max-width: 700px;">
                                    <h1 class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Kids Fashion</h1>
<!--                                     <p class="mx-md-5 px-5 animate__animated animate__bounceIn">Lorem rebum magna amet lorem magna erat diam stet. Sadips duo stet amet amet ndiam elitr ipsum diam</p> -->
                                    <a class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp" href="#">Shop Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="product-offer mb-30" style="height: 200px;">
                    <img class="img-fluid" src="img/offer-1.jpg" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Save 20%</h6>
                        <h3 class="text-white mb-3">Special Offer</h3>
                        <a href="" class="btn btn-primary">Shop Now</a>
                    </div>
                </div>
                <div class="product-offer mb-30" style="height: 200px;">
                    <img class="img-fluid" src="img/offer-2.jpg" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Save 20%</h6>
                        <h3 class="text-white mb-3">Special Offer</h3>
                        <a href="" class="btn btn-primary">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Carousel End -->


    <!-- Featured Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Quality Product</h5>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                    <h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
                </div>
            </div>
            <div class="col-lg-4 	col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">14-Day cancel order</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Featured End -->


    <!-- Categories Start -->
    <div class="container-fluid pt-5">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Shop by Category</span></h2>
        <div class="row px-xl-5 pb-3">
        
         <%
         		// Establish a database connection
                Connection con = connection.getcon();
                if (con != null) {
                    // Query to fetch parent categories
                    String sqlParent = "SELECT * FROM parent_category";
                    Statement s = con.createStatement();
                    ResultSet r1 = s.executeQuery(sqlParent);

                    while (r1.next()) {
                    	
                        int pCatId = r1.getInt("p_cat_id");
                        String pCatName = r1.getString("p_cat_name");

                        // Query to fetch subcategories for the current parent category
                        String sqlSub = "SELECT * FROM sub_category WHERE p_cat_id = " + pCatId;
                        Statement s1 = con.createStatement();
                        ResultSet r = s1.executeQuery(sqlSub);

                        while (r.next()) {
                            String subCatName = r.getString("sub_cat_name");
                            String subCatPicPath = r.getString("sub_cat_pic_path");
                            int total_pro = r.getInt("total_products");
                            
            %>

            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <a class="text-decoration-none" href="">
                    <div class="cat-item d-flex align-items-center mb-4">
                        <div class="overflow-hidden" style="width: 100px; height: 100px;">
                            <img class="img-fluid" src="<%= subCatPicPath %>" alt="<%= subCatPicPath %>">
                        </div>
                        
                        
                        
                        <div class="flex-fill pl-3">
                            <h6><%= subCatName %></h6>
                            <small class="text-body"><%= total_pro +" Products "%></small>
                        </div>
                    </div>
                </a>
            </div>

            <%
                        }
                        r.close();
                        s1.close();
                    }
                    r1.close();
                    s.close();
                    con.close(); // Close the connection
                } else {
                    out.println("<p>Failed to connect to the database.</p>");
                }
            %>        



        </div>
    </div>
    <!-- Categories End -->


    <!-- Products Start -->
    <div class="container-fluid pt-5 pb-3">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Top Picks On Unbeatable deals for man</span></h2>
        <div class="row px-xl-5">
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="img/product-1.jpg" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
<!--                             <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a> -->
<!--                             <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a> -->
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Product Name Goes Here</a>
                        <p> lorem10 hiucbikcbkj
                        </p>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>Rs. 123.00</h5><h6 class="text-muted ml-2"><del>Rs. 123.00</del></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Products End -->

<!-- Products Start -->
    <div class="container-fluid pt-5 pb-3">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Top Picks On Unbeatable deals for women</span></h2>
        <div class="row px-xl-5">
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="img/product-1.jpg" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
<!--                             <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a> -->
<!--                             <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a> -->
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Product Name Goes Here</a>
                        <p> lorem10 hiucbikcbkj
                        </p>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>Rs. 123.00</h5><h6 class="text-muted ml-2"><del>Rs. 123.00</del></h6>
                        </div>
<!--                         <div class="d-flex align-items	-center justify-content-center mb-1"> -->
<!--                             <small class="fa fa-star text-primary mr-1"></small> -->
<!--                             <small class="fa fa-star text-primary mr-1"></small> -->
<!--                             <small class="fa fa-star text-primary mr-1"></small> -->
<!--                             <small class="fa fa-star text-primary mr-1"></small> -->
<!--                             <small class="fa fa-star text-primary mr-1"></small> -->
<!--                             <small>(99)</small> -->
<!--                         </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>   
 <!-- peoduct end for wome -->
 
 
 <!-- Products Start -->
    <div class="container-fluid pt-5 pb-3">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Top Picks On Unbeatable deals for kids</span></h2>
        <div class="row px-xl-5">
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="img/product-1.jpg" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
<!--                             <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a> -->
<!--                             <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a> -->
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Product Name Goes Here</a>
                        <p> lorem10 hiucbikcbkj
                        </p>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>Rs. 123.00</h5><h6 class="text-muted ml-2"><del>Rs. 123.00</del></h6>
                        </div>
<!--                         <div class="d-flex align-items	-center justify-content-center mb-1"> -->
<!--                             <small class="fa fa-star text-primary mr-1"></small> -->
<!--                             <small class="fa fa-star text-primary mr-1"></small> -->
<!--                             <small class="fa fa-star text-primary mr-1"></small> -->
<!--                             <small class="fa fa-star text-primary mr-1"></small> -->
<!--                             <small class="fa fa-star text-primary mr-1"></small> -->
<!--                             <small>(99)</small> -->
<!--                         </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>   
 <!-- peoduct end for kids -->
 
 
<!--     Offer Start -->
<!--     <div class="container-fluid pt-5 pb-3"> -->
<!--         <div class="row px-xl-5"> -->
<!--             <div class="col-md-6"> -->
<!--                 <div class="product-offer mb-30" style="height: 300px;"> -->
<!--                     <img class="img-fluid" src="img/offer-1.jpg" alt=""> -->
<!--                     <div class="offer-text"> -->
<!--                         <h6 class="text-white text-uppercase">Save 20%</h6> -->
<!--                         <h3 class="text-white mb-3">Special Offer</h3> -->
<!--                         <a href="" class="btn btn-primary">Shop Now</a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--             <div class="col-md-6"> -->
<!--                 <div class="product-offer mb-30" style="height: 300px;"> -->
<!--                     <img class="img-fluid" src="img/offer-2.jpg" alt=""> -->
<!--                     <div class="offer-text"> -->
<!--                         <h6 class="text-white text-uppercase">Save 20%</h6> -->
<!--                         <h3 class="text-white mb-3">Special Offer</h3> -->
<!--                         <a href="" class="btn btn-primary">Shop Now</a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--     </div> -->
<!--     Offer End -->


    <!-- Products Start -->
    <div class="container-fluid pt-5 pb-3">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Recent Products</span></h2>
        <div class="row px-xl-5">
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="img/product-1.jpg" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Product Name Goes Here</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>$123.00</h5><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                        </div>
                        <div class="d-flex align-items-center justify-content-center mb-1">
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small class="fa fa-star text-primary mr-1"></small>
                            <small>(99)</small>
                        </div>
                    </div>
                </div>
            </div>
            </div>
    </div>
    <!-- Products End -->




    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-secondary mt-5 pt-5">
        <div class="row px-xl-5 pt-5">
            <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                <h5 class="text-secondary text-uppercase mb-4">Get In Touch</h5>
                <p class="mb-4">No dolore ipsum accusam no lorem. Invidunt sed clita kasd clita et et dolor sed dolor. Rebum tempor no vero est magna amet no</p>
                <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>j-112, shivalik complex, new-ranip road, ahmedabad, gujarat, india</p>
                <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>shop_zone@gmail.com</p>
<!--                 <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890</p> -->
            </div>
            <div class="col-lg-8 col-md-12">
                <div class="row">
                    <div class="col-md-4 mb-5">
                        <h5 class="text-secondary text-uppercase mb-4">Quick Shop</h5>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Home</a>
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Shop Detail</a>
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Shopping Cart</a>
                            <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Checkout</a>
                            <a class="text-secondary" href="#"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
<!--     <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a> -->


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>