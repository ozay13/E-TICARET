<%-- 
    Document   : loginsucces
    Created on : Aug 31, 2017, 12:06:37 PM
    Author     : ozaytunctan13
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <body>
        <style>

            div#div-container{
                position:fixed;
                margin-left: 0px;
                border-radius: 3px;
                background-color:green;
                width:100%;
                height: 70px;


            }

            ul.left{
                color: white;
                float: left;
            }
            ul.right{
                color: white;
                float: right;
            }
            ul.right li {
                padding: 10px;
                margin-right: 15px;
                display: block;
                float: right;
                position: relative;
            }


            ul.left li{
                padding:4px;
                display: block;
                float: left;
                position: relative; 
            }
            ul.left li a{
                height: 30px;
                color: white;
            }
            ul.right li a:hover{

                color:black;
            }
            ul.left li a:hover{
                color: black;
                text-decoration: none;
            }
            ul.right li a{
                height: 50px;
                width: 100px;
                color:white;
                text-decoration: none;
            }


            ul.left li input.ara{
                border-radius: 5px;
                margin-left:0px;
                width: 35px;
                height: 34px;
                color: green;
                background-image: url(${pageContext.servletContext.contextPath}/resources/images/ara.png);
            }
            ul.left li input.ara:hover{
                color: black;
            }
            ul.left li input.text-urunara:hover{
                background-color: orange;
                border-radius: 5px;
            }
            ul.left li input.text-urunara{
                width: 260px;
                height: 34px;

            }
            ul.right li a.giris_yapan{
                text-decoration: none;
            }
            ul.right li a.sepet::before{
                content:url(${pageContext.servletContext.contextPath}/resources/images/sepet.png);
                position:inherit;
                text-align: center;
                border-radius: 3px;

            }
            ul.right li a.cikis::before{
                content:url(${pageContext.servletContext.contextPath}/resources/images/cikis.png);
                position:inherit;
                text-align: center;
                border-radius: 3px;
            }
            div#content-ust-urun{
                position: fixed;
                margin-top: 150px;
                margin-left: 400px;
                width: 500px;


            }
            div.content-alt_urun{
                position: initial;
                height: 100px;

            }
            div.content-alt_urun:hover{
                background-color:orange;
            }
            div#content-ust-urun a.urun-detay{
                text-decoration:none;
                color: black;
            }
            div#title-menu{
                position: fixed;
                margin-top: 80px;
                margin-left: 350px;
                width: 400px;
            }




        </style>
        <div id="div-container">
            <div id="menu-bar">
                <ul class="left">
                    <li>BURADANSAT E-TICARET</li>
                    <li><a href="urunler">URUNLER</a></li>
                    <li class="li-text"><input class="text-urunara" placeholder="Aramak istediğiniz ürünü giriniz" type="text"/></li>
                    <li><input class="ara" type="submit" value="" /></li>
                    </li>
                </ul>
                <ul class="right">
                    <li><a href="cikis-yap" class="cikis"></a></li>
                    <li><a href="sepet" class="sepet">Sepet</a></li>
                    <li><a href="urunsat">Ürün Sat</a></li>
                    <li><a href="uye-kayit">Mağazam</a></li>
                    <li><a href="#"class="giris_yapan" >Hoşgeldin(<%=session.getAttribute("uname")%>)</a></li>
                </ul>

            </div>

        </div>

    <center>
        <c:if test="${state==true}">
            <div id="title-menu">
                <label>Ürün Açıklamasıyla Filtrele</label>
                <input type="text" name="txt_urun_name" style=" margin-left:40px;width: 500px; height: 30px; border-radius: 3px;"/>
                <hr style="width: 900px;margin-left: 40px"> 
            </div>

            <br><br>
        </c:if>
        <div id="content-ust-urun">

            <c:forEach items="${urun}" var="u">
                <c:if test="${u!=null}" >
                    <a  class="urun-detay" href="#">
                        <div class="content-alt_urun">
                            <td colspan="2">

                            <td><img src="${pageContext.servletContext.contextPath}/resources/images/klavye.jpg"/></td>
                            <td>&nbsp; &nbsp;&nbsp;<c:out value="${u.name}"/>&nbsp; &nbsp;&nbsp;<c:out value="${u.price}"/>&nbsp;&#8378;</td>

                            </td>
                        </div>
                    </a>
                    <hr>

                </c:if> 

            </c:forEach>
        </div>
    </center>
</body>

</html>
