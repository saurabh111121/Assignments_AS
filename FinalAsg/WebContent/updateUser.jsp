<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditUser.jsp</title>
</head>
<body>
<%@page import="com.assignment.dao.UserDao" %>
<jsp:useBean id="u" class="com.assignment.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u" />
  
<%  
int j=UserDao.update(u);  
if(j>0){  
	%>
	 <div class="alert alert-success" style="text-align: center;">
        <strong>Success! </strong>Updated
    </div> 
<% 	
}else{
	%>
<div class="alert alert-danger" style="text-align: center;">
        <strong>Failed! </strong>User doesn't exist
      </div>
<% 
} 
%>

</body>
</html>