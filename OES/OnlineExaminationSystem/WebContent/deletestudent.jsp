<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="oes.dao.*" %>
<%@page import="oes.model.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>
	<%
	Students s = new Students();
	s.setUsername(request.getParameter("username"));
	int status = StudentsDao.deleteRecord(s);
	if(status > 0)
		response.sendRedirect("StudentList.jsp");
	else
		out.print("Error");
	%>
</body>
</html>