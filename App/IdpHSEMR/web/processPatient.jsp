<%-- 
    Document   : processPatient
    Created on : Oct 16, 2014, 10:59:51 AM
    Author     : weiyi.ngow.2012
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%

            String barcode1 = request.getParameter("barcode1");
            String barcode2 = request.getParameter("barcode2");
            
            Random r = new Random();
            int min = 1; 
            int max = 2; 
            int randomNumber = r.nextInt(max-min)+min;
            String currentBarcode = (String) session.getAttribute("patientBarcode");
            if (currentBarcode != null && currentBarcode.equals(barcode1)) {
                session.setAttribute("patientBarcode", barcode2);
            } else if(randomNumber == 1) { 
                session.setAttribute("patientBarcode", barcode1);
            } else { 
                session.setAttribute("patientBarcode", barcode2);
            }
            
             if (session.getAttribute("patientBarcode") != null && randomNumber == 2) {
                session.setAttribute("successMsg", "✓");
            }else {
                session.setAttribute("errorPatient", "Please scan the right patient barcode");
            }

         //   RequestDispatcher rd = request.getRequestDispatcher("/viewPatientInformation.jsp");
            
             session.setAttribute("active", "medication");
            response.sendRedirect("viewPatientInformation.jsp");
          //rd.forward(request, response); 

        %>
    </body>
</html>
