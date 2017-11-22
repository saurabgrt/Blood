<%@page import="bloodbank.*,java.sql.*"%>
<html>
<body>
<%
try
{
String email=request.getParameter("email");
Connection con=ConnectionProvider.getConnection();
PreparedStatement pst=con.prepareStatement("delete from bloodbank_donor where email=?");
pst.setString(1,email);
pst.executeUpdate();
con.close();
response.sendRedirect("login.jsp?msg=success");
}
catch(Exception e)
{
	response.sendRedirect("welcome_donor.jsp?msg=fail");	
}
%>
</body>
</html>