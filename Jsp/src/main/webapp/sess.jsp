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
String email = request.getParameter("email");
String pass = request.getParameter("pass");

if(email.equals("admin@gmail.com") && pass.equals("123"))
{
	session = request.getSession();
	session.setAttribute("email",email);
	response.sendRedirect("welcome.jsp");
}

else
{
	response.sendRedirect("session.jsp?msg=notValid");
}
%>

</body>
</html>