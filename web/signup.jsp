<%-- 
    Document   : signup
    Created on : Jul 19, 2023, 8:00:47 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html style="background-color: #565656;" lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="CSS/signup.css">
    </head>
    <body>
        <div style="margin-top: 75px;"  id="main">
            <form  style=" background-color: #c1c6b9;
                   color: white;" action="signup">
                <h1>H2MAK</h1>
                <table>
                    <tr>           
                        <td colspan="2">
                            <div id="title">
                                Enter your email address</td>
                        </div>
                    </tr>
                    <tr>                   
                        <td colspan="2">
                            <input id="email" type="text" name="email" required placeholder="name@example@gmail.com"/>
                        </td>
                    </tr>
                    <tr>           
                        <td colspan="2">
                            <div id="title">
                                Enter your username</td>
                        </div>
                    </tr>
                    <tr>                   
                        <td colspan="2">
                            <input id="username" type="text" name="user" required placeholder="At least 6 characters"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div id="title">
                                Create password</td>
                        </div>                    
                    </tr>
                    <tr>   
                        <td colspan="2">
                            <input type="password" name="pass" id="Password" required placeholder="At least 6 characters"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div id="title">
                                Confirm password
                            </div>
                        </td>
                    </tr>
                    <tr>   
                        <td colspan="2">
                            <input type="password" name="cpass" id="Password" required placeholder="At least 6 characters"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <button type="submit" class="btn btn-danger">Sign up</button>
                        </td>
                    </tr>
                    <tr>   
                        <td colspan="2" class="text-center">
                            <div id="now">
                                Already have an account? <a style="color: white; text-decoration: none;" href="./login.jsp">Log in now</a>
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
