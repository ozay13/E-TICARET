<%-- 
    Document   : home
    Created on : Aug 30, 2017, 11:35:33 AM
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
                display: block;
                 margin-right: 15px;
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
            div#icerik-uye{
               
               position: fixed;
               top:90px;
               margin-left: 400px;
               background-color:white;
               border-radius: 4px;
            }
              div#icerik-uye input{
               padding: 10px;
               width: 400px;
            }
            div#icerik-uye input:hover{
               background-color: orange;
            }
             div#icerik-uye input.giris{
                 margin-top: 20px;
                width: 130px;
               color:white;
               margin-left: 120px;
              border-radius: 5px;
              background-color: green;
                  
            }
            div#icerik-uye input.giris:hover{
                
                 color: black; 
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
                    
                    <li><a href="uye-kayit">Kayıt Ol</a></li>
                </ul>
            </div>
        </div>
        <div>
            <div id="icerik-uye">
           
        <form name="form1" id="fr" action="loginsucces" onsubmit="return loginControl()" method="POST" >
         
            <table>
                <th>Login Giriş Ekranı</th>
                <tr>
                    <td><input type="text" name="username" placeholder="Kullanıcı Adı" /></td>
                </tr>
                <tr>

                    <td><input type="password" name="password" placeholder="Parola" /></td>
                </tr>
                <tr >
                    <td><input type="submit" class="giris" value="Login" /></td>
                </tr>
                <tr>
                 
                </tr>
            </table>
        </form>
         </div>
        </div>

        <script>
           function loginControl(){
               var uname = document.form1.username.value;
               var pass= document.form1.password.value;
               if(uname=="" || pass==""){
                   window.alert("Lutfen gerekli alanları doldurunuz");
                   return false;
               }
               return true;
           }
        </script>
    </body>
</html>
