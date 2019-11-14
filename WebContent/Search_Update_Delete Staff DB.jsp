<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!--  <script>
      addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
      </script>
      Meta tags
      font-awesome icons
      <link href="assests/css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
      //font-awesome icons
      stylesheets
      <link href="assests/css/style.css" rel='stylesheet' type='text/css' media="all">
      <link href="assets/css/bootstrap.css" rel='stylesheet' type='text/css' media="all">
      //style sheet end here
      <link href="//fonts.googleapis.com/css?family=Barlow:300,400,500" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
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
			
			String stfid =request.getParameter("stfid");
			String fname =request.getParameter("fname");
			String lname = request.getParameter("lname");
			String nic=request.getParameter("nic");
			String address=request.getParameter("address");
			String mobile=request.getParameter("mobile");
			String maritals=request.getParameter("maritals");
			String qualification=request.getParameter("qualification");
			String admin=request.getParameter("admin");
		    
		
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root",""); 
		Statement st= con.createStatement(); 
		ResultSet rs;
		
		int j=st.executeUpdate("UPDATE staff_nonac SET fname='"+fname+"',lname='"+lname+"',nic='"+nic+"',address='"+address+"',mobile='"+mobile+"',maritals='"+maritals+"',qualification='"+qualification+"' WHERE stfid='"+stfid+"'");
		
		out.println("<h1>Updated Successfully!</h3>"); 
		response.sendRedirect("Search_Update_Delete Staff.jsp");
		}
		else if("DELETE".equals(action))
		{
			String stfid=request.getParameter("stfid");
			
			Class.forName("com.mysql.jdbc.Driver"); 
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/itp", "root", ""); 
			Statement st= con.createStatement(); 
			ResultSet rs;
			
			if (stfid != null && stfid.length() > 0) {
			   int j=st.executeUpdate("DELETE FROM user_account WHERE uid='"+stfid+"'");
			   int i =st.executeUpdate("DELETE FROM staff_nonac WHERE stfid= '"+stfid+"'"); // Execute the prepared statement and fetch result
			   out.println("<h1>Deleted Successfully!</h3>"); 
			   response.sendRedirect("Search_Update_Delete Staff.jsp");
		}
		}
	%>
	
    				
    				
 					
</body>
</html>

