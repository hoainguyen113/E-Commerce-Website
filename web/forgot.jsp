<%-- 
    Document   : forgot
    Created on : Jul 19, 2023, 8:03:44 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-color: #565656;" lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="CSS/forgot.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body>
        <div style="margin-top: 75px;" id="main">
            <form  style=" background-color: #c1c6b9;
                   color: white;" action="forgot" method="post">
                <h1>H2MAK</h1>

                <table>
                    <tr>
                        <td colspan="3">
                            <div class="title">
                                Enter your email
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"><input id="email" type="text" name="email" placeholder="name@example@gmail.com"/></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <div id= "title">
                                Enter your username
                            </div>                      
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"><input type="text" name="user" id="password" placeholder="At least 6 characters"/></td>
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
                                <a style="color: white; text-decoration: none;" href="./login.jsp">Return to login</a>
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
                <img src="picture/ban.jpg" alt="">
            </div>   
        </div>
    </body>
</html>
