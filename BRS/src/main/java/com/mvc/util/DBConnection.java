package com.mvc.util;
import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.SQLException; 
public class DBConnection { 
public static Connection createConnection() throws SQLException 
 { 
     Connection con = null; 
     String url = "jdbc:mysql://localhost:3306/mvcdb "; //MySQL URL followed by the database name 
     String username = "root"; //MySQL username 
     String password = "Tiger"; //MySQL password 
     System.out.println("In DBConnection.java class "); 
          try 
         { 
            Class.forName("com.mysql.jdbc.Driver"); //loading MySQL drivers. This differs for database servers
            con = DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database 
            System.out.println("Printing connection object "+con); 
         }  
         catch (ClassNotFoundException e) 
         { 
            e.printStackTrace(); 
         }        
      return con;  
 } 
}