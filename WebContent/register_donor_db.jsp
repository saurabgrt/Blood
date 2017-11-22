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
PreparedStatement pst=con.prepareStatement("insert into bloodbank_donor values(?,?,?,?,?,?,?,?,?,?)");
pst.setString(1,donorname);
pst.setString(2,age);
pst.setString(3,contact);
pst.setString(4,email);
pst.setString(5,password);
pst.setString(6,gender);
pst.setString(7,address);
pst.setString(8,bloodgroup);
pst.setString(9,"Pending");
pst.setString(10,"images/default.jpg");
pst.executeUpdate();
con.close();
SendSms.sendSms(contact,"You+are+successfully+registered+with+BloodBank");
SendMail.sendMail(email,"Registration Successful","Hello,"+donorname+"\n You are Successfully Registered with BloodBank\n Team BloodBank");
response.sendRedirect("register_donor.jsp?msg=success");
}
catch(Exception e)
{
	e.printStackTrace();
	//System.out.println(e);
	response.sendRedirect("register_donor.jsp?msg=fail");	
}
%>
</body>
</html>







