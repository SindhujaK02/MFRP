<%@page import="java.net.http.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Customer Login</title>
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
<div align="center">
		
		
	<%
		
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
	<h1 align="center" class="text-white"><u>Customer Account Creation</u></h1><br>
	<div class="container-fluid col-md-4">
		
		
		



<div  class="center card-body bg-dark container">

			    <form:form action="/finishedCustomerCreation" method="post" modelAttribute="customer">
			<div class="row">
	
				<label for="customerId" style="text-align: left; color:#cccccc";>Enter Customer Id:</label>
				<div class="center">
				    <form:input type="text" class="form-control form-rounded" 
				    path="userid" name="Id" placeholder="Enter Id" autocomplete="off" required="required"/><br></div>
					
				
				<label for="username" style="text-align: left; color:#cccccc";>Enter User name:</label>
				<div class="center">
				<form:input type="text" class="form-control form-rounded" path="username" name="username" 
				placeholder="Enter Username" autocomplete="off" required="required"/><br></div>
				
				<label for="password" style="text-align: left; color:#cccccc";>Enter Password:</label>
				<div class="center">
				<form:input type="password" class="form-control form-rounded" 
				path="password" name="password" placeholder="Enter Password" required="required"/><br></div>
					
				<label for="dateOfBirth" style="text-align: left; color:#cccccc";>Enter Date Of Birth:</label>
				<div class="center">
				<form:input type="date" class="form-control form-rounded" id="date" 
				path="dateOfBirth" name="dob" placeholder="Date of Birth"/><br></div>
				
				<label for="pan" style="text-align: left; color:#cccccc;">Enter Pan Number: </label>
				<div class="center">
				<form:input type="text" class="form-control form-rounded" path="pan" name="pan"
				 placeholder="Pan Number" autocomplete="off" required="required"/>
				<br></div>

				<label for="address" style="text-align: left; color:#cccccc;">Enter Address: </label>
				<div class="center">
				<form:input type="text" class="form-control form-rounded" path="address" name="address"
				 placeholder="Address" autocomplete="off" required="required"/>  
				<br></div>
				</div>
				
				<button type="submit" class="btn btn-outline-light" name="signup_submit"> Create Customer </button>
				
				<button type="reset" class="btn btn-outline-light" style="margin-left: 50px;" > Clear</button></div>
				
				</div>
				

			</form:form>
		
			
		

	
	</div>
</body>
</html>
	