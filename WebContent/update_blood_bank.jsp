<%@include file="header1.html"%>
<div id="container">
<div id="content">
		<div id="left-content">
		               <img src="images/a.jpg" width="100%" height="100%">  
	  </div>
	  <div style="position:absolute;left:50%;top:28%">
	  <h1><I>Update Profile</I></h1>
	  </div>
	  <div style="position:absolute;left:45%;top:38%;">
           <form action="update_blood_bank_db.jsp">
              <table cellspacing=10px>
    <tr><td>Blood Bank Name</td><td><input type="text" name="bloodbank" value="<%=session.getAttribute("bloodbank")%>"></td></tr>
   <tr><td>Address</td><td><input type="text" name="address" value="<%=session.getAttribute("address")%>"></td></tr>
  <tr><td>State</td><td><input type="text" name="state" value="<%=session.getAttribute("state")%>"></td></tr>
 <tr><td>City</td><td><input type="city" name="city" value="<%=session.getAttribute("city")%>" readonly="readonly"></td></tr>
  <tr><td>Area</td><td><input type="text" name="area" value="<%=session.getAttribute("area")%>"></td></tr>
  <tr><td>Contact</td><td><input type="text" name="contact" value="<%=session.getAttribute("contact")%>"></td></tr>
  <tr><td>Email</td><td><input type="email" name="email" value="<%=session.getAttribute("email")%>"></td></tr>
   <tr><td>Password</td><td><input type="password" name="password" value="<%=session.getAttribute("password")%>"></td></tr>
                 <tr><td></td><td></td></tr>
      			
      <tr><td><input type="submit" value="Update">
      			 
              </table>
          </form>
                  <% 
          	String msg=request.getParameter("msg");
          if("success".equals(msg))
          {  
          %>
       <font color="green" size="5">  Record updated....</font>
          <%
          }
          else if("fail".equals(msg))
          {
        	  %>
      <font color="red"> Record not updated..</font>
        	  <%
          }
          %>
          </div>           		 
</div>
</div>   		 

