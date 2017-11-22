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
PreparedStatement pst=con.prepareStatement("select * from bloodbank_feedback",ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
ResultSet rs=pst.executeQuery();
boolean isFound=false;
if(rs.next())
{
isFound=true;
rs.previous();
%>
<h2><u>Following records found</u></h2> 
<table cellspacing=12>
<tr height="30">
<th width="80px">Name</th>
<th>Contact</th>
<th>Email</th>
<th>Comment</th></tr>
<%
}
while(rs.next())
{
%>
<tr height="50">
<td align="center" width="150"><%=rs.getString(1)%></td>
<td align="center" width="150"><%=rs.getString(2)%></td>
<td align="center" width="150"><%=rs.getString(3)%></td>
<td align="center" width="150"><%=rs.getString(4)%></td>
</tr>
<%	
}
if(isFound==false)
{
	out.println("No Feedback is found");	
}
con.close();
%>
</table>
</div>
</div>
</div>
				