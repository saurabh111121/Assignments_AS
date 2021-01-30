<%@page import="java.sql.*,java.util.*,java.lang.*" %>
    <%
        String login_id = request.getParameter("q");    
        Class.forName("com.mysql.jdbc.Driver"); 
  		Connection	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root","Mic111121@/");
  	     Statement st= con.createStatement();
  	     ResultSet rs= st.executeQuery("select * from employee where login_id='"+login_id+"' ");
  	    
  	   while(rs.next()){
	    	 out.print(rs.getString("site")+"," + rs.getString("name")+"," + rs.getInt("employee_id")+"," + rs.getString("department"));
	     }
     %>
