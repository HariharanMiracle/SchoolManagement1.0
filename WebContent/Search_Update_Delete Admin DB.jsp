 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <script>
      addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
      </script>
   
      <link href="assests/css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
   
      <link href="assests/css/style.css" rel='stylesheet' type='text/css' media="all">
      <link href="assets/css/bootstrap.css" rel='stylesheet' type='text/css' media="all">
     
      <link href="//fonts.googleapis.com/css?family=Barlow:300,400,500" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	 
		String action=request.getParameter("action");
		if("UPDATE".equals(action))
		{
		String adminid =request.getParameter("adminid");
		String fname =request.getParameter("fname");
		String lname =request.getParameter("lname");
		String address=request.getParameter("address");
		String nic=request.getParameter("nic");
		String mobile =request.getParameter("mobile");
		
		
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root",""); 
		Statement st= con.createStatement(); 
		ResultSet rs;
		
		int j=st.executeUpdate("UPDATE admin SET fname='"+fname+"',lname='"+lname+"',address='"+address+"',nic='"+nic+"',mobile='"+mobile+"' WHERE adminId='"+adminid+"'");
		
		out.println("<h1>Updated Successfully!</h3>"); 
		//response.sendRedirect("Search_Update_Delete Admin.jsp");
		}
		else if("DELETE".equals(action))
		{
			String adminid=request.getParameter("adminid");
			
			Class.forName("com.mysql.jdbc.Driver"); 
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
			Statement st= con.createStatement(); 
			ResultSet rs;
			
			if (adminid != null && adminid.length() > 0) {
			    //PreparedStatement ps = con.prepareStatement("DELETE * FROM student WHERE stid = '"+stid+"'");
			   // ps.setString(1,stid); // Bind the value to the placeholder
			   int i = st.executeUpdate("DELETE FROM admin WHERE adminId = '"+adminid+"'"); // Execute the prepared statement and fetch result
			    out.println("<h1>Deleted Successfully!</h3>"); 
			    response.sendRedirect("Search_Update_Delete Admin.jsp");
		}
		}
	%>
	
    				
    				
 					
</body>
</html>

