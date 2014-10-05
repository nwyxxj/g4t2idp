<%-- 
    Document   : viewPatientInformation
    Created on : Oct 5, 2014, 1:51:03 PM
    Author     : hpkhoo.2012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="protect.jsp"%>

<html>
    <script src="js/foundation.min.js"></script>
    <script src="js/vendor/jquery.js"></script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/foundation.css" />
        <title>Patient Information</title>
        <%@include file="topbar.jsp"%>
    </head>
        
    <body>
        <script src="js/foundation.min.js"></script>
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
                        <dd class="active"><a href="#admission">Admission Notes</a></dd>
                        <dd><a href="#reports">Reports</a></dd>
                        <dd><a href="#vital">Vital Signs</a></dd>
                        <dd><a href="#medication">Medication</a></dd>
                        <dd><a href="#multidisciplinary">Multidisciplinary Notes</a></dd>
                    </dl>

                    <div class="content active" id="admission">
                        <p>Content to go here</p>
                    </div>
                    <div class="content" id="reports">
                        <p>Content to go here</p>
                    </div>

                    <div class="content" id="vital">
                        <p>Content to go here</p>
                    </div>

                    <div class="content" id="medication">
                        <p>Content to go here</p>
                    </div>

                    <div class="content" id="multidisciplinary">
                        <p>Content to go here</p>
                    </div>
                </div>
            </div>
        </div>
    </body>
        <script>
            $(document).foundation();
        </script>
</html>
