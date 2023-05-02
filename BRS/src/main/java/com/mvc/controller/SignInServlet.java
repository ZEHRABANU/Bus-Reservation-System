package com.mvc.controller; 
 
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mvc.bean.SignInDao;   
public class SignInServlet extends HttpServlet 
{   
public void doPost(HttpServletRequest request, HttpServletResponse response)  
    throws ServletException, IOException {   
    response.setContentType("text/html");   
    PrintWriter out = response.getWriter();   
    String n=request.getParameter("username");   
    String p=request.getParameter("password");  
    if(SignInDao.validate(n, p)){   
        RequestDispatcher rd=request.getRequestDispatcher("Welc.jsp");   
        rd.forward(request,response);   // move to success page 
    }
    else{   
        out.print("Sorry username or password error");   
        RequestDispatcher rd=request.getRequestDispatcher("SignIn.jsp");   
        rd.include(request,response);    // display same page  
    }   
           
    out.close();   
} 
}
    