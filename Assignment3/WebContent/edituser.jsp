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
int i=UserDao.update(u);  
//response.sendRedirect("table.jsp");  
if(i>0){  
response.sendRedirect("table.jsp");  
}else{  
response.sendRedirect("editUserError.jsp");  
} 
%>  

</body>
</html>