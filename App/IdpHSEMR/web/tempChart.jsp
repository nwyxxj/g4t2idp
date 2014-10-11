<%-- 
    Document   : newjsp
    Created on : Oct 11, 2014, 11:16:22 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/dygraph-combined.js"></script> 
    </head>
    <body>
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
        
    </body>
</html>
