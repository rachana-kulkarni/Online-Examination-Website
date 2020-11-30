/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;
import com.entities.User;
import java.sql.*;
public class UserDao {
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
//method to insert user to database
    public boolean saveUser(User user)
    {
                   boolean f=false;
       try
       { 
           //user -->database

           String query="insert into user(name,email,password,gender) values(?,?,?,?)";
           PreparedStatement pstmt=this.con.prepareStatement(query);
           pstmt.setString(1, user.getName());
           pstmt.setString(2, user.getEmail());
           pstmt.setString(3, user.getPassword());
           pstmt.setString(4, user.getGender());
           pstmt.executeUpdate();
           f=true;
       }catch(Exception e)
       {
           e.printStackTrace();
       }
       return f;
    }
    //get user by useremail and password
   
        
        
    public User getUserValidation(String email,String password){
        User user=null;
        try{
            String query="select * from user where email=? and password=?";
        PreparedStatement pstmt=con.prepareStatement(query);
        pstmt.setString(1,email);
        pstmt.setString(2, password);
        
        
       ResultSet set=pstmt.executeQuery();
        if(set.next())
        {
            
            user=new User();
            //data from db
            String name=set.getString("name");
            //set to user object
            user.setName(name);
            
            user.setId(set.getInt("id"));
            user.setEmail(set.getString("email"));
            user.setPassword(set.getString("password"));
            user.setGender(set.getString("gender"));
            user.setDateTime(set.getTimestamp("rdate"));
        }
        }catch(Exception e)
        {
        e.printStackTrace();
        }
            
        return user;
    }
}
