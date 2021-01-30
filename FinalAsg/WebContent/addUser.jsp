<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.assignment.dao.UserDao" %>
<jsp:useBean id="u" class="com.assignment.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u" />

<%
int i = UserDao.save(u);
if(i>0){  
	%>
	 <div class="alert alert-success" style="text-align: center;">
        <strong>Success! </strong>User added
    </div> 
<% 	
}else{
	%>
<div class="alert alert-danger" style="text-align: center;">
        <strong>Failed! </strong>User already exist
      </div>
<% 
} 
%>
</body>
</html>