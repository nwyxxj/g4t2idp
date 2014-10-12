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

                "Time,Temperature\n" +
                "0800,36.8\n" +
                "1000,37.0\n" +
                "1200,37.3\n" + 
                "1400,37.2\n" +
                "1600,37.0\n" + 
                "1800,36.9\n" + 
                "2000,36.7\n", { title: 'Temperature Chart',
              titleHeight: 32,
              ylabel: 'Temperature (ºC)',
              xlabel: 'Time'}  

              );
             </script>  
        
    </body>
</html>
