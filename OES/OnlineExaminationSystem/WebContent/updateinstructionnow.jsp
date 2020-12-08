<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="oes.dao.InstructionsDao"%>
<%@page import="oes.model.Instructions"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>
	<%
	String instoriginal = request.getParameter("instoriginal");
    String instmodified = request.getParameter("instmodified");
    
	int status = InstructionsDao.doUpdateNowRecord(instoriginal,instmodified);
	if(status > 0) {
		response.sendRedirect("InstructionList.jsp");
	}
	
	else if(status == -1) {
		out.print("error from databse");
	}
	else {
		out.print("excepion occured");
	}
	%>
</body>
</html>