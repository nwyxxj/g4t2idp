<%-- 
    Document   : processMedication
    Created on : Oct 7, 2014, 1:49:55 PM
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

            String patientBarcode = request.getParameter("patientBarcode");
            String med1 = request.getParameter("med1");
            String med2 = request.getParameter("med2");

             if (patientBarcode != null && patientBarcode.equals("Q1W2E3")) {
                request.setAttribute("successMsg", "Medicine Administered");
            } else if (patientBarcode != null && !patientBarcode.equals("Q1W2E3")) {
                request.setAttribute("errorMsg", "Wrong patient barcode");
            } else if (med1 != null && !med1.equals("Q111")){
                request.setAttribute("errorMsg", "Wrong medicine barcode");
            } else if (med1 != null && !med1.equals("Q222")){
                request.setAttribute("errorMsg", "Wrong medicine barcode");
            }else {
                request.setAttribute("successMsg", "Medicine administered");
            }

            RequestDispatcher rd = request.getRequestDispatcher("/viewPatientInformation.jsp");
            session.setAttribute("active", "medication");
            rd.forward(request, response); 

        %>
    </body>
</html>
