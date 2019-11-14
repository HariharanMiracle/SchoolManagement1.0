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
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		session.putValue("uid", username);
		int user = 0;
		//String id = (String)session.getAttribute("uid");
		
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
		Statement st= con.createStatement(); 
		ResultSet rs = st.executeQuery("select * from `user_account` where uid = '"+username+"'");
		
		if(rs.next()){
			String usn = rs.getString(1);
			String pass = rs.getString(2);
			user = Integer.parseInt(rs.getString(3));
			if(password.equals(pass)){
				if(user == 1){
					//Admin page
					session.putValue("level", user);
					response.sendRedirect("adminHome.jsp");
				}
				else if (user == 2){
					//Teacher page
					session.putValue("level", user);
					response.sendRedirect("teacherHome.jsp");
				}
				else if(user == 3){
					//Student page
					session.putValue("level", user);
					response.sendRedirect("studentHome.jsp");
				}
				else if(user == 4){
					//Student page
					session.putValue("level", user);
					response.sendRedirect("Staff.jsp");
				}
				
				else{
					session.putValue("level", user);
					out.println("Invalid credentials");	
					%><a href="Login.jsp">LOGIN</a><%
				}
			}
			else{
				out.println("Invalid credentials");
				%><a href="Login.jsp">LOGIN</a><%
			}
		}
		else{
			out.println("Invalid credentials");
			%><a href="Login.jsp">LOGIN</a><%
		}
		
		
%>
</body>
</html>