<%-- 
    Document   : viewMainLogin
    Created on : Oct 5, 2014, 1:44:13 PM
    Author     : gladyskhong.2012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/foundation.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospital Ward Management System for NP Health Sciences</title>
        
    </head>
    <body>
        
        <body style="background-image:url(img/loginBackground_v2.jpg)"></body>
        <div class="row" style="padding-top: 30px;">

            <center>

                <h1>HSEMR</h1>

                <div class="large-centered large-4 columns" style = "padding-top:30px;">

                    <%

                        String msg = request.getParameter("errorMsg");
                        if (msg != null) {
                            %>
                            <font color="red"><%=msg%></font>
                            <%
                        }
                        if (request.getAttribute("errorMsg") != null) {
                            out.println(request.getAttribute("errorMsg"));
                        }

                    %>

                    <form action ="processLogin.jsp" method="post">
                        <table>
                            <tr>
                                <td>
                                    <label for="userid">User Id: </label>
                                </td>
                                <td>
                                    <input type ="text" id="userid" name="userid">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="password">Password: </label>
                                </td>
                                <td>
                                    <input type ="password" id="password" name="password">
                                </td>
                            </tr>
                        </table>


                        
                        <div style="margin-left:200px;">
                            <p>
                            <input type="submit" class="button small" value="Log in">
                         </p>
                        </div>
                       


                    </form>
                </div>
            </center>

        </div>


    </body>

</html>
