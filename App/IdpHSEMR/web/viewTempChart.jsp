<%-- 
    Document   : viewTempChart
    Created on : Oct 11, 2014, 5:14:51 PM
    Author     : weiyi.ngow.2012
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <script type="text/javascript" src="js/dygraph-combined.js"></script>                         
    </head>
    <body>
        <h1>Historical Temperature Chart</h1>
        <div id="graphdiv"></div>
<script type="text/javascript">
  g = new Dygraph(

    // containing div
    document.getElementById("graphdiv"),

    // CSV or path to a CSV file.
    "Date,Temperature\n" +
    "2008-05-07,75\n" +
    "2008-05-08,70\n" +
    "2008-05-09,80\n"

  );
</script>
    </body>
</html>
