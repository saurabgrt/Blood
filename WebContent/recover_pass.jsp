<%@page import="bloodbank.*,java.sql.*" %>
<%@include file="header.html" %>

<div id="container">
<div id="content">
<div style="position:absolute;left:40%;top:40%;overflow:scroll;height:300px;width:550px;">
<%
String email=request.getParameter("email");
String usertype=request.getParameter("usertype");
Connection con=ConnectionProvider.getConnection();
PreparedStatement pst=null;
if(usertype.equals("Donor"))
{
	pst=con.prepareStatement("select name,email,password from bloodbank_donor where email=?");	
}
else if(usertype.equals("Blood Bank"))
{
	pst=con.prepareStatement("select name,email,password from BLOODBANK_BANK where email=?");
}
pst.setString(1,email);
ResultSet rs=pst.executeQuery();
if(rs.next())
{
		SendMail.sendMail(rs.getString(2),"Password Recovery","Hello,"+rs.getString(2)+"\nYour Password is:"+rs.getString(3)+"\nBlood Bank Team");
	%>
	<h2>Your Password is send to your registered email id...</h2>
	<%

}
else
{
	out.println("No Record is Found on given details");	
}
con.close();
%>
</div>
</div>
</div>