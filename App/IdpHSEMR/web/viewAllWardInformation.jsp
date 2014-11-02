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
                        <td height = "200" width ="150" bgcolor = WhiteSmoke> <b><center><a href="viewWardAInformation.jsp"><font size="5">Ward A </font></a></center></b><br></td>
                    <%} else if (ward.equals("Ward B")) {%>
                        <td height = "200" width ="150" bgcolor = WhiteSmoke> <b><center><a href="viewWardBInformation.jsp"><font size="5">Ward B</font></a></center></b><br></td>
                    <%} else {%>
                        <td height = "200" width ="150" bgcolor = WhiteSmoke> <b><center><a href="viewWardCInformation.jsp"><font size="5">Ward C</font></a></center></b><br></td>
                    <%}%>

                <%}


                %>
            </tr></table>
    </center>


</body>
</html>
