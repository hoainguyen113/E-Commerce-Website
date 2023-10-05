<%-- 
    Document   : insert
    Created on : Jul 20, 2023, 9:34:23 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/function.css"/>
    </head>
    <body style="font-family: 'Aldrich', sans-serif;" >
    <center class="function" style="margin-top: 150px;">
        <h1 style="background: #122510;
            width: fit-content;
            color: #3c973c;
            box-shadow: 0 0 10px grey;
            border-radius: 2px;
            padding: 1rem;">ADD A PRODUCT</h1>
        <h3 color="red">${requestScope.mess}</h3>
        <div style="display: flex; justify-content: space-around; margin-top: 60px;">
            <form action="insert" method="post">
                <table style="border-spacing: 1rem;">
                    <tr>
                        <td>Enter Category ID: </td>
                        <td><input type="text" name="cid"></td>
                    </tr>
                    <tr>
                        <td>Enter New Product ID: </td>
                        <td><input type="text" name="productID">
                        </td>
                    </tr>
                    <tr>
                        <td>Enter New Product Name: </td>
                        <td><input type="text" name="productName"></td>
                    </tr>
                    <tr>
                        <td>Enter Price: </td>
                        <td><input type="text" name="price"></td>
                    </tr>
                    <tr>
                        <td>Enter Amount: </td>
                        <td><input type="number" name="available"></td>
                    </tr>
                    <tr><td><input type="submit" value="Submit"></td></tr>
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
