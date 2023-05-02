<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>User Login</title>
	<meta name="viewport" content="width=device-width, initialscale=1">  
	<link rel="stylesheet" type="text/css" href="bootstrap.css">   
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/fontawesome.min.css">
</head>
<style>
button:hover {   
	opacity:1; 
} 
body {   
	background-image: url('103.jpg');   
	background-repeat: no-repeat;   
	background-attachment: fixed;      
	background-size: cover;    
}
</style>
<body>
<div align=center>   
	<h1 class="text-white align-center" style="color:Red">Login Here!</h1>  
</div>   
<form action="Welc.jsp"> 
<div class="form-group" align="center">    
	<label class="text-white font-weight-bold"  for="username"><b>user name :</b> </label>
	<input type="username" id="username" name="username" class="form-control" placeholder="user name">
</div><br><br>
<div class="form-group" align="center"> 
 	<label class="text-white font-weight-bold"  for="password"><b>Password : </b></label>
 	<input type="password" id="pass" name="password" class="formcontrol" placeholder="password"> 
 </div><br>
 <br>
     
 <div align="center">      
 	<input type=submit value=login></input>      
 	<input type=reset></input>            
 </div>     
</form>   
</body>
</html>