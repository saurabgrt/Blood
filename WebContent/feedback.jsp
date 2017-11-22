<%@include file="header.html" %>
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
 <div style="position:absolute;left:45%;top:30%;height:100px;width:300px;text-align: center;">
<form action="feedback_db.jsp" method="post">
  <h1><I> &nbsp;&nbsp;&nbsp;Give Feedback</I></h1>
  <table cellspacing=8>
  <tr><td>Name</td><td><input type="text" name="name" placeholder="enter_name"></td></tr>
  <tr><td>Mobile no</td><td><input type="number" name="mobile" placeholder="enter_mobile no"></td></tr>
  <tr><td>Email</td><td><input type="email" name="email" placeholder="enter_email" required="required"></td></tr>
  <tr><td>Comment:</td><td><textarea name="comment" rows=10 cols=30 placeholder="Comment Here"></textarea></td></tr>
  
  <tr><td></td><td><input type="submit" value="submit feedback"></td><td>
</table>
</form>
<%
String msg=request.getParameter("msg");
if("success".equals(msg))
{
%>
<font color="green" size="5">Feedback submitted.....</font>
<%
}
else if("fail".equals(msg))
{
%>
<font color="red">Error....</font>
<%
}
%>
</div>
</div>	
</div>