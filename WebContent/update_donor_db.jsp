<%@page import="bloodbank.*,java.sql.*"%>
<html>
<body>
<%
try
{
String donorname=request.getParameter("donorname");
String age=request.getParameter("age");
String contact=request.getParameter("contact");
String email=request.getParameter("email");
String password=request.getParameter("password");
String gender=request.getParameter("gender");
String address=request.getParameter("address");
String bloodgroup=request.getParameter("bloodgroup");
Connection con=ConnectionProvider.getConnection();
PreparedStatement pst=con.prepareStatement("update bloodbank_donor set name=?,age=?,contact=?,password=?,address=?,blood_group=? where email=?");
pst.setString(1,donorname);
pst.setString(2,age);
pst.setString(3,contact);
pst.setString(4,password);
pst.setString(5,address);
pst.setString(6,bloodgroup);
pst.setString(7,email);
pst.executeUpdate();
con.close();
response.sendRedirect("update_donor.jsp?msg=success");
}
catch(Exception e)
{
	response.sendRedirect("update_donor.jsp?msg=fail");	
}
%>
</body>
</html>