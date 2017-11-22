<%@page import="bloodbank.ConnectionProvider,java.sql.*" %>
<%@page import="java.sql.*,bloodbank.*" %>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");
String usertype=request.getParameter("usertype");
Connection con=ConnectionProvider.getConnection();
PreparedStatement pst=null;
if(usertype.equals("Donor"))
{
	pst=con.prepareStatement("select * from bloodbank_donor where email=? and password=?");	
	pst.setString(1,email);
	pst.setString(2,password);
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
		session.setAttribute("email", email);
		session.setAttribute("name",rs.getString("name"));
		session.setAttribute("age", rs.getString("age"));
		session.setAttribute("contact", rs.getString("contact"));
		session.setAttribute("password", rs.getString("password"));
		session.setAttribute("gender", rs.getString("gender"));
		session.setAttribute("address",rs.getString("address"));
		session.setAttribute("bloodgroup", rs.getString("blood_group"));
		response.sendRedirect("welcome_donor.jsp");
	}
	else
	{
		response.sendRedirect("login.jsp?msg=invalid");	
	}

}
else if(usertype.equals("Blood Bank"))
{
	pst=con.prepareStatement("select * from BLOODBANK_BANK where email=? and password=?");
	pst.setString(1,email);
	pst.setString(2,password);
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
		session.setAttribute("email", email);
		session.setAttribute("bloodbank", rs.getString("bloodbank"));
		session.setAttribute("address",rs.getString("address"));
		session.setAttribute("state", rs.getString("state"));
		session.setAttribute("city", rs.getString("city"));
		session.setAttribute("contact", rs.getString("contact"));
		session.setAttribute("password", rs.getString("password"));
		session.setAttribute("area",rs.getString("area"));
	
		response.sendRedirect("welcome_blood_bank.jsp");
	}
	else
	{
		response.sendRedirect("login.jsp?msg=invalid");	
	}
}
con.close();
%>