<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
</head>
<body>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Mail id</th>
		</tr>
		<c:forEach items="${users}" var="user">
			<tr>
				<th>${user.id}</th>
				<th>${user.name}</th>
				<th>${user.email}</th>
			</tr>
		</c:forEach>
	</table>





</body>
</html>