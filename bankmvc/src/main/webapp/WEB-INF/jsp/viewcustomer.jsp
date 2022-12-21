<%@page import="java.net.http.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Create Account</title>
	<style class="text/css">
	   body{
	         margin: 0;
	         padding: 0;
	         font-family: "Karla", sans-serif;
	         background-image:url("https://www.bmt.com/wp-content/uploads/2021/04/shutterstock_759694699-1536x864.jpg");
	   }
	   ul {
			list-style-type: none;
			margin: 0;
			padding: 0;
			overflow: hidden;
			background-color: #333;
			}

			li {
			float: left;
			}

			li a {
			display: block;
			color: white;
			text-align: center;
			padding: 14px 16px;
			text-decoration: none;
			}

			li a:hover:not(.active) {
			background-color: blue;
			}
	   
	
	</style>

    
  </head>

<body>
		<%
		response.setHeader("cache-control", "no-cache , no-store , must-revalidate");
		response.setHeader("pragma", "no-cache");
		response.setDateHeader("Expires", 0);

		if (session.getAttribute("token") == null) {
	%>
	<c:redirect url="/403" />
	<%
		}
	%>
	<nav class="navbar navbar-expand-lg bg-dark navbar-dark">
    
    <a class="navbar-brand" href="/dashboard"><b>ABC Bank</b></a>
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent">
             <span class="navbar-toggler-icon"></span>
         </button>
    
         <div class="collapse navbar-collapse " style="justify-content:flex-end; width:100%;" id="navbarContent">
	
             <ul class="navbar-nav ml-auto " >
                 <li class="active nav-item "><a class="nav-link " href="/logoutPage" style="color:white;"><u>Logout</u></a></li>
             </ul>
         </div>
  </nav>
	<br>
	<div class="container-fluid col-md-5">
		<h1 align="center" class="text-white"><u>Customer Details</u></h1>
		
		
	<div class="container">
     
	<table class="table text-light bg-dark">
		<tbody>
			<tr>
				<td>CUSTOMER ID</td>
				<td><c:out value="${customer.userid}" /></td>
			</tr>
			<tr>
				<td>Account holder's name</td>
				<td><c:out value="${customer.username}" /></td>
			</tr>
			<tr>
				<td>DOB</td>
				<td><c:out value="${customer.dateOfBirth}" /></td>
			</tr>
			<tr>
				<td>PAN</td>
				<td><c:out value="${customer.pan}" /></td>
			</tr>
			<tr>
				<th>ADDRESS</th>
				<td><c:out value="${customer.address}" /></td>
			</tr>
			</tbody>
			
							
							
							
	</table>
	<br><br>
	</div></div>
				
		<div class="container-fluid col-md-7">		
			<h1 align="center" class="text-white"><u>Account Details</u></h1>
		</div>
		
	<div class="container">	
			
			<table class="table text-light bg-dark" border="2" cellpadding="5" style="width: 900;">
						<tr>
							<th>ACCOUNT ID</th>
							<th>CURRENT BALANCE</th>
							<th>ACCOUNT TYPE</th>
							<th>OWNER NAME</th>
						</tr>
						<c:forEach var="acc" items="${customer.accounts}">
						<tr>
								
									<td><c:out value="${acc.accountId}" /></td>
									<td><c:out value="${acc.currentBalance}" /></td>
									<td><c:out value="${acc.accountType}" /></td>
									<td><c:out value="${acc.ownerName}" /></td>
						</tr>
						</c:forEach>
						
					</table>

	
		

	
</body>
</html>


		
	