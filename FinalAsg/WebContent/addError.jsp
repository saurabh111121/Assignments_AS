    <%@page import="java.sql.*,java.util.*,java.lang.*" %>
    <%
        String login_id = request.getParameter("q");    
        Class.forName("com.mysql.jdbc.Driver"); 
  		Connection	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root","Mic111121@/");
  	     Statement st= con.createStatement();
  	     ResultSet rs= st.executeQuery("select * from employee where login_id='"+login_id+"' ");
  	      if (!rs.next()) {
  	     
  	} else{
  		 %>

        	<div class="form-group text-center" >
                             <div class="alert alert-warning">
                                 <strong>Warning!</strong> User already exist.
                             </div>

<%
  	     
  	}

  	      %>
