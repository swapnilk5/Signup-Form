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
session=request.getSession();
String email = (String)session.getAttribute("email").toString();
out.print("Welcome "+email+" ");
%>
<a href ="logout.jsp">Logout</a>
</body>
</html>