<%@page import="bloodbank.*,java.sql.*"%>
<html>
<body>
<%
try
{
String email=request.getParameter("email");
Connection con=ConnectionProvider.getConnection();
PreparedStatement pst=con.prepareStatement("update bloodbank_donor set status=? where email=?");
pst.setString(1,"Approved");
pst.setString(2,email);

pst.executeUpdate();
con.close();
response.sendRedirect("approve_donor.jsp");
}
catch(Exception e)
{
	System.out.println(e);
	//response.sendRedirect("update_donor.jsp?msg=fail");	
}
%>
</body>
</html>