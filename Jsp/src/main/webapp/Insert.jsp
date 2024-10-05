<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<%@include file="nav.jsp"%>

<section>
<div class="container">
<div class="row mt-4 mb-4">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-header text-center">
<p class="fs-4">Add_Student</p>
<%
String msg1 = request.getParameter("msg");
if("ins".equals(msg1))
{
	%>
	<h2>Registration Successful</h2>
	<% 	
}
String msg2 = request.getParameter("msg");
if("notins".equals(msg2))
{
	%>
	<h2>Registration Failed</h2>
	<% 	
}
%>
</div>
<div class="card-body">
<form action="saveStudent.jsp" method="post">

<div class="mb-3">
<label for="inputName" class="form-label">Name:</label>
<input type="text" name="name" class="form-control" placeholder="Enter Name">
</div>

<div class="mb-3">
<label for="inputEmail" class="form-label">Email:</label>
<input type="email" name="email" class="form-control" placeholder="Enter Email">
</div>

<div class="mb-3">
<label for="inputAddress" class="form-label">Address:</label>
<input type="text" name="address" class="form-control" placeholder="Enter Address">
</div>

<div class="mb-3">
<label for="inputPassword" class="form-label">Password:</label>
<input type="password" name="password" class="form-control" placeholder="Enter Password">
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

<button type="submit" class="btn btn-primary">Submit</button>

</form>
</div>
</div>
</div>
</div>
</div>
</section>
</body>
</html>