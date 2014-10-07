<%-- 
    Document   : processVitalSign
    Created on : Oct 5, 2014, 4:57:09 PM
    Author     : hpkhoo.2012
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Process Vital Signs</title>
    </head>
    <body>

        <%
            boolean tempCheck = true;
            boolean rrCheck = true;
            boolean hrCheck = true;
            boolean bpCheck= true;
         
            //String checkThatItHasComeToThisPage = request.getParameter("check");

            String temp = request.getParameter("temperature");
            String RR = request.getParameter("RR");
            String HR = request.getParameter("HR");
            String BP = request.getParameter("BP");
            String SPO = request.getParameter("SPO");
            String intake = request.getParameter("intake");
            String output = request.getParameter("output");
           
            //Validation for temperature
            if (temp.indexOf('.') != -1) {
                int decimals = temp.length() - temp.indexOf('.') - 1;
                if (decimals > 2) {
                    tempCheck = false;
                }
            }
            double tempDouble = 0;
            try {
                tempDouble = Double.parseDouble(temp);
            } catch (NumberFormatException e) {
                tempCheck = false;
            }
            if (tempDouble > 100) {
                tempCheck = false;
            }

            //Validation for RR
            try {
                int rrInt = Integer.parseInt(RR);
            } catch (NumberFormatException e) {
                rrCheck = false;
            }

            //Validation for HR
            try {
                int hrInt = Integer.parseInt(HR);
            } catch (NumberFormatException e) {
                hrCheck = false;
            }
            
             //Validation for BP 44/555
            if (BP.indexOf('/') != -1) {
                int value = BP.length() - BP.indexOf("/") - 1;
                if (BP.indexOf("/") >= 3) {
                    bpCheck = false;
                }
            }

            

            if (tempCheck) {
                request.setAttribute("temp", temp);
            } else {
                request.setAttribute("tempError", "Temperature- Please enter a valid Temp. e.g) 0.00-100.00ºC");
                request.setAttribute("temp", temp);
                request.setAttribute("rr", RR);
                request.setAttribute("hr", HR);
                request.setAttribute("bp", BP);
                
               
            }

            if (rrCheck) {
                request.setAttribute("rr", RR);
            } else {
               request.setAttribute("rrError", "Respiratory Rate- Please enter a valid RR.");
               request.setAttribute("temp", temp);
                request.setAttribute("rr", RR);
                request.setAttribute("hr", HR);
                request.setAttribute("bp", BP);
                
            }

            if (hrCheck) {
                request.setAttribute("hr", HR);
            } else {
                 request.setAttribute("hrError", "Heart Rate- Please enter a valid HR.");
                 request.setAttribute("temp", temp);
                request.setAttribute("rr", RR);
                request.setAttribute("hr", HR);
                request.setAttribute("bp", BP);
                
            }
            
            if(bpCheck) {
                request.setAttribute("bp", BP);
            }else {
                request.setAttribute("bpError", "Blood Pressure- Please enter a valid BP");
                request.setAttribute("temp", temp);
                request.setAttribute("rr", RR);
                request.setAttribute("hr", HR);
                request.setAttribute("bp", BP);
                
            }
           
            
            request.setAttribute("spo", SPO);
            request.setAttribute("intake", intake);
            request.setAttribute("output", output);
            request.setAttribute("flag", "true");
            request.setAttribute("first", "false");
            
            if(bpCheck && hrCheck && rrCheck && tempCheck){
                request.setAttribute("dateTime", new Date());
            }
            session.setAttribute("active", "vital");
            
           RequestDispatcher rd = request.getRequestDispatcher("/viewPatientInformation.jsp");
            rd.forward(request, response); 
//            RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/viewPatientInformation.jsp");
//            dispatch.forward(request, response);
        %> 

    </body>
</html>
