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
		String adminid = request.getParameter("adminid");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String address = request.getParameter("address");
		String mobile = request.getParameter("mobile");
		String nic=request.getParameter("nic");
		String active=request.getParameter("active");
		String adminpass=request.getParameter("adminpass");
		String admin=uid;
		int user_level=1;
			
		/* Class.forName("com.mysql.jdbc.Driver");  */
		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root",""); 
		Statement st= con.createStatement(); 
		ResultSet rs;
		 
/* 		
		out.println("1" + id + "-------------------2" + fname + "-------------------3" +  mname + "-------------------4" +  sname + "-------------------5" +  gender + "-------------------6" +  dob + "-------------------7" +  religion + "-------------------8" +  nationality + "-------------------9" +  gname + "-------------------10" +  goccu + "-------------------11" +  nic + "-------------------12" +  mobile + "-------------------13" +  email + "-------------------14" +  address + "-------------------15" +  guardpass + "-------------------16" +  admin);
 */		
 		int j=st.executeUpdate("INSERT INTO user_account VALUES ('"+adminid+"','"+adminpass+"','"+user_level+"')"); 
		int i=st.executeUpdate("INSERT INTO admin VALUES ('"+adminid+"', '"+fname+"', '"+lname+"', '"+address+"', '"+nic+"', '"+mobile+"', '"+admin+"')");
		
		out.println("<h1>Admin added successfully!</h1>"); 
		
	%>
</body>
</html>