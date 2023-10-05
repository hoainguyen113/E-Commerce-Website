<%-- 
    Document   : product
    Created on : Jun 30, 2023, 3:14:09 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link
            href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
            rel="stylesheet"
            />
        <link href="CSS/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="CSS/bootstrap.css"/>
        <link rel="stylesheet" href="CSS/style1.css" />
        <link rel="stylesheet" href="CSS/style.css" />
        <script>
            function openNav() {
                document.getElementById("mySidenav").style.display = "block";
                document.getElementById("mySidenav").style.width = "200px";
            }
            function closeNav() {
                document.getElementById("mySidenav").style.width = "0";
            }

            function display() {
                document.getElementById("header_search-list_1").style.display = "block";
            }
            function hide() {
                document.getElementById("header_search-list_1").style.display = "none";
            }
        </script>  
    </head>
    <body>
        <section class="header" >
            <div class="col-sm-8 header_left">
                <div onclick="hide()" class="header_menu" id="home">

                    <div class="menu" style="margin-top: 0;">

                        <div id="mySidenav" class="sidenav">
                            <div class="sidenav_x">
                                <p href="javascript:void(0)" class="closebtn" style="cursor: pointer; color: #beabab" onclick="closeNav()">&times;</p>
                            </div>
                            <a href="#home">Home</a>
                            <a href="#">About</a>
                            <a href="#">Laptop</a>
                            <a href="#">PC</a>
                            <a href="#">Accessories</a>
                            <a href="#">Contact</a>
                            <a href="admin">Admin Function</a>
                        </div>
                        <span style="font-size:30px;cursor:pointer;" onclick="openNav()">&#9776;</span>
                    </div>

                    <div>
                        <a href="product" class="header_logo" style="text-decoration: none;">H2MAK</a>
                    </div>
                </div>      
                <div class="header_search  search-1 ">
                    <div>

                        <form action="search" method="get">
                            <div>
                                <input name="search" onclick="display()" type="search" class="form-control" placeholder="what are you looking ?" />
                                <i class="bx bx-search"></i>
                            </div>
                        </form>

                        <div onclick="hide()" class="header_search-list js_header_search-list" id="header_search-list_1">
                            <c:forEach var="p" items="${requestScope.data}">
                                <div class="header_search-list--content">
                                    <div class="header_search-list--item">
                                        <div class="header_search-list--item---image"><img src="${p.image01}" alt="alt"/></div>
                                        <div  class="header_search-list--item-content">
                                            <a>${p.productName}</a>
                                            <p style="color: grey">${p.newPrice}</p>
                                        </div> 
                                    </div>   
                                </div>         
                            </c:forEach>
                        </div>                        
                    </div>                               
                </div>
            </div>

            <div class="header_infor" onclick="hide()" style="margin-right: 3rem">    
                <div class="header_infor-no1">
                    <i class="bx bx-cart"></i>
                    <a href="">Cart (3)</a>
                </div>
                <div class="header_infor-no1">
                    <i class="bx bx-user"></i>         
                    <a href="login.jsp">Hello</a>&nbsp;<a href="signup.jsp">Admin</a>                   
                </div>
            </div>
        </section>
        <div class="row" onclick="hide()">
            <div class="col-md-12">
                <!--Bắt đầu slider-->
                <div
                    id="carousel-example-generic"
                    class="carousel slide"
                    data-ride="carousel"
                    >
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li
                            data-target="#carousel-example-generic"
                            data-slide-to="0"
                            class="active"
                            ></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="images/Banner01.jpg" alt="Vietnamese Cuisine" />
                        </div>

                        <div class="item">
                            <img src="images/slideshow2.jpg" alt="Vietnamese Cuisine" />
                        </div>

                        <div class="item">
                            <img src="images/slideshow3.jpg" alt="Vietnamese Cuisine" />
                        </div>
                    </div>

                    <!-- Controls -->
                    <a
                        class="left carousel-control slideshow_button"
                        href="#carousel-example-generic"
                        role="button"
                        data-slide="prev"
                        >
                        <span>
                            <i class="bx bxs-left-arrow"></i>
                        </span>
                    </a>
                    <a
                        class="right carousel-control slideshow_button"
                        href="#carousel-example-generic"
                        role="button"
                        data-slide="next"
                        >
                        <span style="width: 100%">
                            <i class="bx bxs-right-arrow" style="float: right"></i>
                        </span>
                    </a>
                </div>
                <!--Kết thúc slider-->
            </div>
        </div>
        <section class="menu" onclick="hide()">
            <div id="menuIcon"><a href="#iphone"><img src="images/iphone.png" alt=""></a></div>
            <div id="menuIcon"><a href="#samsung"><img src="images/samsungmenu.png" alt=""></a></div>
            <div id="menuIcon"><a href="#oppo"><img src="images/oppomenu.png" alt=""></a></div>
            <div id="menuIcon"><a href="#xiaomi"><img src="images/xiaomiBrand.png" alt=""></a></div>
            <div id="menuIcon"><a href="#vivo"><img src="images/vivobrand.jpg" alt=""></a></div>
            <div id="menuIcon"><i style="font-size: 2.5em;cursor: pointer;" class='bx bx-dots-horizontal-rounded'></i></div>
        </section>
        <div class="bodyShop" onclick="hide()" style=" cursor: pointer;">                      
            <section class="flashSale">
                <div class="flashSale_no1">
                    <i class="bx bx-gift" id="flashSale_head-icon"></i>
                    <h3>Flash sale</h3>
                </div>
                <div class="flashSale_list">
                    <div class="flashSale_item">
                        <div class="flashSale_item-image">
                            <img
                                src="images/rsz_iphone14new.jpg"
                                alt=""             
                                />
                        </div>
                        <div class="flashSale_item-content">
                            <h4>iphone 14 128GB</h4>
                            <div class="flashSale_item-content--body">
                                <p>
                                    <del>1500$</del>
                                    <span style="color: rgba(0, 0, 0, 0.619)">-50%</span>
                                </p>
                                <p>
                                    1000$
                                    <span id="flashSale_item-content--menthod">free ship</span>
                                </p>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                            </div>
                        </div>
                    </div>

                    <div class="flashSale_item">
                        <img src="images/samsung.jpg" alt="" class="flashSale_item-image" />
                        <div class="flashSale_item-content">
                            <h4>Samsung Galaxy A24</h4>
                            <div class="flashSale_item-content--body">
                                <p>
                                    <del>500$</del>
                                    <span style="color: rgba(0, 0, 0, 0.619)">-30%</span>
                                </p>
                                <p>
                                    300$
                                    <span id="flashSale_item-content--menthod">free ship</span>
                                </p>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                            </div>
                        </div>
                    </div>

                    <div class="flashSale_item">
                        <img
                            src="images/rsz_1iphone14pro.jpg"
                            alt=""
                            class="flashSale_item-image"
                            />
                        <div class="flashSale_item-content">
                            <h4>iPhone 14 Pro Max</h4>
                            <div class="flashSale_item-content--body">
                                <p>
                                    <del>1700$</del>
                                    <span style="color: rgba(0, 0, 0, 0.619)">-20%</span>
                                </p>
                                <p>
                                    1000$
                                    <span id="flashSale_item-content--menthod">free ship</span>
                                </p>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                            </div>
                        </div>
                    </div>

                    <div class="flashSale_item">
                        <img src="images/oppo.jpg" alt="" class="flashSale_item-image" />
                        <div class="flashSale_item-content">
                            <h4>OPPO Find N2 Flip 5G</h4>
                            <div class="flashSale_item-content--body">
                                <p>
                                    <del>1100$</del>
                                    <span style="color: rgba(0, 0, 0, 0.619)">-35%</span>
                                </p>
                                <p>
                                    1000$
                                    <span id="flashSale_item-content--menthod">free ship</span>
                                </p>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                            </div>
                        </div>
                    </div>

                    <div class="flashSale_item">
                        <img src="images/xiaomi.jpg" alt="" class="flashSale_item-image" />
                        <div class="flashSale_item-content">
                            <h4>Xiaomi Redmi 12C</h4>
                            <div class="flashSale_item-content--body">
                                <p>
                                    <del>150$</del>
                                    <span style="color: rgba(0, 0, 0, 0.619)">-10%</span>
                                </p>
                                <p>
                                    100$
                                    <span id="flashSale_item-content--menthod">free ship</span>
                                </p>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                            </div>
                        </div>
                    </div>

                    <div class="flashSale_item">
                        <img src="images/vivo.jpg" alt="" class="flashSale_item-image" />
                        <div class="flashSale_item-content">
                            <h4>Vivo Y35</h4>
                            <div class="flashSale_item-content--body">
                                <p>
                                    <del>290$</del>
                                    <span style="color: rgba(0, 0, 0, 0.619)">-50%</span>
                                </p>
                                <p>
                                    250$
                                    <span id="flashSale_item-content--menthod">free ship</span>
                                </p>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="iphone" id="iphone" >
                <div class="iphone_header">
                    <i class="bx bxl-apple" id="flashSale_head-icon"></i> <!--change icon, không change id-->
                    <h3>iphone</h3> <!--change-->
                </div>
                <!--                Iphone-->
                <div class="iphone_list">
                    <c:forEach var="listProduct" items="${requestScope.dataIP}" >                      
                        <div class="iphone_list__item" >
                            <!--change img-->
                            <img          
                                src="${listProduct.image01}" 
                                alt=""
                                class="flashSale_item-image"/>
                            <div class="iphone_list_item-content">
                                <a style="width: 100%; text-decoration: none;" href="iteminfo?id=${listProduct.productID}">
                                    <h4>${listProduct.productName}</h4> <!--change-->
                                </a>

                                <div class="iphone_list_item-content--body">
                                    <p>
                                        <del>${listProduct.oldPrice}$</del> <!--change-->
                                        <span style="color: rgba(0, 0, 0, 0.619)">-${100-(Math.round(listProduct.newPrice/listProduct.oldPrice*100))}%</span> <!--change-->
                                    </p>
                                    <!--change-->
                                    <p>
                                        ${listProduct.newPrice}$
                                        <span id="flashSale_item-content--menthod">free ship</span>
                                    </p>
                                    <i class="bx bxs-star" id="flashSale_item-content--start"></i> <!--change or not-->
                                    <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                    <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                    <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                    <i class="bx bxs-star" id="flashSale_item-content--start" style="color: grey;"></i>
                                </div>
                            </div>
                        </div>                       
                    </c:forEach>
                </div>                    
            </section>
            <!--samsung-->
            <section class="iphone" id="samsung">
                <div class="iphone_header">
                    <i><img style="width: 50px" src="images/samsungmenu.png" alt="alt"/></i> <!--change icon, không change id-->
                    <h3>Sammsung</h3> <!--change-->
                </div>

                <div class="iphone_list">
                    <c:forEach var="listProduct" items="${requestScope.dataSS}" >

                        <div class="iphone_list__item">
                            <!--change img-->
                            <img          
                                src="${listProduct.image01}" 
                                alt=""
                                class="flashSale_item-image"/>
                            <div class="iphone_list_item-content">
                                <a style="width: 100%; text-decoration: none;" href="iteminfo?id=${listProduct.productID}">
                                    <h4>${listProduct.productName}</h4> <!--change-->
                                </a>

                                <div class="iphone_list_item-content--body">
                                    <p>
                                        <del>${listProduct.oldPrice}$</del> <!--change-->
                                        <span style="color: rgba(0, 0, 0, 0.619)">-${100-(Math.round(listProduct.newPrice/listProduct.oldPrice*100))}%</span> <!--change-->
                                    </p>
                                    <!--change-->
                                    <p>
                                        ${listProduct.newPrice}$
                                        <span id="flashSale_item-content--menthod">free ship</span>
                                    </p>
                                    <i class="bx bxs-star" id="flashSale_item-content--start"></i> <!--change or not-->
                                    <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                    <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                    <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                    <i class="bx bxs-star" id="flashSale_item-content--start" style="color: grey;"></i>
                                </div>
                            </div>
                        </div>

                    </c:forEach>
                </div>                    
            </section>

            <!--xiaomi-->
            <section class="iphone" id="xiaomi">
                <div class="iphone_header">
                    <i><img style="width: 50px" src="images/xiaomiBrand.png" alt="alt"/></i> <!--change icon, không change id-->
                    <h3>Xiaomi</h3> <!--change-->
                </div>

                <div class="iphone_list">
                    <c:forEach var="listProduct" items="${requestScope.dataXI}" >

                        <div class="iphone_list__item">
                            <!--change img-->
                            <img          
                                src="${listProduct.image01}" 
                                alt=""
                                class="flashSale_item-image"/>
                            <div class="iphone_list_item-content">
                                <a style="width: 100%; text-decoration: none;" href="iteminfo?id=${listProduct.productID}">
                                    <h4>${listProduct.productName}</h4> <!--change-->
                                </a>

                                <div class="iphone_list_item-content--body">
                                    <p>
                                        <del>${listProduct.oldPrice}$</del> <!--change-->
                                        <span style="color: rgba(0, 0, 0, 0.619)">-${100-(Math.round(listProduct.newPrice/listProduct.oldPrice*100))}%</span> <!--change-->
                                    </p>
                                    <!--change-->
                                    <p>
                                        ${listProduct.newPrice}$
                                        <span id="flashSale_item-content--menthod">free ship</span>
                                    </p>
                                    <i class="bx bxs-star" id="flashSale_item-content--start"></i> <!--change or not-->
                                    <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                    <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                    <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                    <i class="bx bxs-star" id="flashSale_item-content--start" style="color: grey;"></i>
                                </div>
                            </div>
                        </div>

                    </c:forEach>
                </div>                    
            </section>

            <!-- vivo -->
            <section class="iphone" id="vivo">
                <div class="iphone_header">
                    <i><img style="width: 50px" src="images/vivobrand.jpg" alt="alt"/></i> <!--change icon, không change id-->
                    <h3>Vivo</h3> <!--change-->
                </div>

                <div class="iphone_list">                  
                    <c:forEach var="listProduct" items="${requestScope.dataVI}" >

                        <div class="iphone_list__item">
                            <!--change img-->
                            <img          
                                src="${listProduct.image01}" 
                                alt=""
                                class="flashSale_item-image"/>
                            <div class="iphone_list_item-content">
                                <a style="width: 100%; text-decoration: none;" href="iteminfo?id=${listProduct.productID}">
                                    <h4>${listProduct.productName}</h4> <!--change-->
                                </a>

                                <div class="iphone_list_item-content--body">
                                    <p>
                                        <del>${listProduct.oldPrice}$</del> <!--change-->
                                        <span style="color: rgba(0, 0, 0, 0.619)">-${100-(Math.round(listProduct.newPrice/listProduct.oldPrice*100))}%</span> <!--change-->
                                    </p>
                                    <!--change-->
                                    <p>
                                        ${listProduct.newPrice}$
                                        <span id="flashSale_item-content--menthod">free ship</span>
                                    </p>
                                    <i class="bx bxs-star" id="flashSale_item-content--start"></i> <!--change or not-->
                                    <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                    <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                    <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                    <i class="bx bxs-star" id="flashSale_item-content--start" style="color: grey;"></i>
                                </div>
                            </div>
                        </div>

                    </c:forEach>
                </div>                    
            </section>

            <!--oppo-->
            <section class="iphone" id="vivo">
                <div class="iphone_header">
                    <i><img style="width: 50px" src="images/vivobrand.jpg" alt="alt"/></i> <!--change icon, không change id-->
                    <h3>Oppo</h3> <!--change-->
                </div>

                <div class="iphone_list">
                    <c:forEach var="listProduct" items="${requestScope.dataOP}" >
                        
                            <div class="iphone_list__item">
                                <!--change img-->
                                <img          
                                    src="${listProduct.image01}" 
                                    alt=""
                                    class="flashSale_item-image"/>
                                <div class="iphone_list_item-content">
                                    <a style="width: 100%; text-decoration: none;" href="iteminfo?id=${listProduct.productID}">
                                        <h4>${listProduct.productName}</h4> <!--change-->
                                    </a>
                                    
                                    <div class="iphone_list_item-content--body">
                                        <p>
                                            <del>${listProduct.oldPrice}$</del> <!--change-->
                                            <span style="color: rgba(0, 0, 0, 0.619)">-${100-(Math.round(listProduct.newPrice/listProduct.oldPrice*100))}%</span> <!--change-->
                                        </p>
                                        <!--change-->
                                        <p>
                                            ${listProduct.newPrice}$
                                            <span id="flashSale_item-content--menthod">free ship</span>
                                        </p>
                                        <i class="bx bxs-star" id="flashSale_item-content--start"></i> <!--change or not-->
                                        <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                        <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                        <i class="bx bxs-star" id="flashSale_item-content--start"></i>
                                        <i class="bx bxs-star" id="flashSale_item-content--start" style="color: grey;"></i>
                                    </div>
                                </div>
                            </div>
                        
                    </c:forEach>
                </div>                    
            </section>

            <div class="footer-iconTop">
                <a href="#home"><i class='bx bx-up-arrow-alt' ></i></a>
            </div>

        </div>   


        <!--footer-->
        <%@include file="footer.jsp" %>
        <script src="JS/Jquery.js"></script>
        <script src="JS/bootstrap.min.js"></script>
        <script src=JS/"mycode.js"></script>
    </body>
</html>
