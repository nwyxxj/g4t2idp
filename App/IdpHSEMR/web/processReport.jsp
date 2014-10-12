<%-- 
    Document   : processReport
    Created on : Oct 7, 2014, 8:23:57 AM
    Author     : weiyi.ngow.2012
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>

<%
    String[] reportNames = request.getParameterValues("report");
    String locationHeart = request.getParameter("locationHeart");
    String locationXray = request.getParameter("locationXray");

   // List<String> retrieved = (List<String>) session.getAttribute("reports");
   // List<String> oldReports = (List<String>) session.getAttribute("reports");
    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    HashMap hm = (HashMap<String,Date>) session.getAttribute("reports");
    boolean firstTime=true;                                                    
    if (hm == null || hm.keySet().size() == 0) {
        hm = new HashMap<String,Date>();
    }

    if (reportNames != null && reportNames.length > 0 && firstTime) {
        for (String reportName : reportNames) {
//            String compareName = "";
//            if (reportName.equals("heartReport")) {
//                compareName = locationHeart;
//            }
//            if (reportName.equals("chemistryReport")) {
//                compareName = locationChemistry;
//            }
           // int identical = 0;
//            Set keys = hm.keySet();
//            Iterator iter = keys.iterator();
//            while (iter.hasNext()) {
                //String fileName = (String)iter.next();
//                if (compareName.equals(fileName)) {
//                    identical++;
//                    if (reportName.equals("heartReport")) {
//                        Date date = (Date)hm.get(fileName);
//                        
//                }
//                if (reportName.equals("chemistryReport")) {
//                    hm.put(locationChemistry,dateFormat.format(new Date()));
////                    dateGenerated.add(new Date());
////                    retrieved.add(locationChemistry);
//                }
//                }
//            }
           // if (identical == 0) {
                if (reportName.equals("heartReport")) {
                    hm.put(locationHeart,dateFormat.format(new Date()));
//                    dateGenerated.add(new Date());
//                    retrieved.add(locationHeart);
                }
                if (reportName.equals("xrayReport")) {
                    hm.put(locationXray,dateFormat.format(new Date()));
//                    dateGenerated.add(new Date());
//                    retrieved.add(locationChemistry);
                }
                
            }
        //}
        session.setAttribute("reports", hm);
     //   session.setAttribute("old", oldReports);
       session.setAttribute("active", "reports");
       session.setAttribute("updated", "true");
//        RequestDispatcher rd = request.getRequestDispatcher("viewPatientInformation.jsp");
//
//        rd.forward(request, response);
        response.sendRedirect("viewPatientInformation.jsp");

    } else {
        session.setAttribute("active", "reports");
       session.setAttribute("updated", null);
       session.setAttribute("reportError", "No report(s) selected for retrieval.");
        
        response.sendRedirect("viewPatientInformation.jsp");
    }

%>
