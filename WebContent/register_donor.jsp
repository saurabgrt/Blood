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
	  <div style="position:absolute;left:50%;top:30%">
	  <h1><I>Registration Form</I></h1>
	  </div>
	  <div style="position:absolute;left:45%;top:40%;text-align: center;">
           <form action="register_donor_db.jsp" method="post">
              <table cellspacing=10px>
                 <tr><td>Enter Name</td><td><input type="text" name="donorname" required="required"></td></tr>
                 <tr><td>Enter Age</td><td><input type="number" name="age" required="required"></td></tr>
                 <tr><td>Enter Contact</td><td><input type="number" name="contact" required="required"></td></tr>
                 <tr><td>Enter Email</td><td><input type="email" name="email" required="required"></td></tr>
                 <tr><td>Enter Password</td><td><input type="password" name="password" required="required"></td></tr>
                 <tr><td>Enter Gender</td><td> <select name="gender">
      			 <option>Male</option>
      			 <option>Female</option>
      			 <option>Other</option>	 
      			 </select></td></tr>
                 <tr><td>Enter Address</td><td><input type="text" name="address" required="required"></td></tr>
      			 <tr><td>Select Blood Group</td><td>
      			 <select name="bloodgroup">
      			 <option>A+</option>
      			 <option>A-</option>
      			 <option>B+</option>
      			 <option>B-</option>
      			 <option>AB+</option>
      			 <option>AB-</option>
      			 <option>O+</option>
      			 <option>O-</option>
      			 <option>Other</option>	 
      			 </select></td></tr>
      			  <tr><td></td><td></td></tr>
      			
      <tr><td></td><td><input type="submit" value="Submit"></td></tr>
      			 
              </table>
          </form>
          <% 
          	String msg=request.getParameter("msg");
          if("success".equals(msg))
          {  
          %>
       <font color="green" size="5">  Registration Successful....</font>
          <%
          }
          else if("fail".equals(msg))
          {
        	  %>
      <font color="red"> This Email is already used by other donor..</font>
        	  <%
          }
          %>
          </div>           		 
</div>
</div>