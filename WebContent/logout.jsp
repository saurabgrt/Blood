<% 
session.invalidate();
response.sendRedirect("login.jsp?msg=logout");
%>