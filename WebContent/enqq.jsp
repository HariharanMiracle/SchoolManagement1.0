<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
 
  <div class="col-sm-3">
  <div style="background-color:#022c3c">
  <div style= "margin-left: 65px; margin-right: 10px; margin-top:10px; margin-bottom:20px;padding-top:40px; padding-bottom:100px">
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br></br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Student - </b><%=session.getAttribute("uid")%></p>
<br> 
  <ul>
	
	<li style="background-color:#2aa5d8"><a href="studentHome.jsp">Home</a></li>
  	
    
    <li class="active"><a href="MySubjects.jsp">My Subjects</a></li>
    <li><a href="#">Attendance</a></li> 
    
    <li><a href="Enq.jsp">FAQ</a></li>
    <li><a href="progressnew.jsp">Progress</a></li>  
     <li><a href="studentmarkone.jsp">Report</a></li>      
        <li><a href="Student_Fees.jsp">Submit Fees</a></li>      
    
    <li><a href="timetables.jsp">Classroom Routine</a></li>
     <li><a href="examdet.jsp">Exams</a></li>
   
    <li><a href = "view_notice_std.jsp">Notices</a>         
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
				&nbsp;&nbsp;&nbsp;
			<a href = "Enq.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Send Enquires</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "pview.jsp" style = " text-decoration: none; font-size: 20px; color: white;">View Response</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
	
		<br>
		<h2>Enquires And Answers</h2>
  <div style= "background-color:#DCDCDC">
  <div style= "margin-left: 50px; margin-right: 20px; margin-top:20px; margin-bottom:20px;padding-top:20px; padding-bottom:40px">


<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
	String uid = request.getParameter("uid");
	String enq = request.getParameter("Enquiry");
	
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
	
	Statement st1= con.createStatement();
	
	String stid = (String)session.getAttribute("uid");
	
	
		//out.println(enq);
	
		int i = st1.executeUpdate("INSERT INTO `enq`(`stid`, `enq`) VALUES ('"+stid+"', '"+enq+"')");
		out.println("You have sccessfully submitted the Enquiry");
	
	
	


%>
	
	</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>