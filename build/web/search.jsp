<%-- 
    Document   : search
    Created on : Jul 19, 2023, 8:16:09 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link
    href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
    rel="stylesheet"
    />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/bootstrap.css"/>
        <link rel="stylesheet" href="CSS/bootstrap.min.css"/>
        <link rel="stylesheet" href="CSS/style1.css"/>
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
                                <p href="javascript:void(0)" class="closebtn" style="cursor: pointer" onclick="closeNav()">&times;</p>
                            </div>
                            <a href="#home">Home</a>
                            <a href="#">About</a>
                            <a href="#">Laptop</a>
                            <a href="#">PC</a>
                            <a href="#">Accessories</a>
                            <a href="#">Contact</a>
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
                                <input name="search" onclick="${requestScope.data.isEmpty()? 'hide()':'display()'}" style="z-index: 1;" type="search" class="form-control" placeholder="what are you looking ?" />
                                <i class="bx bx-search"></i>
                            </div>
                        </form>                  
                        <div onclick="hide()" class="header_search-list js_header_search-list" id="header_search-list_1">                            
                            <c:forEach var="p" items="${requestScope.data}">
                                <div class="header_search-list--content">
                                    <div class="header_search-list--item">
                                        <div class="header_search-list--item---image"><img src="${p.image01}" alt="alt"/></div>
                                        <div class="header_search-list--item-content" style="color: grey">
                                            <p>${p.productName}</p>
                                            <p>${p.newPrice}</p>
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
                    <a href="">Login/ Sign up</a>
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
                    <ol class="carousel-indicators" style="z-index: 1;">
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
                        <div class="img-responsive item active">
                            <img src="images/Banner01.jpg" alt="Vietnamese Cuisine" />
                        </div>

                        <div class="img-responsive item">
                            <img src="images/slideshow2.jpg" alt="Vietnamese Cuisine" />
                        </div>

                        <div class=" img-responsive item">
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
        <section class="img-responsive menu" onclick="hide()">
            <div  id="menuIcon"><a href="#iphone"><img src="images/iphone.png" alt=""></a></div>
            <div id="menuIcon"><a href="#samsung"><img src="images/samsungmenu.png" alt=""></a></div>
            <div id="menuIcon"><a href="#oppo"><img src="images/oppomenu.png" alt=""></a></div>
            <div id="menuIcon"><a href="#xiaomi"><img src="images/xiaomiBrand.png" alt=""></a></div>
            <div id="menuIcon"><a href="#vivo"><img src="images/vivobrand.jpg" alt=""></a></div>
            <div id="menuIcon"><i style="font-size: 2.5em;cursor: pointer;" class='bx bx-dots-horizontal-rounded'></i></div>
        </section>

        <div class="bodyShop" onclick="hide()" style=" cursor: pointer;">                      
            <section class="iphone">
                <div class="iphone_header">                
                    <i class='bx bxs-shopping-bag' style="color: grey" id="flashSale_head-icon"></i>
                    <h3>Products</h3>
                </div>
                <div class="iphone_list">                  
                    <c:if test="${requestScope.data.isEmpty()}">                       
                        <h2 class="text-center" style="width: 100%;
                            color: #083425;
                            font-weight: bold;"> <i style="font-size: 40px" class='bx bx-bot'></i>Not found the name of product!!!</h2>                                                           
                    </c:if>
                    <c:forEach var="data" items="${requestScope.data}">
                        <div class="iphone_list__item">
                            <div class="flashSale_item-image">
                                <img
                                    src="${data.image01}";
                                    alt=""             
                                    />
                            </div>
                            <div class="iphone_list_item-content">
                                <h4>${data.productName}</h4>
                                <div class="iphone_list_item-content--body">
                                    <p>
                                        <del>${data.oldPrice}$</del>
                                        <span style="color: rgba(0, 0, 0, 0.619)">-${100-(Math.round(data.newPrice/data.oldPrice*100))}%</span>
                                    </p>
                                    <p>
                                        ${data.newPrice}$
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
                    </c:forEach>
                </div>
            </section>            
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
