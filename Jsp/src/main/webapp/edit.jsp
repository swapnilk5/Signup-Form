<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.connection.Conn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<%@include file="nav.jsp"%>
</head>
<body>
<%
String id = request.getParameter("id");
int i=0;
try
{   
	Connection con= Conn.getCon();
	String ds = "select * from user where id="+id;
	PreparedStatement ps = con.prepareStatement(ds);
	ResultSet rs = ps.executeQuery();
while(rs.next())
	{
	

%>
<section>
<div class="container">
<div class="row mt-4">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-header text-center">
<p class="fs-4">Edit_Student</p>

</div>
<div class="card-body">
<form action="editStudent.jsp" method="post">

<div class="mb-3">
<label for="id" class="form-label">ID:</label>
<input type="hidden" name="id" class="form-control" id="id" 
 value="<%=rs.getString(1)%>">
</div>

<div class="mb-3">
<label for="inputName" class="form-label">Name:</label>
<input type="text" name="name" class="form-control" placeholder="Enter Name"
 value="<%=rs.getString(2)%>">
</div>

<div class="mb-3">
<label for="inputEmail" class="form-label">Email:</label>
<input type="email" name="email" class="form-control" placeholder="Enter Email"
 value="<%=rs.getString(3)%>">
</div>

<div class="mb-3">
<label for="inputAddress" class="form-label">Address:</label>
<input type="text" name="address" class="form-control" placeholder="Enter Address"
 value="<%=rs.getString(4)%>">
</div>

<div class="mb-3">
<label for="inputPassword" class="form-label">Password:</label>
<input type="password" name="password" class="form-control" placeholder="Enter Password"
 value="<%=rs.getString(5)%>">
</div>

<div class="mb-3">
<label for="inputGender" class="form-label">Gender:</label>

<div class="form-check form-check-inline">
<input class="form-check-input" type="radio" id="radio1" name="gender" value="Male">
<label class="form-check-label" for="inlineCheckBox1">Male</label>
</div>

<div class="form-check form-check-inline">
<input class="form-check-input" type="radio" id="radio2" name="gender" value="Female">
<label class="form-check-label" for="inlineCheckBox2">Female</label>
</div>
</div>

<button type="submit" class="btn btn-primary">Save</button>

</form>
</div>
</div>
</div>
</div>
</div>
</section>
<%
}
}
catch(Exception e){
	 e.printStackTrace();
}

%>
</body>
</html>