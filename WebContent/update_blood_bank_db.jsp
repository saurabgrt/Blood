<%@ page import="bloodbank.*,java.sql.*"%>
<html>
<body>
<%
try
{
	String bloodbank=request.getParameter("bloodbank");
	String address=request.getParameter("address");
	String state=request.getParameter("state");
	String city=request.getParameter("city");
	String contact=request.getParameter("contact");
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	String area=request.getParameter("area");
	Connection con=ConnectionProvider.getConnection();
	PreparedStatement pst=con.prepareStatement("update BLOODBANK_BANK set name=?,address=?,state=?,city=?,contact=?,password=?,area=? where email=?");
	pst.setString(1,bloodbank);
	pst.setString(2,address);
	pst.setString(3,state);
	pst.setString(4,city);
	pst.setString(5,contact);
	pst.setString(8,email);
	pst.setString(6,password);
	pst.setString(7,area);
pst.executeUpdate();
System.out.println("hello");
con.close();
response.sendRedirect("update_blood_bank.jsp?msg=success");
}
catch(Exception e)
{
	response.sendRedirect("update_blood_bank.jsp?msg=fail");	
}
%>
</body>
</html>