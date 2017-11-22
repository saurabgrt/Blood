<%@page import="java.sql.*,bloodbank.*" %>
<%@include file="header1.html"%>
<div id="container">
<div id="content">
<div id="left-content">
		               <img src="images/a.jpg" width="100%" height="100%">
</div>
<% 
String email=(String)session.getAttribute("email");
Connection con=ConnectionProvider.getConnection();
PreparedStatement pst=con.prepareStatement("select * from bloodbank_donor where email=?",ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
pst.setString(1,email);
ResultSet rs=pst.executeQuery();
boolean isFound=false;
%>
<%
if(rs.next())
{
isFound=true;
rs.previous();
%>					  
<%
}
while(rs.next())
{
String pic=rs.getString(10);
session.setAttribute("pic",pic);
%>
<div style="position: absolute;left:26%;width:100px;">
			<img src="<%=pic%>" width="170" height="150">
			<form action="upload_profile_pic.jsp" accept=".png, .jpg, .jpeg" method="post" enctype="multipart/form-data">
			<input type="file" name="file" >
			<input type="submit" value="upload">
			</form></div>
<div style="position: absolute;left:45%;top:35%;height:300px;width:650px;text-align: center;">
Welcome,<%=rs.getString(1)%>
<table border="1" cellpadding=10>
<tr height="30"><th>Name</th><th>Age</th><th>Contact</th><th>Email</th><th>Gender</th><th>Address</th><th>Alter</th></tr>
<tr height="50"><td align="center"><%=rs.getString(1)%></td><td align="center"><%=rs.getString(2)%></td><td align="center"><%=rs.getString(3)%></td><td align="center"><%=rs.getString(4)%></td><td align="center"><%=rs.getString(6)%></td><td align="center"><%=rs.getString(7)%></td><td align="center"><a href="update_donor.jsp?to=<%=rs.getString(4)%>">Update </a>|<a href=delete_donor_db.jsp?email=<%=rs.getString(4)%>>Delete</a></td></tr>
<%	
}
if(isFound==false)
{
	out.println("No Donor is found on given blood group");	
}
con.close();
%>
</table>
</div>
</div>				
</div>