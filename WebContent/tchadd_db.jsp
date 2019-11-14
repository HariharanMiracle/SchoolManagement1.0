<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- Not Mine -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a teacher to DB</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%	
		String id = request.getParameter("Id");
		String name = request.getParameter("Name");
			
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/itp", "root", ""); 
		Statement st= con.createStatement(); 
		ResultSet rs;  
	
		int i=st.executeUpdate("insert into teacher (`Teacherid`, `Teachername`) values ('"+id+"','"+name+"')");
		out.println("<h1>Teacher added successfully!</h3>");
	%>
</body>
</html>