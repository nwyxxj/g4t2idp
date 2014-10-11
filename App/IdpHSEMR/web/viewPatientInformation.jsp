<%-- 
    Document   : viewPatientInformation
    Created on : Oct 5, 2014, 1:51:03 PM
    Author     : hpkhoo.2012
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="protect.jsp"%>

<html>
    <script src="js/foundation.min.js"></script>
    <script src="js/vendor/jquery.js"></script>
    <script src="js/vendor/modernizr.js"></script>
   
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/foundation.css" />
        <script type="text/javascript" src="js/dygraph-combined.js"></script>                         
           
        <title>Patient Information</title>
        <%@include file="topbar.jsp"%>
         
    </head>

    <body>
        <script src="js/foundation.min.js"></script>
                
        <br>
        <%            String active = active = (String) session.getAttribute("active");

        %>
        <div align ="center">

            <div class="large-centered large-10 columns">



                <div class="panel">
                    <h5><b>Patient's Information</b></h5>
                    <span class="label">Name</span> Tan Mei Mei&nbsp;
                    <span class="label">NRIC</span> S1234567J&nbsp;
                    <span class="label">DOB</span> 04/03/1978&nbsp;
                    <span class="label">Gender</span> Female&nbsp;
                    <span class="label">Allergy</span> Bactrim&nbsp;
                    </p>
                </div></div>
            <!-- Error Message -->
            <div class="large-centered large-10 columns">
                <%String updated = (String) session.getAttribute("updated");

                    if (updated != null && !updated.equals("")) {
                %>
                <div data-alert class="alert-box success radius">
                    Reports updated successfully! Please check under existing report.
                    <a href="#" class="close">&times;</a>
                </div>
                <%
                    } else {
                        out.println("");
                    }

                    //check for success message                   
                    String[] notesList = (String[]) session.getAttribute("notesList");
                    String[] submittedNotes = (String[]) session.getAttribute("submittedNotes");
                    if (submittedNotes != null) {
                %>
                <div data-alert class="alert-box success radius">
                    Notes successfully added!
                    <a href="#" class="close">&times;</a>
                </div>
                <%
                    }%>

                <%
                    String successMsg = (String) session.getAttribute("successMsg");
                    String errorMsg = errorMsg = (String) session.getAttribute("errorMsg");
                    if (errorMsg == null && successMsg != null) {
                %>
                <div data-alert class="alert-box success radius">
                    Patient administered successfully!
                    <a href="#" class="close">&times;</a>
                </div>
                <%
                    } 
                    
                    if (errorMsg != null) {
                %>
                <div data-alert class="alert-box alert radius"> 
                        Please scan the correct bar codes. 
                        <a href="#" class="close">&times;</a>
                </div>
                <%
                    }
                    
                %>

                <%
                    String tempError = (String) session.getAttribute("tempError");
                    String rrError = (String) session.getAttribute("rrError");
                    String hrError = (String) session.getAttribute("hrError");
                    String bpError = (String) session.getAttribute("bpError");
                    String first_time = (String)session.getAttribute("first");

                    if (tempError != null) {
                %>
                <div data-alert class="alert-box alert radius"> 
                    Temperature- Please enter a valid Temp. e.g) 0.00-100.00ºC.
                    <a href="#" class="close">&times;</a>
                </div>
                <%
                    } else if (rrError != null){
                     %>
                <div data-alert class="alert-box alert radius"> 
                    Respiratory Rate- Please enter a valid RR.
                    <a href="#" class="close">&times;</a>
                </div>
                <%
                    }else if (hrError != null){
                     %>
                <div data-alert class="alert-box alert radius"> 
                    Heart Rate- Please enter a valid HR.
                    <a href="#" class="close">&times;</a>
                </div>
                <%
                    }else if (bpError != null){
                     %>
                <div data-alert class="alert-box alert radius"> 
                   Blood Pressure- Please enter a valid BP.
                   <a href="#" class="close">&times;</a>
                </div>
                <%
                    }else if (first_time != null){
                     %>
             
                    <div data-alert class="alert-box success radius">Vital signs updated successfully!
                        <a href="#" class="close">&times;</a>
                        </div>
                <%
                    }
                %>

                <!-- Error Message end-->

                <div class="tabs-content">
                    <dl class="tabs" data-tab>
                        <dd class="<% if (active == null || active.equals("") || active.equals("admission")) {
                                out.println("active");
                            } else {
                                out.println("");
                            } %>" ><a href="#admission">Admission Notes</a></dd>
                        <dd class="<% if (active != null && active.equals("reports")) {
                                out.println("active");
                            } else {
                                out.println("");
                            } %>"><a href="#reports">Reports</a></dd>
                        <dd class="<% if (active != null && active.equals("vital")) {
                                out.println("active");
                            } else {
                                out.println("");
                            } %>"><a href="#vital">Vital Signs</a></dd>
                        <dd class="<% if (active != null && active.equals("medication")) {
                                out.println("active");
                            } else {
                                out.println("");
                            } %>"><a href="#medication">Medication</a></dd>
                        <dd class="<% if (active != null && active.equals("multidisciplinary")) {
                                out.println("active");
                            } else {
                                out.println("");
                            } %>"><a href="#multidisciplinary">Multidisciplinary Notes</a></dd>
                    </dl>

                    <div class="<% if (active == null || active.equals("") || active.equals("admission")) {
                            out.println("content active");
                        } else {
                            out.println("content");
                        } %>" id="admission">

                        <p style="margin-left:1em; margin-right:1em; text-align:justify;">A recently divorced, 36 year-old female, was admitted to the hospital for abdominal hysterectomy with bilateral due to large uterine fibroids. 
                            Over the years, she had increasing pain. She was advised to seek surgical intervention, she elected to wait due to personal issues. 
                            During the period of postponing, she required two outpatient blood transfusion. 
                            Her lab values included haemoglobin of 8.4ml and haematocrit of 32%. 
                            Night nurse reports that patient slept in earlier part of shift, but awake and complain of discomfort since 0430 hours.</p>
                    </div>
                    <div class="<% if (active != null && active.equals("reports")) {
                            out.println("content active");
                        } else {
                            out.println("content");
                        } %>" id="reports">

                        <div class="row large-10 columns" align="left"> 
                            <div class="small-10 columns" align="left"> 
                                <h1>Retrieve Investigation Report</h1>


                                <form  action = "processReport.jsp" method = "get"> 

                                    <label><input type="checkbox" name="report" value="heartReport"> Heart Report<br></label>
                                    <label> <input type="checkbox" name="report" value="xrayReport"> Xray Report</label><br>
                                    <input type="submit" class="tiny button" value="Retrieve Report"/>   
                                    <input type="hidden" name="locationXray" value="xray.jpg">
                                    <input type="hidden" name="locationHeart" value="heartReport.png">
                                </form>


                                <%
                                    HashMap<String, Date> reportsRetrieved = (HashMap<String, Date>) session.getAttribute("reports");

                                    if (reportsRetrieved
                                            != null && reportsRetrieved.size()
                                            > 0) {
                                %>

                                <h1>Existing Report</h1>
                                <table>
                                    <tr>
                                        <td>Report Name</td>
                                        <td>Report Retrieved On</td>
                                    </tr>
                                    <%
                                        Set keys = reportsRetrieved.keySet();
                                        Iterator iter = keys.iterator();
                                        while (iter.hasNext()) {
                                            String fileName = (String) iter.next();
                                            String path = "reports/" + fileName;
                                    %>
                                    <tr>
                                        <td><a href="<%=path%>"><%=fileName%></a></td>
                                        <td><%=reportsRetrieved.get(fileName)%></td>
                                    </tr>            

                                    <%
                                            }

                                        }
                                        session.removeAttribute("updated");
                                        session.removeAttribute("active");
                                        // else {
                                        //      out.println("No existing reports yet.");
                                        //    }
                                    %>

                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="<% if (active != null && active.equals("vital")) {
                            out.println("content active");
                        } else {
                            out.println("content");
                        } %>" id="vital">
                                          <form action="processVitalSign.jsp">
                        <table border = "0">   
                            <tr><td></td>
                                <% String dateTime = null;
                                    
                                    dateTime = (String) session.getAttribute("dateTime");
                                %>
                                <td style="width:270px;"><b>Last Updated :<br><% if (dateTime == null) {
                                        out.println("2014/10/08 16:35:21");
                                    } else {
                                        out.println(dateTime);
                                    }%> </b></td> 

                                <td><b>Current</b></td>
                            </tr> 
                                    
                           
                               
                                <%
                                    String temp = "37.0";
                                    String rr = "20";
                                    String hr = "108";
                                    String bp = "88/55";
                                    String spo = "92% with O2";
                                    String intake = "fruits";
                                    String output = "50";
                                    String tempErrorMsg = "";
                                    String rrErrorMsg = "";
                                    String hrErrorMsg = "";
                                    String bpErrorMsg = "";
                                    String temp2 = "";
                                    String rr2 = "";
                                    String hr2 = "";
                                    String bp2 = "";
                                    String spo2 = "";
                                    String intake2 = "";
                                    String output2 = "";
                                    String firstTime = "true";
                                    boolean check = false;

                                    tempError = (String) session.getAttribute("tempError");
                                    rrError = (String) session.getAttribute("rrError");
                                    hrError = (String) session.getAttribute("hrError");
                                    bpError = (String) session.getAttribute("bpError");
                                    String checking = (String) session.getAttribute("flag");
                                    firstTime = (String) session.getAttribute("first");
                                    if (checking != null && checking.equals("true")) {
                                        check = true;
                                    }

                                    if (firstTime != null && firstTime.equals("false")) {
                                        firstTime = "false";
                                    } else {
                                        firstTime = "true";
                                    }

                                    if (tempError == null && rrError == null && hrError == null && bpError == null && check) {

                                        temp = (String) session.getAttribute("temp");
                                        rr = (String) session.getAttribute("rr");
                                        hr = (String) session.getAttribute("hr");
                                        bp = (String) session.getAttribute("bp");
                                        spo = (String) session.getAttribute("spo");
                                        intake = (String) session.getAttribute("intake");
                                        output = (String) session.getAttribute("output");
                                        //out.println("<font color='green'>" + "You have updated successfully!" + "</font>");
                                    } else {
                                        if (tempError != null) {
                                            tempErrorMsg = tempError;
                                            rr2 = (String) session.getAttribute("rr");
                                            hr2 = (String) session.getAttribute("hr");
                                            bp2 = (String) session.getAttribute("bp");
                                            spo2 = (String) session.getAttribute("spo");
                                            intake2 = (String) session.getAttribute("intake");
                                            output2 = (String) session.getAttribute("output");
                                            temp2 = (String) session.getAttribute("temp");
                                        }

                                        if (rrError != null) {
                                            rrErrorMsg = rrError;
                                            temp2 = (String) session.getAttribute("temp");
                                            hr2 = (String) session.getAttribute("hr");
                                            bp2 = (String) session.getAttribute("bp");
                                            spo2 = (String) session.getAttribute("spo");
                                            intake2 = (String) session.getAttribute("intake");
                                            output2 = (String) session.getAttribute("output");
                                        }

                                        if (hrError != null) {
                                            hrErrorMsg = hrError;
                                            temp2 = (String) session.getAttribute("temp");
                                            rr2 = (String) session.getAttribute("rr");

                                            bp2 = (String) session.getAttribute("bp");
                                            spo2 = (String) session.getAttribute("spo");
                                            intake2 = (String) session.getAttribute("intake");
                                            output2 = (String) session.getAttribute("output");
                                        }

                                        if (bpError != null) {
                                            bpErrorMsg = bpError;
                                            temp2 = (String) session.getAttribute("temp");
                                            rr2 = (String) session.getAttribute("rr");
                                            hr2 = (String) session.getAttribute("hr");

                                            spo2 = (String) session.getAttribute("spo");
                                            intake2 = (String) session.getAttribute("intake");
                                            output2 = (String) session.getAttribute("output");
                                        }
                                    }

                                   
                                    if (firstTime.equals("false")) {
                               
                                            session.setAttribute("first", "true");
                                            session.removeAttribute("first");
                                        }
                                    
                                %>
                                
                                
                                <tr><td><b>Temperature (ºC)</b> <a href="#" data-reveal-id="chart"> View Chart</a></td>
                                    <td><%=temp%></td>
                                    <td><input type="text" name ="temperature" style="width:250px" value= "<% if (check == true) {
                                            out.println(temp2);
                                        } else {
                                            out.println("");
                                        }%>" required /></td></tr> 
                                <tr><td><b>Respiratory Rate</b></td>
                                    <td><%=rr%></td>
                                    <td><input type="text" name = "RR" style="width:250px" value="<% if (check == true) {
                                            out.println(rr2);
                                        } else {
                                            out.println("");
                                        }%>" required/></td></tr> 
                                <tr><td><b>Heart Rate</b></td>
                                    <td><%=hr%></td>
                                    <td><input type="text" name ="HR" style="width:250px" value="<% if (check == true) {
                                            out.println(hr2);
                                        } else {
                                            out.println("");
                                        }%>" required/></td></tr>
                                <tr><td><b>Blood Pressure</b></td>
                                    <td><%=bp%></td>
                                    <td><input type="text" name ="BP" style="width:250px" value="<% if (check == true) {
                                            out.println(bp2);
                                        } else {
                                            out.println("");
                                        }%>" required/></td></tr>
                                <tr><td><b>SPO (%)</b></td>
                                    <td><%=spo%></td>
                                    <td><input type="text" name ="SPO" style="width:250px" value="<% if (check == true) {
                                            out.println(spo2);
                                        } else {
                                            out.println("");
                                        }%>" required/></td></tr>
                                <tr><td><b>Intake</b></td>
                                    <td><%=intake%></td>
                                    <td><input type="text" name ="intake" style="width:250px"  value="<% if (check == true) {
                                            out.println(intake2);
                                        } else {
                                            out.println("");
                                        }%>" required/></td></tr>
                                <tr><td><b>Output</b></td>
                                    <td><%=output%></td>
                                    <td><input type="text" name ="output" style="width:250px" value="<% if (check == true) {
                                            out.println(output2);
                                        } else {
                                            out.println("");
                                        }%>" required/></td></tr>
                                   
                                <%
                                    session.removeAttribute("vital");
                                    session.removeAttribute("tempError");
                                    session.removeAttribute("rrError");
                                    session.removeAttribute("hrError");
                                    session.removeAttribute("bpError");
                                    session.removeAttribute("first");
                                    session.removeAttribute("active");

                                %>
                        </table>

                        <input type="Submit" value="Update Vitals" class="button"> 
                        </form>
                    </div>

                    <div class="<% if (active != null && active.equals(
                                "medication")) {
                            out.println("content active");
                        } else {
                            out.println("content");
                        } %>" id="medication">

                        <form id='myform' action="processMedication.jsp">
                            <div class="content" id="medication">                     

                                <table>
                                    <tr>
                                        <td>
                                            <label for="patientBarcode"><b>Patient's Barcode</b> </label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type ="text"  id="patientBarcode" name="patientBarcode" required>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="patientBarcode"><b>Medicine Barcode </b></label>
                                        </td>
                                        <td>
                                            <label for="medicineName"><b>Medication Name </b></label>
                                        </td>
                                        <td>
                                            <label for="route"><b>Route</b></label>
                                        </td>
                                        <td>
                                            <label for="dosage"><b>Dosage </b></label>
                                        </td>
                                        <td>
                                            <label for="frequency"><b>Frequency </b></label>
                                        </td>
                                        <td>
                                            <label for="doctorName"><b>Doctor Name</b> </label>
                                        </td>
                                        <td>
                                            <label for="location"><b>Location </b></label>
                                        </td>
                                        <td>
                                            <label for="lastAdministered"><b>Last Administered</b></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type ="text" id="med1" name="med1" required>
                                        </td>
                                        <td>
                                            Epinephrine
                                        </td>
                                        <td>
                                            P.O
                                        </td>
                                        <td>
                                            200ml
                                        </td>
                                        <td>
                                            Q.AM
                                        </td>
                                        <td>
                                            James
                                        </td>
                                        <td>
                                            Row: A<br/>
                                            Column: 2
                                        </td>
                                        <td>
                                            22/10/2014 <br>
                                            13:24 PM                                    
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type ="text" id="med2" name="med2" required>
                                        </td>
                                        <td>
                                            Olanzapine
                                        </td>
                                        <td>
                                            P.O
                                        </td>
                                        <td>
                                            2 Tablet
                                        </td>
                                        <td>
                                            Q.AM
                                        </td>
                                        <td>
                                            James
                                        </td>
                                        <td>
                                            Row: A<br/>
                                            Column: 2
                                        </td>
                                        <td>
                                            22/10/2014 <br>
                                            13:24 PM                                    
                                        </td>
                                    </tr>
                                </table>
                                <p>
                                    <input type="submit" class="button small" value="Administer">
                                </p>

                                <% //if (errorMsg != null || successMsg != null) {
                                        session.removeAttribute("successMsg");
                                        session.removeAttribute("errorMsg");
                                        session.removeAttribute("active");
                                   // }

                                %>
                            </div>



                        </form>



                    </div>

                    <div class="<% if (active != null && active.equals(
                                "multidisciplinary")) {
                            out.println("content active");
                        } else {
                            out.println("content");
                        } %>" id="multidisciplinary">
                        <p>
                            <%                                String msg = (String) request.getAttribute("successMsg");
                                if (msg
                                        != null) {
                                    out.println(msg);
                                }
                            %>
                        <form action="ProcessAddNote.jsp" method="POST">
                            <div class="row">
                                <div class="small-8">
                                    <%
                                        String tutorialGrp = "";
                                        String grpNames = "";
                                        String notes = "";
                                        notesList = (String[]) session.getAttribute("notesList");

                                        if (submittedNotes
                                                != null) {
                                            tutorialGrp = submittedNotes[0];
                                            grpNames = submittedNotes[1];
                                            notes = submittedNotes[2];

                                        } else if (notesList
                                                != null) {
                                            tutorialGrp = notesList[0];
                                            grpNames = notesList[1];
                                            notes = notesList[2];
                                        } else {
                                            tutorialGrp = "";
                                            grpNames = "";
                                            notes = "";
                                        }
                                    %>
                                    <div class="row">
                                        <div class="small-3 columns">
                                            <label for="right-label" class="right inline"><b>Tutorial Group</b></label>
                                            <label for="right-label" class="right inline"><b>Group Member Names</b></label>
                                            <label for="right-label" class="right inline"><b>Multidisciplinary Note</b></label>
                                        </div>
                                        <div class="small-9 columns">
                                            <input type ="text" id= "tutorialGrp" name="tutorialGrp" value = "<%=tutorialGrp%>" required>
                                            <input type ="text" id= "grpNames" name="grpNames" value = "<%=grpNames%>" required>
                                            <input type ="text" id= "notes" name="notes" value = "<%=notes%>" required>
                                        </div>
                                    </div>
                                    <input type="Submit" name = "save" value="Save" class="button"> 
                                    <input type="Submit" name = "submit" value="Submit" class="button"> 


                                    <div class="panel">
                                        <h5>Previous Multidisciplinary Notes</h5>
                                        <p>Tutorial Group: TT01</p>
                                        <p>Group Members: Jolin, Jayne, Krystal, Rebecca</p>
                                        <p>Time submitted: Tue Oct 07 01:07:52 SGT 2014</p>
                                        <p>The patient has been administered Epinephrine on a hourly basis. Patient's last vitals were normal. Nothing out of the norm was observed. </p>
                                    </div>

                                    <%

                                        if (submittedNotes
                                                != null) {%>
                                    <div class="panel">
                                        <h5>Previous Multidisciplinary Notes</h5>
                                        <p>Tutorial Group: <%=tutorialGrp%></p>
                                        <p>Group Names: <%=grpNames%></p>
                                            <p>Time Submitted: <%DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                                                Date date = new Date();%> <%=date%> </p>
                                        <p><%=notes%></p>
                                    </div>
                                    <%
                                            session.removeAttribute("submittedNotes");
                                            session.removeAttribute("active");
                                        }
                                    %>

                                </div>
                            </div>



                            <!--<input type="button" value="Cancel" class="button" onClick="window.location = 'viewPatientInformation.jsp'"/>-->
                        </form>
                        </p>
                    </div>
            
                </div>
            </div>
        </div>
                                    
        <div id="chart" class="reveal-modal" data-reveal>
            <h1>Historical Temperature Chart</h1>    
            <div id="graphdiv"></div>
            <script type="text/javascript">
               g = new Dygraph(

                document.getElementById("graphdiv"),

                "Date,Temperature\n" +
                "2008-05-07,75\n" +
                "2008-05-08,70\n" +
                "2008-05-09,80\n"

              );
             </script>  
             
        <a class="close-reveal-modal">&#215;</a>

        </div>
        
          
        <script src="js/vendor/jquery.js"></script>
        <script src="js/foundation.min.js"></script> 
        
        
        <script src='static/libs/dygraph/dygraph-combined.js'></script>	
       <script>
       $(document).ready(function () {
                $(document).foundation();
            });
    </script>
    </body>
      
</html>
