<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Employee Dashboard</title>
	<style class="text/css">
	   body{
	         margin: 0;
	         padding: 0;
	         font-family: "Karla", sans-serif;
	         background-image:url("https://www.bmt.com/wp-content/uploads/2021/04/shutterstock_759694699-1536x864.jpg");
	         background-attachment: fixed;
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
 <body >


	<%
		response.setHeader("cache-control", "no-cache , no-store , must-revalidate");
		response.setHeader("pragma", "no-cache");
		response.setDateHeader("Expires", 0);

		if (session.getAttribute("userId") == null || session.getAttribute("token") == null) {
	%>
	<c:redirect url="/403" />
	<%
		}
	%>
  
  <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
    
    <a class="navbar-brand" href="#"><b>ABC Bank</b></a>
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
	<div class="container-fluid">
		<h1 align="center" class="text-light"><b>Employee Dashboard</b></h1><br>
		
		<div class="row">
	         <div class="col-sm-4">
	             <div class="card" style="width:24rem">  
	                 <div class="card-body bg-dark">
		                  <h4 class="card-title text-light"> <b>Create Customer</b> </h4><br>
	                      <h6 class="text-light"> Click on button to create customer.</h6>
						  <br><br>
						  <div class="text-right">
	                      
	                      <a href="/createCustomer" class="btn btn-outline-light">Create</a></div>
	                      <p style="color: skyblue; padding-left: 20;" id="message"> ${custmsg}</p>
	                    </div>
	                </div>
	             </div>
	
	
	<div class="col-sm-4">
	     <div class="card" style="width:24rem">  
	         <div class="card-body bg-dark">
		         <h4 class="card-title text-light"> <b>Create Account</b> </h4><br>
				 
		    
			
			<form action="/createAccount" method="post">
							<input type="text" name="customerId" placeholder="Enter the CustomerId" autocomplete="off"/>
							<br> <br> <input type="submit" name="View" value="Create Account" class="btn btn-outline-light" />
						</form><br>
						<p style="color: skyblue; " id="message">${accmsg}</p>
	         </div>
	     </div>
	</div>
	
	<div class="col-sm-4">
	     <div class="card" style="width:24rem">  
	         <div class="card-body bg-dark">
		         <h4 class="card-title text-light"> <b>Delete Customer</b> </h4><br>
		         <form action="/deleteCustomer" method="post">
							<input type="text" name="customerId" id="customerId" placeholder="Enter the customerId" autocomplete="off"/>
							<br> <br> <input type="submit" name="Delete" value="Delete" class="btn btn-outline-light" />
						</form><br>
						<p style="color: skyblue; " id="message">${deletemsg}</p>
		         
		       </div>  
	          
	     </div>
	</div>
	
	</div>
	
	<br><br><br>
	
	<div class="row">
	         <div class="col-sm-4">
	             <div class="card" style="width:24rem">  
	                 <div class="card-body bg-dark">
		                  <h4 class="card-title text-light"> <b>View the Customer</b></h4><br>
						  <form action="/viewCustomer" method="get">
							<input type="text" name="userId" id="userId" placeholder="Enter the CustomerId" autocomplete="off"/>
							<br> <br> <input type="submit" name="View" value="View"
								class="btn btn-outline-light" />
						</form><br>
						<p style="color: skyblue; " id="message">${viewmsg}</p>
						
	                    </div>
	                </div>
	             </div>
	
	
	<div class="col-sm-4">
	     <div class="card" style="width:24rem">  
	         <div class="card-body bg-dark">
		         <h4 class="card-title text-light"> <b>Deposit Amount</b> </h4>
				 <form action="/deposit" method="post">
							<input type="number"  name="accountId" placeholder="Enter the AccountId" autocomplete="off"/><br><br>	
							<input type="number" name="amount" placeholder="Enter the amount" autocomplete="off"/>
							<br> <br>
							<input type="submit" name="View" value="Deposit Amount" class="btn btn-outline-light" />
						</form>
						<p style="color: skyblue; " id="message">${msg}</p>
			
	         </div>
	     </div>
	</div>
	
	<div class="col-sm-4">
	     <div class="card" style="width:24rem">  
	         <div class="card-body bg-dark">
		         <h4 class="card-title text-light"> <b>Service Charges Deduction</b> </h4><br><br>
	             <h6 class="text-light"> Charges will be deducted for not maintaining the minimum balance. </h6>
	             <form action="/deductServiceTax" method="post"><br>
                         <input type="submit" name="View" value="Deduct" class="btn btn-outline-light" />
						</form><br>
						<p style="color: skyblue; " id="message">${servicemsg}</p>
			
	         
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
