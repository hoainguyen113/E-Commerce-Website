<%-- 
    Document   : header
    Created on : Jul 19, 2023, 9:43:11 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="CSS/style1.css" rel="stylesheet" />
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
                        </div>
                        <span style="font-size:30px;cursor:pointer;" onclick="openNav()">&#9776;</span>
                    </div>

                    <div>
                        <a href="productservlet" class="header_logo" style="text-decoration: none;">H2MAK</a>
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
                                        <div style="color: grey;" class="header_search-list--item-content">
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
                <c:set var="c" value="${sessionScope.listCart}"/>
                <div class="header_infor-no1">
                    <i class="bx bx-cart"></i>
                    <a href="addcart">Cart (${c.size()})</a>
                </div>
                <div class="header_infor-no1">
                    <i class="bx bx-user"></i>
                    <a href="login.jsp">Hello thayHoai</a>
                </div>
            </div>
        </section>
    </body>
</html>
