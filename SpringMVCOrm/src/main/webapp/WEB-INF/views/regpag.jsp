<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration page</title>
</head>
<body>
<form action="registerUser" method="post">
Id:<input type="text" path="id" name="id"/>
Name:<input type="text" path="name" name="name"/>
Email:<input type="text" path="email" name="email"/>
<input type="submit" value="Register">
</form>
<hr>
<b>${result}</b>
</body>
</html>