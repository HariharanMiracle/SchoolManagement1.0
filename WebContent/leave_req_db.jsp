<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Library Management System</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <!-- script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="stylesheet.css" rel="stylesheet">
	<link href="menu.css" rel="stylesheet">
	<link href="navbar.css" rel="stylesheet">
	<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
	
	<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 200px;
    background-color: 	#022c3c;
    border: 1px solid #555;
}

li a {
    display: block;
    color: white;
    padding: 8px 16px;
    text-decoration: none;
}

li {
    text-align: center;
    border-bottom: 1px solid #555;
}

li:last-child {
    border-bottom: none;
}

li a.active {
    background-color: #2aa5d8 ;
    color: white;
}

li a:hover:not(.active) {
    background-color: #2aa5d8 ;
    color: white;
}
body {
	  background-image: url("bkt.jpg");
}

.border {
  position: absolute;
  top: 0;
  left: 0;
  border: 12px solid #2aa5d8;
  width: 100%;
  height: 150%;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
a:hover {
    background-color: green;
}
</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

	
<div class="container-fluid">
<div class="border">

  <div class="col-sm-3">  <div style="background-color:#022c3c">
  <div style= "margin-left: 45px; margin-right: 10px; margin-top:10px; margin-bottom:20px;padding-top:40px; padding-bottom:40px">
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br></br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Teacher - </b><%=session.getAttribute("uid")%></p>
<br> 
  <ul> 
	<li><a href="teacherHome.jsp">Home</a></li> 
    <li><a href="#">My Profile</a></li>
        <li class="active"><a href="viewMySubjects.jsp">Subject Management</a></li>
    <li><a href="hometeacher.jsp">Exam Management</a></li>
    <li><a href="#">Library Management</a></li> 
    
    <li><a href="#">Attendance Management</a></li>
    <li><a href="#">Classroom Management</a></li>      
       <li><a href="#">Behaviour Management</a></li>
<li style="background-color:#2aa5d8"><a  href="leave.jsp">Leave Request</a></li>    
    <li><a href="view_notice_tec.jsp">Notices</a></li>
    <li><a href="#">About</a></li> 
          
  </ul>	
  </div>
  </div>
  </div>
  <div class="container">
  <div style="float:right; margin-top:20px">
		<a href="login.html" class="btn btn-danger" role="button">Logout</a>
		</div>
   
   <div class="col-sm-8" style="margin-top:20px">
   	
		<div style = "margin-left: 2%; background-color: #00FF00; border-radius: 10px;padding-top:10px;padding-bottom:10px ">
		
		<a href = "leave.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Leave Request</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href = "leave_notification.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Leave notification</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		

		</div>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.util.Date"%>
	<%@ page import="java.text.*"%>
	
	<%	
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date cdate = new Date();
		Date rdate = new Date();
		
		
		
		String user = (String)session.getAttribute("uid");
		String reason = request.getParameter("reason");
		rdate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("rdate"));
		int ndate = Integer.parseInt(request.getParameter("ndate"));
		
		long day1 = rdate.getTime();
		long day2 = cdate.getTime();
		long ded = day1 - day2;
		
		String xcdate = df.format(cdate);	
		String xrdate = df.format(rdate);
		
		int cy, cm, cd, ry, rm, rd;
		
		cy = Integer.parseInt(xcdate.substring(1, 4));
		cm = Integer.parseInt(xcdate.substring(5, 7));
		cd = Integer.parseInt(xcdate.substring(8, 10));
		ry = Integer.parseInt(xrdate.substring(1, 4));
		rm = Integer.parseInt(xrdate.substring(5, 7));
		rd = Integer.parseInt(xrdate.substring(8, 10));
		
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
		Statement st= con.createStatement(); 
		ResultSet rs;  
	
		if(ry == cy){
			if(rm == cm){
				if(rd > cd){
					int i=st.executeUpdate("insert into `leave` (`tid`, `app_date`, `req_date`, `no_dates`, `reason`) values ('"+user+"','"+xcdate+"','"+xrdate+"', '"+ndate+"', '"+reason+"')");
					out.println("<h1 class = 'green_correct'>You have submitted your leave request successfully!!!</h3>");
					%><a href = "leave.jsp">back</a><%
				}
				else{
					%>
						<p class = "red_wrong">The selected date is an old date!!! <b>OR</b> the selected date is the current date!!! So please change it.</p>
						<h3 class = "normal_font">!!!click <a href = "leave.jsp">here</a> to go to the previous page!!!</h3>
					<%
				}
			}
			else if(rm > cm){
				int i=st.executeUpdate("insert into `leave` (`tid`, `app_date`, `req_date`, `no_dates`, `reason`) values ('"+user+"','"+xcdate+"','"+xrdate+"', '"+ndate+"', '"+reason+"')");
				out.println("<h1 class = 'green_correct'>You have submitted your leave request successfully!!!</h3>");
				%><a href = "leave.jsp">back</a><%
			}
			else{
				%>
					<p class = "red_wrong">The selected date is an old date!!! <b>OR</b> the selected date is the current date!!! So please change it.</p>
					<h3 class = "normal_font">!!!click <a href = "leave.jsp">here</a> to go to the previous page!!!</h3>
				<%
			}
		}
		else if(ry > cy){
			int i=st.executeUpdate("insert into `leave` (`tid`, `app_date`, `req_date`, `no_dates`, `reason`) values ('"+user+"','"+xcdate+"','"+xrdate+"', '"+ndate+"', '"+reason+"')");
			out.println("<h1 class = 'green_correct'>You have submitted your leave request successfully!!!</h3>");
			%><a href = "leave.jsp">back</a><%
		}
		else{
			%>
				<p class = "red_wrong">The selected date is an old date!!! <b>OR</b> the selected date is the current date!!! So please change it.</p>
				<h3 class = "normal_font">!!!click <a href = "leave.jsp">here</a> to go to the previous page!!!</h3>
			<%
		}
		
		
		
		
		
		
		
		
		
		
		//if(ded <= 50167604){
			
		//}
		//else{
			
		//}
%>
	
	
	
</div>
   </div>
  </div>
 </div>
 
</body>
</html>