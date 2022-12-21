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

    <title>Login</title>
	<style class="text/css">
	   body{
	         margin: 0;
	         padding: 0;
	         font-family: "Karla", sans-serif;
	         background-image:url("https://www.bmt.com/wp-content/uploads/2021/04/shutterstock_759694699-1536x864.jpg");
	   }
	   
	   
	
	</style>

    
  </head>
  
  <body>
  
  <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
    
    <a class="navbar-brand" href="/"><b>ABC Bank</b></a>
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent">
             <span class="navbar-toggler-icon"></span>
         </button>
		 <div class="collapse navbar-collapse" id="navbarContent">
		 </nav>
  
     <div class="container">
	 
	 
  <div class="container-fluid col-md-4">
  <br><br><br><br>
  <h2 align="center" class="text-light bg-dark"><b>${role} LOGIN</b></h2>
  
     <div  class="center container">
     <div class="box">
	<form:form action="/login" method="post" modelAttribute="login">
							<div class="form-group">
								<form:label for="userid" path="userid" class="sr-only">UserId</form:label>
								<form:input type="text" path="userid" name="Id" id="userid"
									class="form-control" placeholder="UserId" autocomplete="off" />
							</div>
							<div class="form-group mb-4">
								<form:label for="password" path="password" class="sr-only">Password</form:label>
								<form:input type="password" path="password" name="password"
									id="password" class="form-control" placeholder="password" />
							</div>
							<form:input type="hidden" path="role" name="role" id="role"
								value="${role}" />
								<br>
							<input name="login" id="login" class="btn btn-primary"
								type="submit" value="Login" />
						</form:form>
						</div>
						<br> <br>
						<p style="color: turquoise;" id="errorMessage">${msg}</p>

								
			
				</div>
	
	</div>
	</div>
     
  
</div>
     
     
  
  
  
  
  
  <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   	
	

</body>
</html>