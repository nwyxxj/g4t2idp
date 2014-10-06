<%-- 
    Document   : SaveMultidisciplinaryNotes
    Created on : Oct 7, 2014, 12:48:16 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <%
            //tutorialGroup, groupNames, notes
            String[] notesList = new String[3];
            String[] submittedNotes = new String[3];
            //String[] wardList = new String[]{"", "", ""};

            String tutorialGrp = request.getParameter("tutorialGrp");
            String grpName = request.getParameter("grpNames");
            String notes = request.getParameter("notes");

            if (request.getParameter("save") != null) {
                notesList[0] = tutorialGrp;
                notesList[1] = grpName;
                notesList[2] = notes;
                session.setAttribute("notesList", notesList);
                response.sendRedirect("viewPatientInformation.jsp");

            } else if (request.getParameter("submit") != null) {
//                notesList[0] = "";
//                notesList[1] = "";
//                notesList[2] = "";
                
                notesList[0] = tutorialGrp;
                notesList[1] = grpName;
                notesList[2] = notes;
                session.removeAttribute("notesList");
                session.setAttribute("submittedNotes", notesList);
                response.sendRedirect("viewPatientInformation.jsp");
            }


        %>
    </body>
</html>
