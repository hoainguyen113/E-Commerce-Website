<%-- 
    Document   : update
    Created on : Jul 20, 2023, 10:17:01 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/style1.css"/>
    </head>
    <body>
    <center style="margin-top: 150px;">
        <h1 style="background: #122510;
            width: fit-content;
            color: #3c973c;
            box-shadow: 0 0 10px grey;
            border-radius: 2px;
            padding: 1rem;">UPDATE A PRODUCT</h1>
        <c:set var="c" value="${requestScope.product}"/>
        <div style="display: flex; justify-content: space-around; margin-top: 60px;">
            <form action="updateA" method="post">
                <table style="border-spacing: 1rem;">
                    <tr>
                        <td>Enter Category ID: </td>
                        <td><input type="text" readonly name="cid" value="${c.cid}"></td>
                    </tr>
                    <tr>
                        <td>Enter New Product ID: </td>
                        <td><input type="text" name="productID" value="${c.productID}">
                        </td>
                    </tr>
                    <tr>
                        <td>Enter New Product Name: </td>
                        <td><input type="text" name="productName" value="${c.productName}"></td>
                    </tr>
                    <tr>
                        <td>Enter Price: </td>
                        <td><input type="text" name="price" value="${c.newPrice}"></td>
                    </tr>
                    <tr>
                        <td>Enter Amount: </td>
                        <td><input type="number" name="available" value="${c.available}"></td>
                    </tr>
                    <tr><td><input style="padding: .3rem;" type="submit" value="Update"></td></tr>
                </table>
            </form>

                    <table style="text-align: center;" border="1">
                <tr>
                    <th>Category Name</th>
                    <th>Category ID</th>
                    <th>Product ID</th>
                </tr>
                <tr>
                    <td>Apple</td>
                    <td>1</td>
                    <td>A---</td>
                </tr>
                <tr>
                    <td>Samsung</td>
                    <td>2</td>
                    <td>S---</td>
                </tr>
                <tr>
                    <td>Oppo</td>
                    <td>3</td>
                    <td>O---</td>
                </tr>
                <tr>
                    <td>Xiaomi</td>
                    <td>4</td>
                    <td>X---</td>
                </tr>
                <tr>
                    <td>Vivo</td>
                    <td>5</td>
                    <td>V---</td>
                </tr>
            </table>
        </div>
    </center>
</body>
</html>
