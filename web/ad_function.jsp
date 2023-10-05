<%-- 
    Document   : admin
    Created on : Jul 20, 2023, 9:21:46 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function doDelete(id) {
                if (confirm("are you sure to delete product with id= " + id)) {
                    window.location = "delete?id=" + id; //dai dien cho url hien tai cua trinh duyet
                }
            }
        </script>
        <link rel="stylesheet" href="CSS/function.css"/>
    </head>
    <body>
        <div class="function">         
            <center>
                <div>
                    <h4><a href="insert">ADD NEW PRODUCT</a></h4>
                    <table border="1" width="40%">
                        <tr>
                            <th>Product ID</th>
                            <th>Product Name</th>
                            <th>Quantity</th>
                            <th>Price</th>
                            <th>Action</th>
                        </tr>
                        <c:forEach items="${requestScope.list}" var="c">  

                            <tr>
                                <td>${c.productID}</td>
                                <td>${c.productName}</td>
                                <td>${c.available}</td>
                                <td>${c.newPrice}</td>
                                <td>
                                    <a href="updateA?productID=${c.productID}" >Update</a>
                                    <a href="#" onclick="doDelete('${c.productID}')" >Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </center>
        </div>
    </body>
</html>
