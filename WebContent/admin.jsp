<%@include file="header1.html"%>
<div id="container">
				 <div id="content">
				       <div id="left-content">
		               <img src="images/a.jpg" width="100%" height="100%">
		               </div>
		<div style="position: absolute;left:40%;top:40%;">
		<h1><u><b>Enter the admin Id</b></u></h1>
<form action="check_admin.jsp">
  <div style="position:absolute;left:5%;top:90%;height:100px;width:300px;">
  <table cellspacing=10>
  <tr><td>Username</td><td><input type="text" name="username" placeholder="enter_username"></td></tr>
  <tr><td>Password</td><td><input type="password" name="password" placeholder="enter_password"></td></tr>
  <tr><td><input type="submit" value="login"></td><td><input type="reset" value="Reset"></td></tr>
  </table>
  <br>
  </div>
  </form>
 </div>
 <div style="position: absolute;top:40%;left:40%;">
  <%
				  String msg=request.getParameter("msg");
				  if("invalid".equals(msg)){
					   %>
					 <font color="red" size="5">Invalid Username/Password</font>	
                      <%
                     }
				  else if("success".equals(msg))
				  {
					  %>
					 <font color="red" size="5">Record Deleted..</font>	
                      
					  <% 
				  }
				  else if("logout".equals(msg))
				  {
					  %>
					 <font color="red" size="5">Your are successfully logged out!</font>	
                      
					  <% 
				  }
				   %> </div>

</div>		 
</div>