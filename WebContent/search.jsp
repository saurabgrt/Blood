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
<div style="position: absolute;left:40%;top:40%;">
<h1><b><u>Search Donor Blood Group</u></b></h1>
<form action="search_db.jsp">
Select Blood_Group:
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
      			 </select><br><br>
      			 <input type="submit" value="Search">
      			 </form>
      			 </div>
</div>
</div>				