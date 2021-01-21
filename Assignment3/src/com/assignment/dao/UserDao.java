package com.assignment.dao;

import java.util.*;
//import java.awt.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.assignment.bean.User;
//import com.mysql.jdbc.PreparedStatement;

//JDBC Stuff || data access Objective
public class UserDao {
	
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root","Mic111121@/");
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		return con;
	}
	
	public static int save(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps= con.prepareStatement("insert into employee(login_id,name,employee_id,site,department) values(?,?,?,?,?)");  
	        ps.setString(1,u.getLogin_id());  
	        ps.setString(2,u.getName());  
	        ps.setInt(3,u.getEmployee_id());  
	        ps.setString(4,u.getSite());  
	        ps.setString(5,u.getDepartment());  
	        status=ps.executeUpdate();  
	    }
	    catch(Exception e){System.out.println(e);}  
	    return status; 
	}
	
	public static int update(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("update employee set login_id=?,name=?,employee_id=?,site=?,department=? where login_id=?");  
	        ps.setString(1,u.getLogin_id());  
	        ps.setString(2,u.getName());  
	        ps.setInt(3,u.getEmployee_id());  
	        ps.setString(4,u.getSite());  
	        ps.setString(5,u.getDepartment());
	        ps.setString(6,u.getLogin_id());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	
	public static List<User> getAllRecords(){  
	      List<User> list = new ArrayList<User>();
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from employee");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            User u=new User();  
	            u.setLogin_id(rs.getString("login_id"));  
	            u.setName(rs.getString("name"));  
	            u.setEmployee_id(rs.getInt("employee_id"));  
	            u.setSite(rs.getString("site"));  
	            u.setDepartment(rs.getString("department"));  
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	} 

	

}
