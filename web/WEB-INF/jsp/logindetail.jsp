<%-- 
    Document   : logindetail
    Created on : Aug 30, 2017, 12:26:23 PM
    Author     : ozaytunctan13
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <style>
            body{
                background-color: activecaption;
                
            }
        </style>
    <center>
        <h1>Giriş Bilgileri</h1>
        <p>Kullanıcı Adı:${login.username}<br>Şifreniz:${login.password}<br></p>
        <center>
            <p>${oturum}<br><a href="cikis-yap">Logout...</a> </p>
    </body>
</html>
