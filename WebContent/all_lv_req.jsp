<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>

    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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
<title>Leave Requests</title>


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
  height: 200%;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
a:hover {
    background-color: green;
}
</style>




<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<body>
<div class="container-fluid">

<div class="border">
 
  <div class="col-sm-3">
  <div style="background-color:#022c3c">
  <div style= "margin-left: 45px; margin-right: 10px; margin-top:10px; margin-bottom:20px;padding-top:40px; padding-bottom:65px">
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br></br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>ADMIN - </b><%=session.getAttribute("uid")%></p>
 <br>
  <ul>
	
  <li><a href="adminHome.jsp">Home</a></li> 
    <li><a href="AddUser.jsp">User Management</a></li>
        <li class="active"><a href="addSubject.jsp">Subject Management</a></li>
    <li><a href="#">Exam Management</a></li>
    <li><a href="#">Library Management</a></li> 
    
    <li><a href="#">Attendance Management</a></li>
      <li ><a href="viewPayments.jsp">Fee Management</a></li>
    <li><a href="#">Classroom Management</a></li>      

    <li><a href="resource_manager.jsp">Human Resource</a></li>
    <li style="background-color:#2aa5d8"><a href="notice.jsp">Notices</a></li>         
  </ul>
  </div>
  </div>
  </div>
  <div class="container">
  <div style="float:right; margin-top:20px">
		<a href="login.html" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;Logout</a>
		
		</div>
   <div class="col-sm-8" style="margin-top:20px">
   	 	
		<div style = "margin-left: 2%; background-color: #00FF00; border-radius: 10px;padding-top:10px;padding-bottom:10px ">
			<a href = "all_lv_req.jsp" style = " text-decoration: none; font-size: 20px; color: white;">&nbsp;&nbsp;View Leave Requests</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "notice.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Send Notice</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 
		</div>
	
	<h1>View all Leave Requests</h1>
	<br/>
	<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
	Statement st= con.createStatement();
	ResultSet rs=st.executeQuery("select * from `leave`");
	
	String name, tid, reason, rdate, adate;
	int lid, noOfDays;
	
	while(rs.next()) {
		
		String app = rs.getString(7);
		if(app == null) {
			
			lid = rs.getInt(1);
			tid = rs.getString(2);
			adate = rs.getString(3);
			rdate = rs.getString(4);
			noOfDays = rs.getInt(5);
			reason = rs.getString(6);
			
			Statement st1 = con.createStatement();
			ResultSet rs1 = st1.executeQuery("select * from `teacher` where tid = '"+ tid +"'");
			
			if(rs1.next()){
				name = rs1.getString(2);
			}
			else{
				name = "null";
			}
			
			out.println("<div class='panel panel-info'><div class='panel-body'><table class='table table-borderless'>" + "<tr><td>ID :</td><td> " + lid + "</td></tr><tr><td>" + "Name : </td><td>" + name + "</td></tr><tr><td>" + "Requested Date : </td><td>" + rdate + "</td></tr><tr><td>" + "Applied Date : </td><td>" + adate + "</td></tr><tr><td>" + "No-Of Days :</td><td> " + noOfDays + "</td></tr><tr><td>" + "Reason :</td><td> " + reason + "</td></tr></table>");
			%>
				<a href="acc_or_rej.jsp?lid=<%=lid%>" class="btn btn-primary">Accept/Reject</a></div></div>
				
				
			<%
		
		}
	}
%>
	</div>
</div>
<!-- Mid section end -->


</body>
</html>