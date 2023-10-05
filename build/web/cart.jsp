<%-- 
    Document   : cart
    Created on : Jul 17, 2023, 3:24:04 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Shop H2MAK</title>
        <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
        <link href="bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="bootstrap.css">
        <link rel="stylesheet" href="CSS/cart.css">

    <body>
        <!--header-->
        <%@include file="header.jsp" %> 
        <!--end header-->
        <!--Cart Page-->
        <div class="Back">
            <a href="productservlet" style="color: black;"><i class='bx bx-left-arrow'> Back to Home</i> </a>
        </div>
        <div class="row">
            <div class="small-container cart-page">
                <table class="item-table">
                    <tr class="table-header">
                        <th colspan="1">Product</th>
                        <th>Name</th>
                        <th>Quantity</th>
                        <th colspan="2">Price</th>
                        <th></th>
                    </tr>


                    <c:forEach var="c" items="${sessionScope.listCart}" varStatus="status">
                        <c:set var="cookie" value="${pageContext.request.cookies}"/>
                        <jsp:useBean id="list" class="model.Cart" />
                        <form action="addcart" method="post">
                            <tr>
                                <td class="text-center">
                                    <div class="item-img">
                                        <img src="${c.image01}" alt="">
                                    </div>
                                <td>
                                    <div class="item-title">
                                        <p>${c.productName}</p>
                                    </div>
                                </td>

                                <td colspan="2">
                                    <div class="quantity">                                     
                                        <p>${list.getCart(cookie.cart.value)[status.index].quantity}</p>
                                    </div>

                                </td>
                                <td>  
                                    <div class="price">${c.newPrice}</div>
                                </td>
                            <input name="id" value="${c.productID}" style="display: none;">
                            <td class="text-center">
                                <button class="delete-item"><i class='bx bx-trash' style="padding: .5rem;"></i></button>
                            </td>
                            </tr>
                        </form>
                    </c:forEach>
                    <tr>
                        <td colspan="7">
                            <div class="foot">
                                <h3>TOTAL :</h3>
                                <h3>${sessionScope.total}</h3>
                            </div>
                        </td>
                        </div>
                    </tr>
                    <tr>
                        <td colspan="4"></td>
                    </tr>
                    <tr>
                        <td class="payment text-center" colspan="7">
                            <a href="checkout_1.jsp">Purchase</a>
                        </td>
                    </tr>
                </table>

            </div>

        </div>

        <script src="Jquery.js"></script>
        <script src="bootstrap.min.js"></script>
        <script src="mycode.js"></script>
    </body>

</html>
