<%-- 
    Document   : text
    Created on : Aug 31, 2018, 9:15:01 AM
    Author     : SANGEETH
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Leave Request</title>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%
	DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
	Date date = new Date();
 	String user = (String)session.getAttribute("uid");
 %>
 
 
 
 
 <style>

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 99.6%;
    background-color: #022c3c ;
    border: 1px solid #555;
}

li a {
    display: block;
    color: white;
    padding: 20px 16px;
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
 
  background:#f8f7f7 ;
}

.border {
  position: fixed;
  top: 0;
  left: 0;
  border: 12px solid #2aa5d8;
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
hr {
  border: 0;
  clear:both;
  display:block;
  width: 96%;               
  background-color:#abe500 ;
  height: 5px;
}
</style>
 
 
 
 
</head>
<body>



<!-- Header section start -->
<header style = "height: 200px; width: 100%; background-color: #f2f2ea;">
	<div style = "height: 200px; background-color: #022c3c; width: 25%; float: left; text-align: center;">
		<div style = "margin-top: 10px;"><img src="assests/image/icon.png" height = "80" width = "80">
			<h1 style = "color: white;"><% out.println((String)session.getAttribute("uid")); %></h1>
			<hr color = "#248587"/>
		</div>
	</div>
	<div style = "height: 200px; width: 75%; float: right;">
		<div style = "height: 33%; width: 100%; float: top;">
			<div style = "float: right; margin-right: 25px; margin-top: 5px;"><a href = "logout.jsp" style = " text-decoration: none; font-size: 50px; color: black;">LOGOUT</a></div>
		</div>
		<div style = "text-align: center; height: 36%; width: 96%; float: top; border-radius: 10px; margin-left: 2%; background-color: #b0e24a; margin-top: ">
			<a href = "logout.jsp" style = " text-decoration: none; font-size: 50px; color: white;">Admins</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "logout.jsp" style = " text-decoration: none; font-size: 50px; color: white;">Teachers</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "logout.jsp" style = " text-decoration: none; font-size: 50px; color: white;">Students</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "logout.jsp" style = " text-decoration: none; font-size: 50px; color: white;">Staffs</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "logout.jsp" style = " text-decoration: none; font-size: 50px; color: white;">Parents</a>
		</div>
		<div style = "margin-left: 50px; margin-top: -12px;"><h1 style = "color: #b0e24a">Leave Request Form</h1></div>
	</div>
	<br/>
</header>
<!-- Header section end -->



<!-- Mid section start -->
<div style = "height: 100%; width: 100%; float: top;">
	<div style = "height: 600px; background-color: #1a414c; width: 25%; float: left;">
		
		
		
	<ul>
			<li><a href="#">Home</a></li> 
    		<li><a href="#">User Management</a></li>
       		<li class="active"><a href="addSubject.html">Subject Management</a></li>
    		<li><a href="#">Exam Management</a></li>
    		<li><a href="#">Library Management</a></li> 
    		<li><a href="#">Attendance Management</a></li>
    		<li><a href="#">Classroom Management</a></li>      
    		<li><a href="#">CSS</a></li>
    		<li><a href="#">About</a></li> 
    		<li><a href="#">Classroom Management</a></li>
			<li><a href="#">Classroom Management</a></li>             
  </ul>
		
				
		
	</div>
	<div style = "width: 100%; text-align: center">
	<br/>
	<form action = "leave_req_db.jsp" method = "post">
		ID: <% out.println(user); %> <br/>
		
 
		<textarea name = "reason"></textarea><br/>
		requested date: <input type = "date" name = "rdate"><br/>
		current date: <% out.println(df.format(date)); %><br/>
		<input type = "submit" value = "Submit">
	</form>
	</div>
</div>
<!-- Mid section end -->



</body>
</html>