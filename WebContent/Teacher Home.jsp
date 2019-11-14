<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String uid = (String)session.getAttribute("uid");
	if(uid == null){
		response.sendRedirect("Login.jsp");
	}
	else{
		int level = (int)session.getAttribute("level");
		if(level != 2){
			response.sendRedirect("Login.jsp");
		}
	}
	
	
%>

<H1>Teacher Home</H1>

<a href='overalldetails_studentsearch.jsp'><input type="button" value="Student Progress"></a>


</body>
</html>