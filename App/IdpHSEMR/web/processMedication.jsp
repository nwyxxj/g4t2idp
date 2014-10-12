<%-- 
    Document   : processMedication
    Created on : Oct 7, 2014, 1:49:55 PM
    Author     : gladyskhong.2012
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.DateFormat"%>
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
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

             if (patientBarcode != null && !patientBarcode.equals("Q1W2E3")) {
                session.setAttribute("errorMsg", "Please scan the right patient barcode!");
            } else if (med1 != null && !med1.equals("Q111")){
                session.setAttribute("errorMsg", "Please scan the right medicine barcode!");
            } else if (med1 != null && !med2.equals("Q222")){
                session.setAttribute("errorMsg", "Please scan the right medicine barcode!");
            }else {
                session.setAttribute("successMsg", "Medicine administered");
                session.setAttribute("lastDate", dateFormat.format(new Date()));
            }

         //   RequestDispatcher rd = request.getRequestDispatcher("/viewPatientInformation.jsp");
            
             session.setAttribute("active", "medication");
            response.sendRedirect("viewPatientInformation.jsp");
          //rd.forward(request, response); 

        %>
    </body>
</html>
