<%@ page import="java.sql.*" %>
<%@ page import="com.connection.Conn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Table</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<%@include file="nav.jsp"%>
</head>
<body>
<section>
<div class="container p-5">
<div class="row">
<div class="col-md-10 offset-md-1">
<div class="card">
<div class="card-header text-center fs-4">Student Details</div>
<div class="card-body">
<table class="table">
<thead>
<tr>

<th scope="col">Id</th>
<th scope="col">Name</th>
<th scope="col">Email</th>
<th scope="col">Address</th>
<th scope="col">Password</th>
<th scope="col">Gender</th>
<th scope="col">Action</th>

</tr>
</thead>
<tbody>
<%
try{
	Connection con = Conn.getCon();
	String data = "select * from user";
	PreparedStatement ps = con.prepareStatement(data);
	ResultSet set = ps.executeQuery();
	while(set.next()){
		%>
		<tr>
	        <td><%=set.getString(1)%></td>
	        <td><%=set.getString(2)%></td>
	        <td><%=set.getString(3)%></td>
	        <td><%=set.getString(4)%></td>
	        <td><%=set.getString(5)%></td>
	        <td><%=set.getString(6)%></td>
	        <td>
	        <a href="edit.jsp?id=<%=set.getString(1)%>" class="btn btn-sm btn-primary">Edit</a>
	        <a href="delete.jsp?id=<%=set.getString(1)%>" class="btn btn-sm btn-danger">Delete</a>        
	        </td>        					
		</tr>
		<%		
	}
}
catch(Exception e){
	e.printStackTrace();	
}
%>
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>
</section>
</body>
</html>