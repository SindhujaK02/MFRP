<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="/css/home.css" rel="stylesheet">
<title>Logout Page</title>
<style class="text/css">
	   body{
	         
	         font-family: "Karla", sans-serif;
	         background-image:url("https://www.bmt.com/wp-content/uploads/2021/04/shutterstock_759694699-1536x864.jpg");
	   }
	  
	#login-box {
  position: relative;
  margin: 10% auto;
  width: 300px;
  height: 300px;
  
  border-radius: 2px;

}
h1{
     padding: 10px 25px;
     color:#07f2f2;
}
button {
  margin: 20px;
 
}
.custom-btn {
  width: 110px;
  height: 50px;
  color: white;
  border-radius: 5px;
  padding: 10px 25px;
  font-family: 'Lato', sans-serif;
  font-weight: 500;
  background: darkblue;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
   box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
   7px 7px 20px 0px rgba(0,0,0,.1),
   4px 4px 5px 0px rgba(0,0,0,.1);
  outline: none;
     
}
.btn-2:hover {
  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),
              -4px -4px 6px 0 rgba(116, 125, 136, .5), 
    inset -4px -4px 6px 0 rgba(255,255,255,.2),
    inset 4px 4px 6px 0 rgba(0, 0, 0, .4);
}
	</style>

</head>
<body>
	<%
		response.setHeader("cache-control", "no-cache , no-store , must-revalidate");
		response.setHeader("pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		if (session == null) {
		%>
		<c:redirect url="/" />
		<%
		}
		%>

     <div id="login-box" align="center"> 
         <h1>ABC Bank</h1>
           <form action="/logout" method="get">
             <button class="custom-btn btn-2 " >Logout</a></button>
           </form>
         
    </div>
</body>
</html>