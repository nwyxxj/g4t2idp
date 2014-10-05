<%
   if(session.getAttribute("login") == null){
       response.sendRedirect("viewMainLogin.jsp");
   }
    
%>