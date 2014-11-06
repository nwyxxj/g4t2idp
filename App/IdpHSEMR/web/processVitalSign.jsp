<%-- 
    Document   : processVitalSign
    Created on : Oct 5, 2014, 4:57:09 PM
    Author     : hpkhoo.2012
--%>

<%@page import="java.io.BufferedWriter"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.io.File"%>
<%@page import="java.awt.List"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="au.com.bytecode.opencsv.CSVWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
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
            boolean bpCheck = true;

            //String checkThatItHasComeToThisPage = request.getParameter("check");
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
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
                session.setAttribute("temp", temp);
            } else {
                session.setAttribute("tempError", "Temperature- Please enter a valid Temp. e.g) 0.00-100.00ºC");
                session.setAttribute("temp", temp);
                session.setAttribute("rr", RR);
                session.setAttribute("hr", HR);
                session.setAttribute("bp", BP);

            }

            if (rrCheck) {
                session.setAttribute("rr", RR);
            } else {
                session.setAttribute("rrError", "Respiratory Rate- Please enter a valid RR.");
                session.setAttribute("temp", temp);
                session.setAttribute("rr", RR);
                session.setAttribute("hr", HR);
                session.setAttribute("bp", BP);

            }

            if (hrCheck) {
                session.setAttribute("hr", HR);
            } else {
                session.setAttribute("hrError", "Heart Rate- Please enter a valid HR.");
                session.setAttribute("temp", temp);
                session.setAttribute("rr", RR);
                session.setAttribute("hr", HR);
                session.setAttribute("bp", BP);

            }

            if (bpCheck) {
                session.setAttribute("bp", BP);
            } else {
                session.setAttribute("bpError", "Blood Pressure- Please enter a valid BP");
                session.setAttribute("temp", temp);
                session.setAttribute("rr", RR);
                session.setAttribute("hr", HR);
                session.setAttribute("bp", BP);

            }

            session.setAttribute("spo", SPO);
            session.setAttribute("intake", intake);
            session.setAttribute("output", output);
            session.setAttribute("flag", "true");
            session.setAttribute("first", "false");

            if (bpCheck && hrCheck && rrCheck && tempCheck) {
                session.setAttribute("dateTime", dateFormat.format(new Date()));

                String date = dateFormat.format(new Date());
                
                try {
                    String fileLocation = (getServletContext().getRealPath("") + File.separator + "temperature.txt").replace("build\\", ""); 
                    
                    PrintStream writer = new PrintStream(
                    new FileOutputStream(fileLocation.replace("\\", "/"), true));
                    //new FileOutputStream(".\reports\temperature.txt", true));
                    writer.print(date +",40," + temp + ",35\n");
                    writer.close();
                  } catch (IOException e) {
                    e.printStackTrace();
                  }
            }

            session.setAttribute("active", "vital");

//            RequestDispatcher rd = request.getRequestDispatcher("/viewPatientInformation.jsp");
//            rd.forward(request, response); 
            response.sendRedirect("viewPatientInformation.jsp");
//            RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/viewPatientInformation.jsp");
//            dispatch.forward(request, response);
%> 

    </body>
</html>
