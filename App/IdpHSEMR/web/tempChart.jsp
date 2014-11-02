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
                [
                [1,40,37,35],
                [2,40,36,35],
                [3,40,37.8,35],
                [4,40,36.7,35]
              ],
              {
                labels: [ "X", "High","Patient", "Low" ],
                title: 'Temperature Chart',
                titleHeight: 32,
                ylabel: 'Temperature (ºC)',
                xlabel: 'Time'
              }

              );
             </script>  
        
    </body>
</html>
