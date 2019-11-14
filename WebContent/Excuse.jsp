<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assign_Resource</title>
<link rel="stylesheet" href="assests/css/style.css"> 
</head>
<body>



<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
	String uid = (String)session.getAttribute("uid");
	String code = request.getParameter("code");
	
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
	Statement st= con.createStatement();
	ResultSet rs=st.executeQuery("select * from student where uid = '"+uid+"'");
	
	
	
			if(rs.next()){
				String pass = rs.getString(15);
				if(pass.equals(code)){
					%>
						<hr/>
						<form action = "Exc.jsp" method = "post">
				
							<h4>TeacherID:</h4>
							<input type = "text" placeholder ="Enter Teacher ID" name = "tid" onchange = "show(this.value)" class="form-control"/>
							<hr>
							<br/>
								<h4>Teacher Name :</h4>
								<span id="Hint" ></span>
							<br/>
							<hr>
							
							<textarea name = "excuse_letter"  placeholder = "Write  Your Excuses Letter " required></textarea>
							
							<input type = "submit" value = "Submit" id = "sub" class="btn btn-primary" />
							
						</form>
						
					<%
				}
				else{
					out.println("<h2 class = 'red_wrong'>incorrect password</h2>");
					out.println(code + pass);
				}
			}
			else{
				out.println("<h2 class = 'red_wrong'>something went wrong</h2>");
				
			}
			
		%>

</body>
</html>