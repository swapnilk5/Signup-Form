<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<%
String msg = request.getParameter("msg");
if("notValid".equals(msg))
{
	
	%>
	<h3>Invalid Username or Password!</h3>
	<% 
}
%>
<h1 class="text-center">Session in Jsp</h1>
<div class="container">
<div class="row offset-4">
<div class="col-4">
<form action ="sess.jsp">

<div class="mb-3">
<label for="email" class="form-label" >Email</label>
<input type="email" class="form-control" id="email" name="email">
</div>

<div class="mb-3">
<label for="pass" class="form-label" >Password</label>
<input type="password" class="form-control" id="pass" name="pass">
</div>

<button type="submit" class="btn btn-primary">Submit</button>

</form>
</div>
</div>
</div>
</body>
</html>