<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="oes.model.*" %>
<%@page import="oes.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Examination</title>
</head>
<body>
<%
	Instructions i = new Instructions();
	i.setInstruction(request.getParameter("inst"));
	int status = InstructionsDao.deleteRecord(i);
	if(status > 0)
		response.sendRedirect("InstructionList.jsp");
	else
		out.print("Error");
	
%>
</body>
</html>l>