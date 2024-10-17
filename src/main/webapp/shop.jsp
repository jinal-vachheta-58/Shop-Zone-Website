<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, project.connection" %>

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
    <style>
    /*!
 * Start Bootstrap - Busines Frontpage (https://startbootstrap.com/template-overviews/business-frontpage)
 * Copyright 2013-2019 Start Bootstrap
 * Licensed under MIT (https://github.com/BlackrockDigital/startbootstrap-business-frontpage/blob/master/LICENSE)
 */
/* body { */
/*   padding-top: 56px; */
/* } */

/* card */
.dress-card-img-top {
  width:100%;
  border-radius: 7px 7px 0 0;
}

.dress-card-body {
  padding:1rem;
  background: #fff;
/*   background-color: #FFD333 !important; */
  border-radius: 0 0 7px 7px;
}

.dress-card-title {
  line-height: 0.5rem;
}

.dress-card-crossed {
  text-decoration: line-through;
}

.dress-card-price {
  font-size: 1rem;
  font-weight: bold;
}

.dress-card-off {
  color: #E06C9F;
/*   color: #FFD333 !important; */
}

.dress-card-para {
  margin-bottom: 0.2rem;
  font-size: 1.0rem;
  margin-bottom: 0rem;
}

.dress-card {
  border-radius: 14x;
}

.dress-card-heart {
  font-size: 1em;
/*   color: #DB2763; */
  color: #FFD333 ;
  margin: 4.5px;
  position: absolute;
  left: 4px;
  top: 0px;
  
}

.surprise-bubble {
  position: absolute;
  bottom: 12rem;
  right: 2rem;
  border-radius: 50%;
  width: 30px;
  height: 30px;
  background: #fff;
  background-color: #FFD333 !important;
  padding: 1rem;
  color: white;
  -webkit-transition: all 0.55s cubic-bezier(0.645, 0.045, 0.355, 1);
  transition: all 0.55s cubic-bezier(0.645, 0.045, 0.355, 1);
}

.surprise-bubble a {
  font-size: 0.65em;
  text-transform: uppercase;
  letter-spacing: 1px;
  color: white;
  font-family: arial;
  text-decoration: none;
  position: absolute;
  top: 9px;
  left: 20px;
  opacity: 0;
  -webkit-transition-delay: 2s;
  /* Safari */
  transition-delay: 2s;
  -webkit-transition: all 0.25s cubic-bezier(0.645, 0.045, 0.355, 1);
  transition: all 0.25s cubic-bezier(0.645, 0.045, 0.355, 1);
}

.surprise-bubble:hover {
  border-radius: 999rem;
  padding: 1rem;
  width: 26%;
  height: 30px;
  background: #DB2763;
  color: white;
  -webkit-transition: all 0.55s cubic-bezier(0.645, 0.045, 0.355, 1);
  transition: all 0.55s cubic-bezier(0.645, 0.045, 0.355, 1);
}

.surprise-bubble:hover a {
  opacity: 1;
  -webkit-transition-delay: 2s;
  /* Safari */
  transition-delay: 2s;
  -webkit-transition: opacity 1s cubic-bezier(0.645, 0.045, 0.355, 1);
  transition: opacity 1s cubic-bezier(0.645, 0.045, 0.355, 1);
}

.card-button {
  text-align: center;
  text-transform: uppercase;
  font-size: 15px;
  padding: 9px;
}
.card-button a {
  text-decoration: none;
}

.card-button-inner {
  padding: 10px;
  border-radius: 3px;
}

.bag-button {
  background: #E06C9F;
  color: white;
}

.bag-button :hover{
  background: #e299b9;
}

.wish-button {
  border: 1px solid #E06C9F;
  color: #E06C9F;
  
}

    
    
    </style>
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
            
            <div class="col-lg-4 col-6 text-left">
                <form action="">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for products">
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary">
                                <i class="fa fa-search"></i>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
            
            <div class="col-lg-4 col-6 text-right">
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
                <h5 class="m-0">
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
    <div class="container-fluid bg-dark mb-30">
        <div class="row px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn d-flex align-items-center justify-content-between bg-primary w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
                    <h6 class="text-dark m-0"><i class=" mr-2"></i>Categories</h6>
                    <i class="fa fa-angle-down text-dark"></i>
                </a>
                <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
                    
                    <div class="navbar-nav w-100">
                    
                    
                        <div class="nav-item dropdown dropright">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Men <i class="fa fa-angle-right float-right mt-1"></i></a>
<!--                             <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Women <i class="fa fa-angle-right float-right mt-1"></i></a> -->
<!--                             <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">kids <i class="fa fa-angle-right float-right mt-1"></i></a> -->
                            <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                <a href="" class="dropdown-item">Men's 1 Dresses</a>
                                <a href="" class="dropdown-item">Men's 2 Dresses</a>
                                <a href="" class="dropdown-item">Men's 3 Dresses</a>
                            </div>
                        </div>
                        
                        
                        <div class="nav-item dropdown dropright">
<!--                             <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Men <i class="fa fa-angle-right float-right mt-1"></i></a> -->
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Women <i class="fa fa-angle-right float-right mt-1"></i></a>
<!--                             <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">kids <i class="fa fa-angle-right float-right mt-1"></i></a> -->
                            <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                <a href="" class="dropdown-item">Women's 1 Dresses</a>
                                <a href="" class="dropdown-item">Women's 2 Dresses</a>
                                <a href="" class="dropdown-item">Women's 3 Dresses</a>
                            </div>
                        </div>
                        
                        
                        <div class="nav-item dropdown dropright">
<!--                             <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Men <i class="fa fa-angle-right float-right mt-1"></i></a> -->
<!--                             <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Women <i class="fa fa-angle-right float-right mt-1"></i></a> -->
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">kids <i class="fa fa-angle-right float-right mt-1"></i></a>
                            <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                <a href="" class="dropdown-item">Men's Dresses</a>
                                <a href="" class="dropdown-item">Women's Dresses</a>
                                <a href="" class="dropdown-item">kid's Dresses</a>
                            </div>
                        </div>
                        
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
<!--                             <a href="detail.html" class="nav-item nav-link">Shop Detail</a> -->
<!--                             <div class="nav-item dropdown"> -->
<!--                                 <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages <i class="fa fa-angle-down mt-1"></i></a> -->
<!--                                 <div class="dropdown-menu bg-primary rounded-0 border-0 m-0"> -->
<!--                                     <a href="cart.html" class="dropdown-item">Shopping Cart</a> -->
<!--                                     <a href="checkout.html" class="dropdown-item">Checkout</a> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             <a href="contact.html" class="nav-item nav-link">Contact</a> -->
                        </div>
                        <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                                            <div class="btn-group mr-2 ">
                        <button type="button" class="btn btn-sm btn-light dropdown-toggle rounded" data-toggle="dropdown">My Account</button>
                        <div class="dropdown-menu dropdown-menu-right">
                            <a href="signup.jsp"><button class="dropdown-item" type="button">Sign up</button></a>
                            <a href="login.jsp"><button class="dropdown-item" type="button">Sign in</button></a>
                            
                            <% if (is_logged) { %>
        <a href="logout.jsp"><button class="dropdown-item" type="button">Logout</button></a>
    <% } %>
                            
<!--                             <a href="logout.jsp"><button class="dropdown-item" type="button">logout</button></a> -->
                        </div>
                    </div>
                            <a href="" class="btn px-0">
                                <i class="fas fa-heart text-primary"></i>
                                <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                            </a>
                            <a href="" class="btn px-0 ml-3">
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
    


    <!-- Shop Start -->
    <div class="container-fluid">
        <div class="row px-xl-5">
            <!-- Shop Sidebar Start -->
            <div class="col-lg-3 col-md-4">
            
            
            
            
            <!-- category start-->
            
<%
    Connection conn = null;
    Statement stmtSubCategory = null;
    ResultSet rsSubCategory = null;
    
    Statement stmtGender = null;
    ResultSet rsGender = null;
%>

<h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Filter by Category</span></h5>
<div class="bg-light p-4 mb-30">
    <form>
        <%
            try {
                // Get the connection using your project connection class
                conn = connection.getcon();
                
                // Query to get subcategories and their total_products
                String sqlSubCategory = "SELECT sub_cat_name, total_products FROM sub_category";
                stmtSubCategory = conn.createStatement();
                rsSubCategory = stmtSubCategory.executeQuery(sqlSubCategory);

                // Loop through the subcategories and display them as checkboxes
                while (rsSubCategory.next()) {
                    String subCatName = rsSubCategory.getString("sub_cat_name");
                    int totalProducts = rsSubCategory.getInt("total_products");
        %>
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                        <input type="checkbox" class="custom-control-input" id="subcat-<%= subCatName %>">
                        <label class="custom-control-label" for="subcat-<%= subCatName %>"><%= subCatName %></label>
                        <span class="badge border font-weight-normal"><%= totalProducts %></span>
                    </div>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rsSubCategory != null) rsSubCategory.close();
                if (stmtSubCategory != null) stmtSubCategory.close();
                if (conn != null) conn.close();
            }
        %>
    </form>
</div>
                
            <!-- category end -->
            
<%
     conn = null;
     stmtGender = null;
     rsGender = null;
%>

<!-- Filter by Gender -->
<h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Filter by Gender</span></h5>
<div class="bg-light p-4 mb-30">
    <form>
        <%
            try {
                conn = connection.getcon();

                String sqlGender = "SELECT p_cat_name FROM parent_category";
                stmtGender = conn.createStatement();
                rsGender = stmtGender.executeQuery(sqlGender);

//                 out.println("Debug: Query executed successfully.");

                while (rsGender.next()) {
                    String genderCategory = rsGender.getString("p_cat_name");

//                     out.println("Debug: Gender Category - " + genderCategory);
        %>
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                        <input type="checkbox" class="custom-control-input" id="gender-<%= genderCategory %>">
                        <label class="custom-control-label" for="gender-<%= genderCategory %>"><%= genderCategory %></label>
                    </div>
        <%
                }
            } catch (Exception e) {
                // Print the error message to the page for debugging
                out.println("Error: " + e.getMessage());
                e.printStackTrace();
            } finally {
                // Close resources properly
                if (rsGender != null) rsGender.close();
                if (stmtGender != null) stmtGender.close();
                if (conn != null) conn.close();
            }
        %>
    </form>
</div><!-- Filter by Gender -->
                <!-- Price Start -->
                <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Filter by price</span></h5>
                <div class="bg-light p-4 mb-30">
                
                
                
                    <form>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="price-all">
                            <label class="custom-control-label" for="price-all">All Price</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-1">
                            <label class="custom-control-label" for="price-1">$0 - $100</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-2">
                            <label class="custom-control-label" for="price-2">$100 - $200</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-3">
                            <label class="custom-control-label" for="price-3">$200 - $300</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-4">
                            <label class="custom-control-label" for="price-4">$300 - $400</label>
                            <span class="badge border font-weight-normal">145</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                            <input type="checkbox" class="custom-control-input" id="price-5">
                            <label class="custom-control-label" for="price-5">$400 - $500</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                    </form>
                </div>
                <!-- Price End -->
                
<!--                 filter by discount-->
<!-- Discount Filter Start -->
<h5 class="section-title position-relative text-uppercase mb-3">
    <span class="bg-secondary pr-3">Filter by Discount</span>
</h5>
<div class="bg-light p-4 mb-30">
    <form>
        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
            <input type="checkbox" class="custom-control-input" id="discount-all">
            <label class="custom-control-label" for="discount-all">All Discounts</label>
            <span class="badge border font-weight-normal">1000</span>
        </div>
        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
            <input type="checkbox" class="custom-control-input" id="discount-0-10">
            <label class="custom-control-label" for="discount-0-10">0% - 10%</label>
            <span class="badge border font-weight-normal">250</span> <!-- Example count -->
        </div>
        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
            <input type="checkbox" class="custom-control-input" id="discount-10-30">
            <label class="custom-control-label" for="discount-10-30">10% - 30%</label>
            <span class="badge border font-weight-normal">180</span> <!-- Example count -->
        </div>
        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
            <input type="checkbox" class="custom-control-input" id="discount-30-50">
            <label class="custom-control-label" for="discount-30-50">30% - 50%</label>
            <span class="badge border font-weight-normal">120</span> <!-- Example count -->
        </div>
        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
            <input type="checkbox" class="custom-control-input" id="discount-50-plus">
            <label class="custom-control-label" for="discount-50-plus">50% or more</label>
            <span class="badge border font-weight-normal">50</span> <!-- Example count -->
        </div>
    </form>
</div>
<!-- Discount Filter End -->

<!--                 filter by discount-->
                
                
                
                <!-- Color Start -->
                <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Filter by color</span></h5>
                <div class="bg-light p-4 mb-30">
                    <form>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="color-all">
                            <label class="custom-control-label" for="price-all">All Color</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="color-1">
                            <label class="custom-control-label" for="color-1">Black</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="color-2">
                            <label class="custom-control-label" for="color-2">White</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="color-3">
                            <label class="custom-control-label" for="color-3">Red</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="color-4">
                            <label class="custom-control-label" for="color-4">Blue</label>
                            <span class="badge border font-weight-normal">145</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                            <input type="checkbox" class="custom-control-input" id="color-5">
                            <label class="custom-control-label" for="color-5">Green</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                    </form>
                </div>
                <!-- Color End -->

                <!-- Size Start -->
                <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Filter by size</span></h5>
                <div class="bg-light p-4 mb-30">
                    <form>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="size-all">
                            <label class="custom-control-label" for="size-all">All Size</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size-1">
                            <label class="custom-control-label" for="size-1">XS</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size-2">
                            <label class="custom-control-label" for="size-2">S</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size-3">
                            <label class="custom-control-label" for="size-3">M</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size-4">
                            <label class="custom-control-label" for="size-4">L</label>
                            <span class="badge border font-weight-normal">145</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                            <input type="checkbox" class="custom-control-input" id="size-5">
                            <label class="custom-control-label" for="size-5">XL</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                    </form>
                </div>
                <!-- Size End -->
                
                
            </div>
            <!-- Shop Sidebar End -->


 <!-- Shop Product Start -->
<!--  	<div class="p-1"> -->
            <div class="col-lg-9 col-md-8 ">
                <div class="row pb-3">
                    <%
                        Connection con = null;
                        PreparedStatement ps = null;
                        ResultSet rs = null;

                        try {
                            // Establish connection
                            con = connection.getcon();

                            // SQL query to fetch product data with images
                            String query = "SELECT p.title, p.description, p.show_price, p.actual_price, i.path " +
                                           "FROM product p " +
                                           "JOIN image i ON p.pro_id = i.pro_id";
                            ps = con.prepareStatement(query);
                            rs = ps.executeQuery();

                            // Loop through the result set and display products with images
                            while (rs.next()) {
                                String title = rs.getString("title");
                                String description = rs.getString("description");
                                int showPrice = rs.getInt("show_price");
                                int actualPrice = rs.getInt("actual_price");
//                                 Double discount = rs.getDouble("discount");
     // Calculate the discount percentage
                    double discountPercentage = ((actualPrice - showPrice) / (double) actualPrice) * 100;

                    // Format the discount percentage to remove unnecessary precision
                    String discountFormatted = String.format("%.0f", discountPercentage);
        

                                String imagePath = rs.getString("path"); // Get the image path from the database
                    %>
                    <div class="col-md-4">
        <div class="dress-card" style="width: 18rem;">
          <div class="dress-card-head">
            <a href= "#"><img class="dress-card-img-top" src="<%= imagePath %>" alt="<%= imagePath %>"></a>

          <div class="dress-card-body">
<!--             <h4 class="dress-card-title">Harpa</h4> -->
            <p class="dress-card-para mb-3"><%= title %></p>
            <p class="dress-card-para"><span class="dress-card-price">Rs. <%= showPrice %> &ensp;</span><span class="dress-card-crossed">Rs. <%= actualPrice %>
            </span><span class="dress-card-off">&ensp; (<%= discountFormatted  %> % OFF) </span>
            </p>
            <div class="row">
              <div class="col-md-6 card-button"><a href=""><div class="card-button-inner bag-button">Add to Bag</div></a></div>
              <div class="col-md-6 card-button"><a href=""><div class="card-button-inner wish-button">Whishlist</div></a></div>
            </div>
            <div class="" style="background-color:gray;">
<!--             	<div class="bg-light text-dark">Free Delivery</button> -->
            </div>
          </div>
        </div>
      </div>

                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        } finally {
                            try {
                                if (rs != null) rs.close();
                                if (ps != null) ps.close();
                                if (con != null) con.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                    %>
                </div>
            </div>
            </div>
            <!-- Shop Product End -->
        
        </div>
<!--     </div> -->
    <!-- Shop End -->

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