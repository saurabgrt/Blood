<%
String username=request.getParameter("username");
String password=request.getParameter("password");

if("admin".equals(username) && "admin".equals(password))
{
	response.sendRedirect("welcome_admin.jsp");
}
else
{
	//out.println("b");
	response.sendRedirect("admin.jsp?msg=invalid");	
}
%>