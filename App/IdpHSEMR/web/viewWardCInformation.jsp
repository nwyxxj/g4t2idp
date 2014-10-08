<%-- 
    Document   : viewWardCInformation
    Created on : Oct 5, 2014, 2:49:33 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="protect.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/foundation.css" />
        <title>HS EMR - Ward C Information</title>
        <%@include file="topbar.jsp"%>
    </head>
    <body>
    <center>
        <h1>Ward C</h1>
        <table style ="border-spacing:80px 10px"><tr>
                <%

                    String[] wardList = new String[]{"Bed 1", "Bed 2", "Bed 3", "Bed 4", "Bed 5", "Bed 6", "Bed 7", "Bed 8", "Bed 9", "Bed 10"};

                    for (String ward : wardList) {
                        if (ward.equals("Bed 6")) { // create new row from 3rd row onwards
                            out.println("<tr>");
                        }
                        if (ward.equals("Bed 3")) {%>
                 <td height = "200" width ="150" bgcolor = "92d400"><b><%=ward%></b><br>Available<br></td>
                            <%} else {%>
                <td height = "200" width ="150" bgcolor = "92d400"><b><%=ward%></b><br>Available<br></td>
                    <%}%>

                <%}


                %>
            </tr></table>
    </center>
</body>
</html>
