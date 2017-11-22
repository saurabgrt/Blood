<%@page import="bloodbank.*,java.sql.*"%>
<html>
<body>
<% 
try
{
	String bankname=request.getParameter("bankname");
	String address=request.getParameter("address");
	String city=request.getParameter("city");
	String state=request.getParameter("state");
	String contact=request.getParameter("contact");
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	String area=request.getParameter("area");
Connection con=ConnectionProvider.getConnection();
PreparedStatement pst=con.prepareStatement("insert into BloodBank_Bank values(?,?,?,?,?,?,?,?,?)");
pst.setString(1,bankname);
pst.setString(2,address);
pst.setString(3,city);
pst.setString(4,state);
pst.setString(6,contact);
pst.setString(7,email);
pst.setString(8,password);
pst.setString(5,area);
pst.setString(9,"Pending");

pst.executeUpdate();
SendSms.sendSms(contact,"You+are+successfully+registered+with+BloodBank");
SendMail.sendMail(email,"Registration Successful","Hello,"+bankname+"\n You are Successfully Registered with BloodBank\n Team BloodBank");

con.close();
response.sendRedirect("register_blood_bank.jsp?msg=success");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("register_blood_bank.jsp?msg=fail");	
}
%>
</body>
</html>






