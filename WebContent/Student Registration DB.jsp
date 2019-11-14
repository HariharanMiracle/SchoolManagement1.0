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
		String id = request.getParameter("stid");
		String fname = request.getParameter("fname");
		String mname = request.getParameter("mname");
		String sname = request.getParameter("sname");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String religion = request.getParameter("religion");
		String nationality=request.getParameter("nationality");
		String studpass = request.getParameter("studpass");
		String gname = request.getParameter("gname");
		String goccu=request.getParameter("goccu");
		String address=request.getParameter("address");
		String nic=request.getParameter("nic");
		String mobile=request.getParameter("mobile");
		String email = request.getParameter("email");
		String guardpass = request.getParameter("gpass");
		String usid = request.getParameter("uid");
		String admin=uid;
		int user_level=3;
			
		/* Class.forName("com.mysql.jdbc.Driver");  */
		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root",""); 
		Statement st= con.createStatement(); 
		ResultSet rs;
		 
/* 		
		out.println("1" + id + "-------------------2" + fname + "-------------------3" +  mname + "-------------------4" +  sname + "-------------------5" +  gender + "-------------------6" +  dob + "-------------------7" +  religion + "-------------------8" +  nationality + "-------------------9" +  gname + "-------------------10" +  goccu + "-------------------11" +  nic + "-------------------12" +  mobile + "-------------------13" +  email + "-------------------14" +  address + "-------------------15" +  guardpass + "-------------------16" +  admin);
 */		
 int j=st.executeUpdate("INSERT INTO user_account VALUES ('"+usid+"','"+studpass+"','"+user_level+"')"); 
		int i=st.executeUpdate("INSERT INTO student VALUES ('"+id+"', '"+fname+"', '"+mname+"', '"+sname+"', '"+gender+"', '"+dob+"', '"+religion+"', '"+nationality+"', '"+gname+"', '"+goccu+"', '"+nic+"', '"+mobile+"', '"+email+"', '"+address+"', '"+guardpass+"', '"+admin+"', '', '', '"+usid+"')");
		
		out.println("<h1>Student added successfully!</h1>"); 
		
	%>
</body>
</html>