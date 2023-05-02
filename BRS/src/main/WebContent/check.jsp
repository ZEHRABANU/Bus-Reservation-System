<%@ page import ="java.util.*,java.sql.*,java.io.*"%>
<%!String JDBC_DRIVER = "com.mysql.jdbc.Driver";%>
   <%!String DB_URL = "jdbc:mysql://localhost:3306/mvcdb";%>
   <%!String USER = "root";%>
   <%!String PASS = "Tiger";%>
   <%!Connection con = null;%>
<%
	Statement st=null;
	ResultSet rs=null;
		 String s1=request.getParameter("FullName");
		 String s2=request.getParameter("pwd");
		 String s3=request.getParameter("UserName");
	try
	{
		 Class.forName(JDBC_DRIVER);
		   con=DriverManager.getConnection(DB_URL,USER,PASS);
		   st=con.createStatement();
		
		   if(s3.equals("users"))
		   {
			   session.setAttribute("UserName",s3);
			   String sql="SELECT *FROM users where UserName='"+s3+"'AND pwd='"+s2+"'";
			  rs=st.executeQuery(sql);
			   if(rs.next())
			   {
				   response.sendRedirect("User.jsp");
			   }
			   else
			   {
					response.sendRedirect("UserError.jsp");
			   }
		   }
		   else if(s3.equals("admin"))
		   {
			 String sql="SELECT *FROM admin where id='"+s1+"'AND pwd='"+s2+"'";
			   rs=st.executeQuery(sql);
			   if(rs.next())
			   {
				   response.sendRedirect("AdminFront.jsp");
			   }
			   else
			   {
					response.sendRedirect("AdminError.jsp");
			   } 
		   }
	}catch(Exception e)
	{
		out.println(e);
	}
	finally
	{
		try
		{
			rs.close();
		st.close();
		con.close();
		}catch(Exception e){}
		
	}
%>