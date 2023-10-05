<%-- 
    Document   : pass
    Created on : Jul 19, 2023, 10:50:04 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="CSS/forgot.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body bgcolor="FFFFF0">
        <div id="main">
            <form action="update" method="post">
                <h1>H2MAK</h1>

                <table>
                    <tr>
                        <td colspan="3">
                            <div class="title">
                                Create new password
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"><input type="password" id="password" name="pass" placeholder="At least 6 characters"/></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <div id= "title">
                                Confirm new password
                            </div>                      
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"><input type="password" id="password" name="cpass" placeholder="At least 6 characters"/></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <div id= "title3">

                            </div>                      
                        </td>
                    </tr>
                    <tr>              
                        <td colspan="3">
                            <button type="submit" class="btn btn-primary">Confirm</button>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="3">
                            <div id="or">
                                <a href="./login.jsp">Return to login</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <h4 style="color: red; text-align: center;">${requestScope.mess}</h4>
                        </td>
                    </tr>
                    
                </table>
            </form>
            <div id="picture">
                <img src="picture/pexels-photo-235986.jpeg" alt="">
            </div>   
        </div>
    </body>
</html>
