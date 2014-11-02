<%-- 
    Document   : topbar
    Created on : Oct 5, 2014, 2:07:55 PM
    Author     : charlynchoo.2012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/foundation.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/vendor/modernizr.js"></script>
    </head>
    <body>
        <nav class="top-bar" data-topbar>
            <ul class="title-area">
                <li class="name">
                    <h1><font color="white" style="padding:10px;" ><b> HSEMR</b> </font><img src="./img/healthlablogo.jpg" height = "35"></h1>

                </li>
                <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
                <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
            </ul>
                
            <% 
                String nurseId = (String)session.getAttribute("login");
            %>
            <secion class="top-bar-section">
                <!-- Right Nav Section -->

                 <ul class="left">
                    <li><a href="viewCaseInformation.jsp"><span data-tooltip aria-haspopup="true" class="has-tip" title="<b>Scenario Name:</b> ECS UK Anaphylactic Reaction <br><b>Ward:</b> B  <b>Bed:</b> B3 <br><br>
                                          <b>Scenario Description: </b>This simulated clinical experience was designed to expose the learner to the patient who experiences an adverse reaction to blood transfusion. The patient is first day postoperative gynecological surgery who develops the complication of hypovolemia that requires a blood transfusion. The simulated clinical experience will automatically progress to anaphylaxis and subsequent shock states without prompt recognition of the transfusion reaction. With prompt recognition and intervention, the patient stabilises. The anaphylactic component of this simulated clinical experience may be used separately depending on learning objectives and may be overlaid on any patient or other scenario. This simulated clinical experience is intended for the learner in Semester VI.
                                          ">Case Information</span></a></li>
                    <li><a href="viewAllWardInformation.jsp">Ward Overview</a></li>
<!--                    <li><a href="#">Submission</a></li>-->
                  </ul>
                
                <ul class="right name"> 
                    <li><h1><font color="white" style="padding:10px;" >Welcome, <%= nurseId%>!</font></h1></li>
                    <li><a href="processLogout.jsp">Log Out</a></li>
                </ul>
            </secion>
        </nav>
    <script src="js/vendor/jquery.js"></script>
    <script src="js/foundation/foundation.js"></script>
    <script src="js/foundation/foundation.tooltip.js"></script> 
                    
    <script>
    $(document).foundation();
    </script>
    </body>
    

    
</html>
