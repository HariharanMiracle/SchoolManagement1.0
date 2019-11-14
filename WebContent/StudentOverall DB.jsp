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
		if(level != 3){
			response.sendRedirect("Login.jsp");
		}
	}
%> 
`<%

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		session.putValue("uid", username);
		int user = 0;
		
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
		Statement st= con.createStatement(); 
		ResultSet rs = st.executeQuery("select * from student where stid = '"+username+"'");
		
		if(rs.next()){
			String usn = rs.getString(1);
			String pass = rs.getString(15);
			if(password.equals(pass))
			{
				
				 response.sendRedirect("Student_Overall_Illust.jsp");
			}
			else
			{
				out.println("Invalid credentials");
				%><a href="Student Home.jsp">Home</a><%
			}
			
		}
		else
		{
			out.println("Invalid credentials");
			%><a href="Student Home.jsp">Home</a><%
		}
			
		
		
		%>
	
</body>
</html>