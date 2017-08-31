<%-- 
    Document   : ansayfa.jsp
    Created on : Aug 30, 2017, 1:53:04 PM
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
        /**/
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
                padding: 10px;
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
            }
            ul.right li a{
               height: 30px;
                color:white;
            }
            ul.left li input.ara{
               border-radius: 5px;
               width: 60px;
               height: 36px;
               text-align: center;
               color: white;
               background-color: green;
            }
            ul.left li input.ara:hover{
               color: black;
            }
            ul.left li input.text-urunara:hover{
               background-color: orange;
               border-radius: 5px;
            }
            ul.left li input.text-urunara{
               width: 250px;
               height: 30px;
            }
            </style>
        <div id="div-container">
            <div id="menu-bar">
                <ul class="left">
                    <li>BURADANSAT E-TICARET</li>
                    <li><a href="#">URUNLER</a>&nbsp;&nbsp;&nbsp;&nbsp;<input class="text-urunara" placeholder="Aramak istediğiniz ürünü giriniz" type="text" style="width: 250px;height: 30px;"/>
                        <input class="ara" type="submit" value="Bul" />
                    </li>
                </ul>
                <ul class="right">
                    <li><a href="giris-yap">Giris Yap</a></li>
                    <li><a href="uye-kayit">Kayıt Ol</a></li>
                </ul>
            </div>
        </div>
    </body>
</html>
