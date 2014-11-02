<%-- 
    Document   : viewCaseInformation
    Created on : Oct 31, 2014, 10:51:50 PM
    Author     : weiyi.ngow.2012
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="protect.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/foundation.css" />
        <title>HS EMR - Ward Information</title>
        <%@include file="topbar.jsp"%>
    </head>
    <body>
    <center>
        <h1>Case Information</h1>
<div class="large-centered large-8 columns">
        <form action ="viewAllWardInformation.jsp" method="post">
        <table>
            <col width="30%">
            <col width="70%">

            <tr>
                <td>
                    <b>Scenario Name</b>
                </td>
                
                <td> 
                    ECS UK Anaphylactic Reaction 
                </td>
                </tr>
                <tr>
                    <td>
                        <b>Ward</b>
                    </td>
                    <td> 
                        B
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Bed</b>
                    </td>
                    <td>
                        B3
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Scenario Description </b>
                    </td>

                    <td>
                        This simulated clinical experience was designed to expose the learner to the patient who experiences an adverse reaction to blood transfusion. The patient is first day postoperative gynecological surgery who develops the complication of hypovolemia that requires a blood transfusion. The simulated clinical experience will automatically progress to anaphylaxis and subsequent shock states without prompt recognition of the transfusion reaction. With prompt recognition and intervention, the patient stabilises. The anaphylactic component of this simulated clinical experience may be used separately depending on learning objectives and may be overlaid on any patient or other scenario. This simulated clinical experience is intended for the learner in Semester VI.
                    </td>
                </tr>
                    
                    </table>
             <input type="submit" class="button expand" value="Proceed">
        </form>
</div>
    </center>


</body>
</html>
