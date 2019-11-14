<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
//String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "schoolmanagement";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <!-- script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="stylesheet.css" rel="stylesheet">
	<link href="menu.css" rel="stylesheet">
	<link href="navbar.css" rel="stylesheet">
	<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
<title>My Subjects</title>

<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 200px;
    background-color: #022c3c ;
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
 background-image: url("bks.jpg");
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
</style>
</head>
<body>

<%
	String id = (String)session.getAttribute("uid");
System.out.println(id);
	if(id == null){
		response.sendRedirect("Login.jsp");
	}
	else{
		int level = (int)session.getAttribute("level");
		if(level != 3){  
			response.sendRedirect("Login.jsp");
		}
	}
	
	
%>
<div class="container-fluid">
<div class="border">

  <div class="col-sm-3">  <div style="background-color:#022c3c">
  <div style= "margin-left: 45px; margin-right: 10px; margin-top:10px; margin-bottom:20px;padding-top:40px; padding-bottom:40px">
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br></br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Student - </b><%=session.getAttribute("uid")%></p>
<br> 
  <ul> 
	<li><a href="studentHome.jsp">Home</a></li>
    <li><a href="#">My Profile</a></li>	
    
    <li style="background-color:#2aa5d8"><a href="MySubjects.jsp">My Subjects</a></li>
    <li><a href="#">Attendance</a></li> 
    
    <li><a href="#">Library</a></li>
    <li><a href="#">Progress & Report</a></li>      
        <li><a href="Student_Fees.jsp">Submit Fees</a></li>      
    
    <li><a href="#">Classroom Routine</a></li>
    <li><a href="#">Behaviour Remarks</a></li>  
    <li><a href = "view_notice_std.jsp">Notices</a> 
          
  </ul>	
  </div>
  </div>
  </div>
  <div class="container">
  <div style="float:right; margin-top:20px">
		<a href="login.html" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;Logout</a>
		</div>
   
   <div class="col-sm-8" style="margin-top:20px">
   	<img src="sub.png" width="100%" height="150px" style="margin-left:10px" />
		
		
		<br>
 

<h2>My current courses:</h2>
<div style= "background-color:#DCDCDC">
  <div style= "margin-left: 20px; margin-right: 20px; margin-top:20px; margin-bottom:20px;padding-top:20px; padding-bottom:40px;padding-right:40px;padding-left:20px">

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
	
String sql ="SELECT * from subjects where subjects.SubjectID in (SELECT student_subject.SubjectID from student_subject where student_subject.StudentID in (SELECT student.stid from student where student.uid='" +  id + "')and student_subject.EnrolStatus='yes') ";
resultSet = statement.executeQuery(sql);
int i = 0;
while(resultSet.next() ){
%>

<div class="list-group" style="width:60%">
 

  

  <a href=<%= "\"materialListEnrolled.jsp?ti=" + resultSet.getString("SubjectID") + "\"" %>  class="list-group-item list-group-item-action list-group-item-primary"><b><%=resultSet.getString("Title") %></b>
</a>
 
</div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</div>
</div>
</div>
 <div class="col-sm-6" style="margin-top:5px">
 					<a href="stdGrades.jsp" class="btn btn-success btn-block" role="button">Enrol for a subject</a>

</div>
</div>
</div>
</body>
</html>
