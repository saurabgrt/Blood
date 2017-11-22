<%@page import="java.sql.*,bloodbank.*" %>
<%@include file="header.html"%>
<div id="container">
<div id="content">
 <div id="left-content">
		               <img src="images/a.jpg" width="100%" height="100%">
					   
					   </div>
					   <div style="position:absolute;left:26%;top:32%;">
	        <form action="search.jsp"><table>
	        <tr><td></td><td><input type="submit" value="<<BACK"></td></tr>
	        </table></form>
	        </div>		
<div style="position: absolute;text-align:center; left:40%;top:40%;overflow:scroll;height:300px;width:570px;border:2px solid brown;">
<% 
String bloodgroup=request.getParameter("bloodgroup");
Connection con=ConnectionProvider.getConnection();
System.out.println(con);
PreparedStatement pst=con.prepareStatement("select * from bloodbank_donor where blood_group=? and status='Approved'",ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
System.out.println(pst);
pst.setString(1,bloodgroup);
ResultSet rs=pst.executeQuery();
boolean isFound=false;
if(rs.next())
{
isFound=true;
rs.previous();
%>
<h2>Following records found on the given blood group</h2> 
<table border="1">
<tr height="30"><th>Name</th><th>Age</th><th>Contact</th><th>Email</th><th>Gender</th><th>Address</th><th>Map</th></tr>
<%
}
while(rs.next())
{
%>
<tr height="50"><td align="center"><%=rs.getString(1)%></td><td align="center"><%=rs.getString(2)%></td><td align="center"><%=rs.getString(3)%></td><td align="center"><%=rs.getString(4)%></td><td align="center"><%=rs.getString(6)%></td><td align="center"><%=rs.getString(7)%></td><td align="center"><a href="loc.jsp?to=<%=rs.getString(7)%>">show</a></td></tr>
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
				