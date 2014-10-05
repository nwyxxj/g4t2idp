<%-- 
    Document   : processLogout
    Created on : Oct 5, 2014, 2:06:27 PM
    Author     : gladyskhong.2012
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
            session.invalidate();
            response.sendRedirect("viewMainLogin.jsp");
        %>
    </body>
</html>
