<%-- 
    Document   : processLogin
    Created on : Oct 5, 2014, 1:54:14 PM
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
            String userid = request.getParameter("userid");
            String password = request.getParameter("password");

            if (userid.equals("nurse1") && password.equals("nurse1")) {
                session.setAttribute("login", userid);
                response.sendRedirect("viewAllWardInformation.jsp");
            } else {

        %>

        <jsp:forward page="viewMainLogin.jsp">
            <jsp:param name="errorMsg" value="Invalid username/password" />
        </jsp:forward>

        <%                
            }
        %>


    </body>
</html>
