<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html charset="ISO-8859-1">
<title>Bus Search Page</title>
</head>
<style>
button:hover {
  opacity:1;
}
body {
  background-image: url('101.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
   background-size: cover;
  
}
</style>
<body>
<div align="center">   
	<h1 class="text-white align-center" style="color:Red">Search Here!</h1>  
</div>
<center>
<form action="Welcome1.html">     
<label>Source</label>
 	<select name="src" id="src" placeholder="enter Ticket price">
 		<option value="Bangalore">Bangalore</option>
 		<option value="Belgavi">Vizag</option>
 		<option value="Chennai">Chennai</option>
 		<option value="Delhi">Delhi</option>
 		<option value="Mumbai">Mumbai</option>
 		<option value="Hyderabad">Hyderabad</option>
 	</select>
<label>Destination</label>
	<select name="des" id="des">
 		<option value="Banglore">Banglore</option>
 		<option value="Belgavi">Vizag</option>
 		<option value="Chennai">Chennai</option>
 		<option value="Delhi">Delhi</option>
 		<option value="Mumbai">Mumbai</option>
 		<option value="Hyderabad">Hyderabad</option>
	</select> 
<label>Date</label>
<input type=Date name="date" placeholder="enter Ticket price">
<input type="submit" value="Search Bus">
</center>
</form>
</body>
</html>