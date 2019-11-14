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
		String sid=request.getParameter("stid");
		String att=request.getParameter("attendence");
		String desc=request.getParameter("descipline");
		String snote=request.getParameter("snote");
		
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root",""); 
		Statement st= con.createStatement(); 
		ResultSet rs;
		int j=st.executeUpdate("UPDATE studentprogress SET attendence='"+att+"',descipline='"+desc+"',special_notes='"+snote+"' WHERE stid='"+sid+"'");
		
		//response.sendRedirect("overalldetails_studentsearch.jsp");
		}
		else if("ADD".equals(action))
		{
			String sid=request.getParameter("stid");
			String att=request.getParameter("attendence");
			String desc=request.getParameter("descipline");
			String snote=request.getParameter("snote");
			
			Class.forName("com.mysql.jdbc.Driver"); 
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/itp", "root", ""); 
			Statement st= con.createStatement(); 
			ResultSet rs;
			
			if (sid != null && sid.length() > 0) {
			    //PreparedStatement ps = con.prepareStatement("DELETE * FROM student WHERE stid = '"+stid+"'");
			   // ps.setString(1,stid); // Bind the value to the placeholder
			   int i = st.executeUpdate("INSERT INTO studentprogress VALUES ('"+sid+"','"+att+"','"+desc+"','"+snote+"')"); // Execute the prepared statement and fetch result
			   //response.sendRedirect("overalldetails_studentsearch.jsp");
		}
		}
	%>
	
    				
    				
 					
</body>
</html>

