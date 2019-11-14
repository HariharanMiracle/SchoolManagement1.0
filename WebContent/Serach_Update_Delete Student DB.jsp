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
		String stid = request.getParameter("stid");
		String fname = request.getParameter("fname");
		String mname = request.getParameter("mname");
		String sname = request.getParameter("sname");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String religion = request.getParameter("religion");
		String nationality=request.getParameter("nationality");
		String gname = request.getParameter("gname");
		String goccu=request.getParameter("goccu");
		String nic=request.getParameter("nic");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		String address=request.getParameter("address");
		
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
		Statement st= con.createStatement(); 
		ResultSet rs;
		
		int i=st.executeUpdate("UPDATE student SET fname='"+fname+"',mname='"+mname+"',surname='"+sname+"',gender='"+gender+"',dob='"+dob+"',religion='"+religion+"',nationality='"+nationality+"',guardian_name='"+gname+"',guardian_occu='"+goccu+"',nic='"+nic+"',mobile='"+mobile+"',email='"+email+"',address='"+address+"' WHERE stid='"+stid+"'");
		
		out.println("<h1>Updated Successfully!</h3>"); 
		response.sendRedirect("Serach_Update_Delete Student.jsp");
		}
		else if("DELETE".equals(action))
		{
			String stid=request.getParameter("stid");
			
			Class.forName("com.mysql.jdbc.Driver"); 
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
			Statement st= con.createStatement(); 
			ResultSet rs;
			
			if (stid != null && stid.length() > 0) {
			    //PreparedStatement ps = con.prepareStatement("DELETE * FROM student WHERE stid = '"+stid+"'");
			   // ps.setString(1,stid); // Bind the value to the placeholder
			   int i = st.executeUpdate("DELETE FROM student WHERE stid = '"+stid+"'"); // Execute the prepared statement and fetch result
			    out.println("<h1>Deleted Successfully!</h3>"); 
				response.sendRedirect("Serach_Update_Delete Student.jsp");
			}
		}
	%>
	
    				
    				
 					
</body>
</html>