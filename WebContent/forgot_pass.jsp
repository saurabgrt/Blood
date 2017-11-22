<%@include file="header.html"%>
<div id="container">
				 <div id="content">
				       <div id="left-content">
		               <img src="images/a.jpg" width="100%" height="100%">
					   </div>
					</div>
					<form action="recover_pass.jsp">
  <div style="position:absolute;left:40%;top:36%;height:100px;width:300px;">
  <table cellspacing=10>
  <tr><td>Email</td><td><input type="email" name="email" placeholder="email" required="required"></td></tr>
  <tr><td>Select User</td>
  <td>
  <select name="usertype">
  <option>Donor</option>
  <option>Blood Bank</option>
  </select>
  </td>
  </tr>
  <tr><td><input type="submit" value="Get Password"></td><td><input type="reset" value="Reset"></td></tr>
  </table>
  </div>
  </form>
 </div>
 </div>