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
int i=0;
try
{   
	Connection con=Conn.getCon();
	String sql= "delete from user where id="+id;
	PreparedStatement ps = con.prepareStatement(sql);
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