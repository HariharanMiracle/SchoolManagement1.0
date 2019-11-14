<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
			String teid = request.getParameter("teid");
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String gender= request.getParameter("gender");
			String mobile= request.getParameter("mobile");
			String address= request.getParameter("address");
			String nic= request.getParameter("nic");
			String marital= request.getParameter("marital_status");
			String qualification= request.getParameter("qualification");
			String admin= request.getParameter("admin");
		
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
		Statement st= con.createStatement(); 
		ResultSet rs;
		
		int i=st.executeUpdate("UPDATE teacher SET fname='"+fname+"',lname='"+lname+"',gender='"+gender+"',mobile='"+mobile+"',address='"+address+"',nic='"+nic+"',martial_status='"+marital+"',qualifications='"+qualification+"',admin='"+admin+"' WHERE tid='"+teid+"'");
		
		out.println("<h1>Updated Successfully!</h3>"); 
		response.sendRedirect("Serach_Update_Delete Teacher.jsp");
		}
		else if("DELETE".equals(action))
		{
			String teid=request.getParameter("teid");
			
			Class.forName("com.mysql.jdbc.Driver"); 
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
			Statement st= con.createStatement(); 
			ResultSet rs;
			
			if (teid != null && teid.length() > 0) {
				int j=st.executeUpdate("DELETE FROM user_account WHERE uid='"+teid+"'");
			   int i = st.executeUpdate("DELETE FROM teacher WHERE tid = '"+teid+"'"); // Execute the prepared statement and fetch result
			    out.println("<h1>Deleted Successfully!</h3>"); 
				response.sendRedirect("Serach_Update_Delete Teacher.jsp");
			}
		}
	%>
	
    				
    				
 					
</body>
</html>