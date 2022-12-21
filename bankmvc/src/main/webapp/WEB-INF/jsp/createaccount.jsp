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
	         background-image:cover;
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
		response.setHeader("pragma", "no-cache"); //(name,value)
		response.setDateHeader("Expires", 0); //(name,date)

		if (session.getAttribute("userId") == null || session.getAttribute("token") == null) {
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
	<h1 align="center" class="text-white">Customer Account Creation</h1><br>
	<div class="container-fluid col-md-4">
		
		
		



<div  class="center card-body bg-dark container">

			<form:form action="/finishedAccountCreation" method="post"
				modelAttribute="account">
			<div class="row">
	
				<label for="customerId" style="text-align: left; color:#cccccc";>Enter Customer Id:</label>
				<div class="center">
				<form:input type="text" class="form-control form-rounded" path="customerId" name="customerId"
					value="${customerId}" readonly="true" /><br></div>
					
				
				<label style="text-align: left; color:#cccccc";>Enter Account No:</label></div>
				<div class="center">
				<input type="number" class="form-control form-rounded" path="accountId" name="accountId"
					placeholder="AccountId" autocomplete="off" required="required"/><br></div>
				
				<label style="text-align: left; color:#cccccc";>Amount:</label>
				<div class="center">
				<input type="number" class="form-control form-rounded" path="currentBalance"
					name="currentBalance" placeholder="Amount" autocomplete="off" required="required"/><br></div>
					
				<label style="text-align: left; color:#cccccc";>Select Account Type:</label>
				<div class="center">
				<form:select type="text" class="form-select" path="accountType" placeholder="Account Type" name="accountType" autocomplete="off" required="required">
					<form:option value="Savings"></form:option>
					<form:option value="Current"></form:option>
				</form:select><br></div>
				
				<label style="text-align: left; color:#cccccc";>Enter Owner Name:</label>
				<div class="center">
				<form:input type="text" class="form-control form-rounded" path="ownerName" name="ownerName"
					placeholder="OwnerName" autocomplete="off" required="required"/>
				<br></div>

				
				<button type="submit" class="btn btn-outline-light" name="signup_submit"> Create Account </button>
				
				<button type="reset" class="btn btn-outline-light" style="margin-left: 50px;" > Clear</button></div>
				

			</form:form>
		
			
		

	</div>
	</div>
</body>
</html>
	