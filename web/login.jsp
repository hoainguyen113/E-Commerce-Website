<%-- 
    Document   : login
    Created on : Jul 19, 2023, 7:52:05 PM
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
        <link rel="stylesheet" href="CSS/login1.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body>
        <div style="margin-top: 75px;" id="main">
            <form style=" background-color: #c1c6b9;
                  color: white;" action="login" method="post">
                <h1>H2MAK</h1>

                <table>
                    <tr>
                        <td colspan="3">
                            <div class="title">
                                Enter your username
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"><input id="email" type="text" name="user" placeholder="At least 6 characters"/></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <div id= "title">
                                Enter your password
                            </div>

                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"><input type="password" name="pass" id="password" placeholder="At least 6 characters"/></td>
                    </tr>
                    <tr>
                        <td colspan="3" >
                            <div id= "title2" >             
                                <a style="color: white; text-decoration: none;" href="./forgot.jsp">Forgot your password?</a>
                            </div>                       
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <button type="submit" class="btn btn-primary">Log in</button>                   
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" class="text-center">
                            <div id="signup">
                                Don't have account yet? <a style="color: white; text-decoration: none;" href="./signup.jsp">Sign up</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <div id="or">
                                Or log in with
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td  colspan="3">
                            <div id="logo">
                                <img src="picture/apple.jpg" alt="">
                                <img src="picture/google.jpg" alt="">
                                <img src="picture/fb.jpg" alt="">
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
