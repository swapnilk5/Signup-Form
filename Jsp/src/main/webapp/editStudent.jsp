<%@ page import="java.sql.*"%>
<%@ page import="com.connection.Conn"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String email = request.getParameter("email");
String address = request.getParameter("address");
String password = request.getParameter("password");
String gender = request.getParameter("gender");
int i=0;
try
{   
	Connection con=Conn.getCon();
	String sql= "update user set name=?,email=?,address=?,password=?,gender=? where id=?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,address);
	ps.setString(4,password);
	ps.setString(5,gender);
	ps.setString(6,id);

	i=ps.executeUpdate();
	if(i>0)
	{
	 response.sendRedirect("Data.jsp");
	 return;
	}
}
catch(Exception e){
	
	 response.sendRedirect("Data.jsp");	
	 e.printStackTrace();
}

%>

</body>
</html>