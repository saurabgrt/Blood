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
	             <form action="register_blood_bank_db.jsp">
              <table cellspacing=10px>
                 <tr><td>Blood Bank Name</td><td><input type="text" name="bankname" required="required"></td></tr>
                 <tr><td>Address</td><td><input type="text" name="address" required="required"></td></tr>
                 <tr><td>City</td><td><input type="text" name="city" required="required"></td></tr>
                 <tr><td>State</td><td><input type="text" name="state" required="required"></td></tr>
                 <tr><td>Area</td><td><input type="text" name="area" required="required"></td></tr>   
                 <tr><td>Contact</td><td><input type="number" name="contact" required="required"></td></tr>
                 <tr><td>Email</td><td><input type="email" name="email" required="required"></td></tr>
                 <tr><td>Password</td><td><input type="password" name="password" required="required"></td></tr>
               
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
      <font color="red"> This Email is already used by other bloodbank..</font>
        	  <%
          }
          %>
          </div>           		 
</div>
</div>                     		 

