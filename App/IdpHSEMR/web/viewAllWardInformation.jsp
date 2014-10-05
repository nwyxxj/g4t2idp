<%-- 
    Document   : viewWardInformation
    Created on : Oct 5, 2014, 2:33:33 PM
    Author     : Administrator
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="protect.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/foundation.css" />
        <title>HS EMR - Ward Information</title>
        <%@include file="topbar.jsp"%>
    </head>
    <body>
    <center>
        <h1>Please select a ward</h1>


        <table style ="border-spacing:80px 10px"><tr>
                <%

                    //String[] wards = {"Ward A", "Ward B", "Ward C"};
                    String[] wardList = new String[]{"Ward A", "Ward B", "Ward C"};

                    for (String ward : wardList) {
                        if (ward.equals("Ward A")) {%>
                <td height = "200" width ="150" bgcolor = WhiteSmoke> <b><a href="viewWardAInformation.jsp">Ward A</a></b><br></td>
                    <%} else if (ward.equals("Ward B")) {%>
                <td height = "200" width ="150" bgcolor = WhiteSmoke> <b><a href="viewWardBInformation.jsp">Ward B</a></b><br></td>
                    <%} else {%>
                <td height = "200" width ="150" bgcolor = WhiteSmoke> <b><a href="viewWardCInformation.jsp">Ward C</a></b><br></td>
                    <%}%>

                <%}


                %>
            </tr></table>
    </center>


</body>
</html>
