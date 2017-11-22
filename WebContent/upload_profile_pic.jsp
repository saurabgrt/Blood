<%@page import="bloodbank.ConnectionProvider"%>
<%@page import="java.sql.*,bloodbank.*" %>
<%@page import="com.oreilly.servlet.MultipartRequest,java.sql.*,java.io.*"%>
<html>
<body>
<% 
String path=application.getRealPath("/pics");
MultipartRequest mpr=new MultipartRequest(request,path,50*1024*1024);
String fileName=mpr.getOriginalFileName("file");
String filePath=path+"/"+fileName;
File f1=new File(filePath);
String email=(String)session.getAttribute("email");
File f2=new File(path+"/"+fileName+email+".jpg");
f1.renameTo(f2);
Connection con=ConnectionProvider.getConnection();
PreparedStatement pst=con.prepareStatement("update bloodbank_donor set imagepath=? where email=?");
String path1=f2.getPath();
path1 = path1.replace("\\", "/");
String url = request.getRequestURL().toString();
String baseURL = url.substring(0, url.length() - request.getRequestURI().length()) + request.getContextPath() + "/";
pst.setString(1,baseURL+"/pics/"+f2.getName());
pst.setString(2,email);
pst.executeUpdate();
con.close();
response.sendRedirect("welcome_donor.jsp");
System.out.println(url);
System.out.println(baseURL);

%>
</body>
</body>
</html>