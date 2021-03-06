<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Leave Notifications</title>

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
<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="stylesheet.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> My Subjects</title>


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
a:hover{
background-color:green;
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
  height: 100%;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
</style>
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
<li style="background-color:#2aa5d8"><a href="leave.jsp">Leave Request</a></li>    
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

	<h2>Leave Notifications</h2>
	
  <div style= "background-color:#DCDCDC">
  <div style= "margin-left: 20px; margin-right: 20px; margin-top:20px; margin-bottom:20px;padding-top:20px; padding-right:20px; padding-bottom:40px;padding-left:20px">

	<br/>
<div class='panel panel-info'><div class='panel-body'>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%	
		String uid = (String)session.getAttribute("uid");
		int lid;
		String adate;
		String rdate;
		int noOfDays;
		String reason;
		String approve;
	
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
		Statement st= con.createStatement(); 
		ResultSet rs = st.executeQuery("select * from `leave` WHERE tid = (SELECT teacher.uid from `teacher` where teacher.uid ='"+uid+"')");
		

		while(rs.next()){
			
			
			lid = rs.getInt(1);
			adate = rs.getString(3);
			rdate = rs.getString(4);
			noOfDays = rs.getInt(5);
			reason = rs.getString(6);
			approve = rs.getString(7);
			if(approve == null || approve == ""){
				%> Leave Id: <% out.println(lid); %><br/><%
				%> Leave Reason: <% out.println(reason); %><br/><%
				%> <font color="blue">Pending Request</font><hr/><%
			}
			else if(approve.equals("Accept")){
				%> Leave Id: <% out.println(lid); %><br/><%
				%> Leave Reason: <% out.println(reason); %><br/><%
				%><font color="green"> Request Accepted</font><hr/><%
			}
			else{
				%> Leave Id: <% out.println(lid); %> <br/><%
				%> Leave Reason: <% out.println(reason); %><br/><%
				%> <font color="red">Request Rejected</font> <hr/><%
			}
			
		}
		
	%>
</div>
	</div>
</div>
   </div>
  </div>
 </div>
    </div>
</body>
</html>