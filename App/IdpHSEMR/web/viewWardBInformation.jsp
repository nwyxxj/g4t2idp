<%-- 
    Document   : viewWardBInformation
    Created on : Oct 5, 2014, 2:49:24 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="protect.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/foundation.css" />
        <title>HS EMR - Ward B Information</title>
        <%@include file="topbar.jsp"%>
    </head>
    <body>
    <center>
        <h1>Ward B</h1>
        <table style ="border-spacing:80px 10px"><tr>
                <%

                    String[] wardList = new String[]{"Bed 1", "Bed 2", "Bed 3", "Bed 4", "Bed 5", "Bed 6"};

                    for (String ward : wardList) {
                        if (ward.equals("Bed 4")) { // create new row from 3rd row onwards
                            out.println("<tr>");
                        }
                        if (ward.equals("Bed 3")) {%>
                        <td height = "200" width ="150" bgcolor = WhiteSmoke><a href="viewPatientInformation.jsp"><font size="3"><b><%=ward%><br></b>Occupied<br>Tan Mei Mei<br>NRIC: S1234567J<br></font></a><br></td>
                            <%} else {%>
                        <td height = "200" width ="150" bgcolor = "92d400"><font size="3"> <b><%=ward%><br></b>Available<br></font></td>
                    <%}%>

                <%}


                %>
            </tr></table>

        <form>
            <input type="button" value="Back to Ward Overview" class="button tiny" onClick="window.location = 'viewAllWardInformation.jsp'"/>
        </form>

    </center>
</body>
</html>
