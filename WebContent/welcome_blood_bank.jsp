<%@page import="java.sql.*,bloodbank.*" %>
<%@include file="header1.html"%>
<div id="container">
<div id="content">
 <div id="left-content">
		               <img src="images/a.jpg" width="100%" height="100%">
					   
					   </div>
<div style="position: absolute;left:40%;top:35%;overflow:scroll;height:300px;width:550px;">
<% 
String email=(String)session.getAttribute("email");
Connection con=ConnectionProvider.getConnection();
PreparedStatement pst=con.prepareStatement("select * from BLOODBANK_BANK where email=?",ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
System.out.println(pst);
pst.setString(1,email);
ResultSet rs=pst.executeQuery();
boolean isFound=false;
if(rs.next())
{
isFound=true;
rs.previous();
%>
<h2>Following records found on the given blood group</h2> 
<table border="1">
<tr height="30"><th>BloodBank</th><th>Address</th><th>state</th><th>city</th><th>contact</th><th>email</th><th>Alter</th></tr>
<%
}
while(rs.next())
{
%>
<tr height="50"><td align="center"><%=rs.getString(1)%></td><td align="center"><%=rs.getString(2)%></td><td align="center"><%=rs.getString(3)%></td><td align="center"><%=rs.getString(4)%></td><td align="center"><%=rs.getString(5)%></td><td align="center"><%=rs.getString(6)%></td><td align="center"><a href="update_blood_bank.jsp?to=<%=rs.getString(6)%>">update </a>|<a href=delete_blood_bank_db.jsp?email=<%=rs.getString(6)%>>Delete</a></a></a></td></tr>
<%	
}
if(isFound==false)
{
	out.println("No blood bank is found");	
}
con.close();
%>
</table>
</div>
</div>
</div>

				