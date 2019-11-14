<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- Not Mine -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
	<%
			String id = request.getParameter("t_id");
			//out.println(id);
	
			Class.forName("com.mysql.jdbc.Driver"); 
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
			Statement st= con.createStatement(); 
			ResultSet rs = st.executeQuery("select * from teacher where tid = '"+id+"'"); 
			
			if(rs.next()){
				String name = rs.getString(2);
				%><input type = "text" name = "t_name" value = "<%out.println(name);%>"><%	
			
	
			}else{
				%>
					<h3>Something went wrong</h3>
				<%
			}
	%>
</body>
</html>