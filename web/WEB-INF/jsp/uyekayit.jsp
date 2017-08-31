<%-- 
    Document   : uyekayit
    Created on : Aug 30, 2017, 3:27:49 PM
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
                background-color:green;
                width:100%;
                height: 70px;
                margin: 0px; 
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
                float: right;
                 margin-right: 15px;
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
             div#icerik-uye input.register{
                 margin-top: 20px;
               width: 200px;
               color:white;
               margin-left: 120px;
              border-radius: 5px;
              background-color: green;
                  
            }
            div#icerik-uye input.register:hover{
                
                 color: blue; 
            }
          
           div#icerik-uye input:hover{
               background-color: orange;
            }
          
        </style>
        <div id="div-container">
            <div id="menu-bar">
                <ul class="left">
                    <li>BURADANSAT E-TICARET</li>
                    <li><a href="#">URUNLER</a>&nbsp;&nbsp;&nbsp;&nbsp;<input class="text-urunara" placeholder="Aramak istediğiniz ürünü giriniz" type="text"/>
                        <input class="ara" type="submit" value="Bul" />
                    </li>
                </ul>
                <ul class="right">
                    <li><a href="giris-yap">Giris Yap</a></li>
                </ul>
            </div>
        </div>
        <div>

            <div id="icerik-uye">
                <form name ="form2" action="newUser" onsubmit="return formValidation();" method="POST">
                    
                    <table>
                        <tr><td></td><td><h1>Yeni Kullanıcı Kaydı</h1></td></tr>&nbsp;&nbsp;
                        <tr>
                            <td>Mağaza Adı:</td>
                            <td><input type="text" name="shopname" value=""required />
                        </tr>
                        <tr>
                            <td>Kullanıcı Adı:</td>
                            <td><input type="text" name="username" value=""required />
                        </tr>
                        <tr>
                            <td>Parola:</td>
                            <td><input type="password" name="password" value="" required/>
                        </tr>
                        <tr>
                            <td>Parola(Tekrar):</td>
                            <td><input type="password" name="uye_repassword" value="" required/>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td><input type="email" name="email" value="" required/></td>
                        </tr>
                        <tr>
                            <td>Ad:</td>
                            <td><input type="text" name="name" value="" required/>
                        </tr>
                        <tr>
                            <td>Soyad:</td>
                            <td><input type="text" name="surname" value="" required/></td>
                        </tr>
                        <tr>
                            <td>Telefon Numarası:</td>
                            <td><input type="telephone" name="telephone" pattern="[0-9]{4}[0-9]{3}[0-9]{2}[1-9]{2}"  required/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" class="register"  value="Register" /></td>
                        </tr>
                        <tr><td><p id="error"></p></td></tr>
                    </table>
                    
           
                </form>
            </div>
        </div>
        <script type="text/javascript" lang="tr">
 
function formValidation() {
    var parola;
    var reparola;
    parola=document.form2.password.value;
    reparola=document.form2.uye_repassword.value;

    if(parola.equals(reparola)){
        
        return true;
    }
    else{
        //document.getElementById("error").innerHtml="Lutfen parolar aynı giriniz.";
        window.alert("Parolar Eşleşmiyor!");
        return false;
    }
    return false;
}
            </script>
    </body>
</html>
