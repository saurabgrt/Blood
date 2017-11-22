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
response.sendRedirect("view_all_donor.jsp");
}
catch(Exception e)
{
	System.out.println(e);
	//response.sendRedirect("update_donor.jsp?msg=fail");	
}
%>
</body>
</html>