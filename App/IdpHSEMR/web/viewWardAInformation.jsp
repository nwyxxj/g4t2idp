<%-- 
    Document   : viewWardAInformation
    Created on : Oct 5, 2014, 2:46:03 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="protect.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/foundation.css" />
        <title>HS EMR - Ward A Information</title>
        <%@include file="topbar.jsp"%>
    </head>
    <body>
    <center>
        <h1>Ward A</h1>
        <table style ="border-spacing:80px 10px"><tr>
                <td height = "200" width ="150" bgcolor = "92d400"> <font size="3"><b>Bed 1</b><br>Available</font></td>
            </tr></table>
        <form>
            <input type="button" value="Back to Ward Overview" class="button tiny" onClick="window.location = 'viewAllWardInformation.jsp'"/>
        </form>
    </center>
</body>
</html>
