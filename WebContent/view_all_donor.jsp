<%@page import="java.sql.*,bloodbank.*" %>
<%@include file="header1.html"%>
<div id="container">
<div id="content">
 <div id="left-content">
		               <img src="images/a.jpg" width="100%" height="100%">
					   
					   </div>
<div style="position:absolute;left:26%;top:32%;">
	        <form action="welcome_admin.jsp"><table>
	        <tr><td></td><td><input type="submit" value="<<BACK"></td></tr>
	        </table></form>
	        </div>		
<div style="position: absolute;text-align:center; left:35%;top:40%;overflow:scroll;height:300px;width:700px;border:2px solid brown;">

<% 
Connection con=ConnectionProvider.getConnection();
PreparedStatement pst=con.prepareStatement("select * from bloodbank_donor",ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
ResultSet rs=pst.executeQuery();
boolean isFound=false;
if(rs.next())
{
isFound=true;
rs.previous();
%>
<h2>Following records found</h2> 
<table border="1">
<tr height="30">
<th width="80px">Name</th>
<th>Age</th>
<th>Contact</th>
<th>Email</th>
<th>Gender</th>
<th>Address</th>
<th>Blood Group</th>
<th>Status</th>
<th>Action</th></tr>
<%
}
while(rs.next())
{
%>
<tr height="50">
<td align="center"><%=rs.getString(1)%></td>
<td align="center"><%=rs.getString(2)%></td>
<td align="center"><%=rs.getString(3)%></td>
<td align="center"><%=rs.getString(4)%></td>
<td align="center"><%=rs.getString(6)%></td>
<td align="center"><%=rs.getString(7)%></td>
<td align="center"><%=rs.getString(8)%></td>
<td align="center"><%=rs.getString(9)%></td>
<td align="center"><a href="delete_donor_byadmin.jsp?email=<%=rs.getString(4)%>">Delete</a></td>
</tr>
<%	
}
if(isFound==false)
{
	out.println("No Donor is found");	
}
con.close();
%>
</table>
</div>
</div>
</div>
				