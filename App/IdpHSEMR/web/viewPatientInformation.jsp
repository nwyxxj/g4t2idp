<%-- 
    Document   : viewPatientInformation
    Created on : Oct 5, 2014, 1:51:03 PM
    Author     : hpkhoo.2012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Information</title>
        <link rel="stylesheet" href="css/foundation.css" />
        <%@include file="topbar.jsp" %> 
    </head>
    <body>
        <br>
        <div align ="center">

            <div class="large-centered large-10 columns">

                <div class="panel">
                    <h5><b>Patient's Information</b></h5>
                    <span class="label">Name</span> Tan Ah Kao&nbsp;
                    <span class="label">NRIC</span> S1234567J&nbsp;
                    <span class="label">DOB</span> 04/03/1978&nbsp;
                    <span class="label">Gender</span> Male&nbsp;
                    <span class="label">Allergy</span> Bactrim&nbsp;
                    </p>
                </div></div>
            <div class="large-centered large-10 columns">
                <div class="tabs-content">
                    <dl class="tabs" data-tab>
                        <dd class="active"><a href="#panel1">Admission Notes</a></dd>
                        <dd><a href="#panel2">Reports</a></dd>
                        <dd><a href="#panel3">Vital Signs</a></dd>
                        <dd><a href="#panel4">Medication</a></dd>
                        <dd><a href="#panel5">Multidisciplinary Notes</a></dd>
                    </dl>

                    <div class="content active" id="panel1">
                        <p>Content to go here</p>
                    </div>
                    <div class="content" id="panel2">
                        <p>Content to go here</p>
                    </div>

                    <div class="content" id="panel3">
                        <p>Content to go here</p>
                    </div>

                    <div class="content" id="panel4">
                        <p>Content to go here</p>
                    </div>

                    <div class="content" id="panel5">
                        <p>Content to go here</p>
                    </div>
                </div>

            </div>
        </div>

        <script src="js/vendor/jquery.js"></script>
        <script src="js/foundation.min.js"></script>
        <script>
            $(document).foundation();
        </script>
    </body>
</html>
