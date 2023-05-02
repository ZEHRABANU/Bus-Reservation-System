<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html charset="ISO-8859-1">
<title>Register</title>
</head>
<style>
button:hover {
  opacity:1;
}
body {
  background-image: url('104.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
   background-size: cover;
  
}
</style>
<body>
<center><h2>User Register</h2></center>
    <form name="form" action="Register1.html" method="post" >
        <table align="center">
         <tr>
         <td> <label for="FullName">Enter FullName:</label><td>
         <td><input type="text" name="fullname" required autofocus/></td>
         </tr>
         <tr>
         <td> <label for="email">Enter Email:</label><td>          
         <td><input type="Email" name="email"></td>
         </tr>
         <tr>
         <td> <label for="userName">Enter UserName:</label><td>
         <td><input type="text" name="username" required/></td>
         </tr>
         <tr>
         <td> <label for="Password">Password:</label><td>
         <td><input type="password" name="password" required/></td>
         </tr>          
         <tr>
         <td><%=(request.getAttribute("errMessage") == null) ? "": request.getAttribute("errMessage")%></td>
         </tr>
         <tr>
         <td></td>
         
         <td><input type="submit" value="Register"></input>
         <input type="reset" value="Reset"></input></td>
         
         
        </tr>
        </table> 
         
    </form>
</body>
</html>