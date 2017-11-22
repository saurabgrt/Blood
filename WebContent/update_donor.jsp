<%@include file="header1.html"%>
<div id="container">
<div id="content">
                     <div id="left-content">
						<img src="images/a.jpg" width="100%" height="100%">
					</div>
 <div style="position: absolute;left:26%;width:100px;">
			<img src="<%=session.getAttribute("pic")%>" width="170" height="150">
			<form action="upload_profile_pic.jsp" accept=".png, .jpg, .jpeg" method="post" enctype="multipart/form-data">
			<input type="file" name="file" >
			<input type="submit" value="upload">
			</form></div>
 
  <form action="update_donor_db.jsp">
  
  <div style="position:absolute;left:50%;top:30%;height:100px;width:400px;text-align: center;">
	<h2><I>Update Profile</I></h2>
 <a href="welcome_donor.jsp">Back</a>
  
  <table cellspacing=10>
  <tr><td>Enter Name</td><td><input type="text" name="donorname" value="<%=session.getAttribute("name")%>"></td></tr>
  <tr><td>Enter Age</td><td><input type="number" name="age" value="<%=session.getAttribute("age")%>"></td></tr>
 <tr><td>Enter Contact</td><td><input type="number" name="contact" value="<%=session.getAttribute("contact")%>"></td></tr>
  <tr><td>Enter Email</td><td><input type="email" name="email" value="<%=session.getAttribute("email")%>" readonly="readonly"></td></tr>
   <tr><td>Enter Password</td><td><input type="password" name="password" value="<%=session.getAttribute("password")%>"></td></tr>
     <tr><td>Enter Gender</td><td><input type="text" name="gender" value="<%=session.getAttribute("gender")%>"></td></tr>
  <tr><td>Enter Address</td><td><input type="text" name="address" value="<%=session.getAttribute("address")%>"></td></tr>
  <tr><td>		<tr><td>Select Blood_Group</td><td>
			<select name="bloodgroup">
			<option><%=session.getAttribute("bloodgroup")%></option>
			<option>A+</option>
			<option>A-</option>
			<option>B+</option>
			<option>B-</option>
			<option>AB+</option>
			<option>AB-</option>
			<option>O+</option>
			<option>O-</option>
			
			</select>
	</td></tr>
   <tr><td><input type="submit" value="Update">
   
   </table>
<%
String msg=request.getParameter("msg");
if("success".equals(msg))
{
%>
<font color="green" size="5">Record Updated...</font>
<%
}
else if("fail".equals(msg))
{
%>
<font color="red">Record not Updated...</font>
<%
}
%>

</div>
</form>
</div>
</div>