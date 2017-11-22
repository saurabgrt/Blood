<%@include file="header.html"%>
<div id="container">
				 <div id="content">
				       <div id="left-content">
		               <img src="images/a.jpg" width="100%" height="100%">
		               </div>
		            <div style="position:absolute;left:26%;top:32%;">
	        <form action="index.jsp"><table>
	        <tr><td></td><td><input type="submit" value="<<BACK"></td></tr>
	        </table></form>
	        </div>		
		<div style="position: absolute;left:40%;top:45%;">
<form action="login_check.jsp">
  <div style="position:absolute;left:40%;top:45%;height:100px;width:300px;">
  <table cellspacing=10>
  <tr><td>Email</td><td><input type="text" name="email" placeholder="enter_email"></td></tr>
  <tr><td>Password</td><td><input type="password" name="password" placeholder="enter_password"></td></tr>
  <tr><td>Select User</td>
  <td>
  <select name="usertype">
  <option>Donor</option>
  <option>Blood Bank</option>
  </select>
  </td>
  </tr>
  <tr><td><input type="submit" value="login"></td><td><input type="reset" value="Reset"></td></tr>
  </table>
  <br>
  <a href="forgot_pass.jsp">Forgot Password</a>
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