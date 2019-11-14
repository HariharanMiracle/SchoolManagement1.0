<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="java.util.Date" %>

<%
	String uid = (String)session.getAttribute("uid");
	if(uid == null){
		response.sendRedirect("Login.jsp");
	}
	else{
		int level = (int)session.getAttribute("level");
		if(level != 1){
			response.sendRedirect("Login.jsp");
		}
	}
	%>

	<%	
	

		String tid = request.getParameter("tid");
		String fname = request.getParameter("fname");
		String sname = request.getParameter("sname");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String qualification=request.getParameter("qualification");
	
		String mobile =request.getParameter("mobile");
		String nic =request.getParameter("nic");
		String marital =request.getParameter("martial_status");
		String address =request.getParameter("address");
		String user =request.getParameter("user");
		String pass = request.getParameter("pass");
		
		/* String qualification=request.getElementById("myTextarea").value; */
		String admin=uid;
		int user_level=2;
			
			
		/* Class.forName("com.mysql.jdbc.Driver");  */
		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root",""); 
		Statement st= con.createStatement(); 
		ResultSet rs;
		
		int j=st.executeUpdate("INSERT INTO user_account VALUES ('"+user+"','"+pass+"','"+user_level+"')");
		int i=st.executeUpdate("INSERT INTO teacher VALUES ('"+tid+"', '"+fname+"', '"+sname+"', '"+gender+"', '"+mobile+"', '"+address+"', '"+nic+"', '"+marital+"', '"+qualification+"','"+admin+"', '0.0', '0.0','"+user+"', '','' )");
	
		out.println("<h1>Teacher added successfully!</h3>"); 
		
	%>
</body>
</html>