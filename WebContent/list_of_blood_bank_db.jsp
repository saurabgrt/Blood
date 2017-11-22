<%@page import="java.sql.*,bloodbank.*" %>
<%@include file="header.html"%>
<div id="container">
<div id="content">
 <div id="left-content">
		               <img src="images/a.jpg" width="100%" height="100%">
		       </div>
<div style="position:absolute;left:26%;top:32%;">
	        <form action="listofbloodbank.jsp"><table>
	        <tr><td></td><td><input type="submit" value="<<BACK"></td></tr>
	        </table></form>
	        </div>		       
<div style="position: absolute;left:40%;top:35%;overflow:scroll;height:400px;width:550px;">

<%
Connection con=ConnectionProvider.getConnection();
System.out.println(con);
PreparedStatement pst=con.prepareStatement("select * from BLOODBANK_BANK where status='Approved' and state=?",ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
System.out.println(pst);
String state=request.getParameter("state");
pst.setString(1,state);
ResultSet rs=pst.executeQuery();
boolean isFound=false;
if(rs.next())
{
isFound=true;
rs.previous();
%>
<h2>Following records found on the given blood bank</h2> 
<table border="1">
<tr height="30"><th>Name</th><th>Address</th><th>City</th><th>State</th><th>Contact</th><th>Email</th><th>Map</th></tr>
<%
}
while(rs.next())
{
%>
<tr height="50"><td align="center"><%=rs.getString(1)%></td><td align="center"><%=rs.getString(2)%></td><td align="center"><%=rs.getString(3)%></td><td align="center"><%=rs.getString(4)%></td><td align="center"><%=rs.getString(6)%></td><td align="center"><%=rs.getString(7)%></td><td align="center"><a href="loc.jsp?to=<%=rs.getString(2)%>">show</a></td></tr>
<%	
}
if(isFound==false)
{
	out.println("No blood bank");
}
con.close();
%>
</table>
</div>
</div>
</div>
				