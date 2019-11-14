<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="java.util.Date" %>

	<%	
		String id = request.getParameter("Id");
		String fname = request.getParameter("fname");
		String sname = request.getParameter("sname");
		String mobile =request.getParameter("mobile");
		String address=request.getParameter("add");
		String pass=request.getParameter("password");
		String nic=request.getParameter("nic");
		String aid = request.getParameter("admin");
		
		
			
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
		Statement st= con.createStatement(); 
		ResultSet rs;
		  
		int i=st.executeUpdate("insert into admin values ('"+id+"','"+fname+"','"+sname+"','"+address+"','"+nic+"','"+mobile+"','"+aid+"')");
		//int i = st.executeUpdate("insert into `employee` values ('"+id+"', '"+fname+"')");
		out.println("<h1>User added successfully!</h3>");
	%>
</body>
</html>