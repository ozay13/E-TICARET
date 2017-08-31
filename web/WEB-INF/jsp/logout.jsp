<%-- 
    Document   : logout.jsp
    Created on : Aug 30, 2017, 12:49:10 PM
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
        <%

            HttpSession ot = request.getSession();
            String name = (String) ot.getAttribute("uname");
            out.print(name);
            if (ot != null) {
                ot.invalidate();
            }
            response.sendRedirect("giris-yap");
        %>
        <p>Oturum Kapatıldı.</p>
    </body>
</html>
