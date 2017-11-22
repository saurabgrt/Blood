<%@page import="bloodbank.*,java.sql.*" %>
<html>
<body>
<%
try
{
String name=request.getParameter("name");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String comment=request.getParameter("comment");
Connection con=ConnectionProvider.getConnection();
PreparedStatement pst=con.prepareStatement("insert into bloodbank_feedback values(?,?,?,?)");
pst.setString(1,name);
pst.setString(3,mobile);
pst.setString(2,email);
pst.setString(4,comment);
pst.executeUpdate();
SendSms.sendSms(mobile,"Thanks+for+your+feedback");
SendMail.sendMail(email,"Feedback ack...","Hello,"+name+"\n Thanks for your feedback\n Team BloodBank");		
con.close();
response.sendRedirect("feedback.jsp?msg=success");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("feedback.jsp?msg=fail");	
}
%>
</body>
</html>