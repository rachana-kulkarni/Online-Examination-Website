
package com.helper;
import java.sql.*;
public class ConnectionProvider 
{
 private static Connection con;
 public static Connection getConnection()
 {
     try
     {
         if(con==null)
         {
             //driver class load
         Class.forName("com.mysql.jdbc.Driver");
         //create connection
         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","root");
         }
             
     }catch(Exception e)
     {
         e.printStackTrace();
     }
     return con;
 }
}
