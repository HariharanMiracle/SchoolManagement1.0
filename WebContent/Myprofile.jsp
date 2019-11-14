<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="stylesheet.css" rel="stylesheet">
	<link href="menu.css" rel="stylesheet">
	<link href="navbar.css" rel="stylesheet">
	<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
<title>Admin-Home</title>

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
 
  background:#f8f7f7 ;
}

.border {
  position: absolute;
  top: 0;
  left: 0;
  border: 12px solid #2aa5d8;
  width: 100%;
  height: 1000px;
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

<title>Insert title here</title>
</head>
<body>
<div class="border">

  <div class="col-sm-3">  <div style="background-color:#022c3c">
  <div style= "margin-left: 45px; margin-right: 10px; margin-top:10px; margin-bottom:20px;padding-top:40px; padding-bottom:40px">
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br></br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>ADMIN - </b>admin</p>
<br> 
  <ul>
	
  <li style="background-color:#2aa5d8"><a href="adminHome.jsp">Home</a></li> 
    <li><a href="AddUser.jsp">User Management</a></li>
        <li class="active"><a href="addSubject.jsp">Subject Management</a></li>
    <li><a href="#">Exam Management</a></li>
    <li><a href="library_management.jsp">Library Management</a></li> 
    
    <li><a href="teacherAttendance2.jsp">Attendance Management</a></li>
      <li ><a href="viewPayments.jsp">Fee Management</a></li>
    <li><a href="#">Classroom Management</a></li>      

    <li><a href="resource_manager.jsp">Human Resource</a></li>
    <li><a href="notice.jsp">Notices</a></li>         
  </ul>
  </div>
  </div>
  </div>
  <div class="container">
  <div style="float:right; margin-top:20px">
		<a href="login.html" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;Logout</a>
		</div>
   
  <div class="col-sm-9">
 
 	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
	String uid = (String)session.getAttribute("uid");
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
	Statement st= con.createStatement();
	
	ResultSet rs=st.executeQuery("select * from `student` where `uid` = '"+uid+"'");
	
	if(rs.next()){
		String stid = rs.getString(1);
		String fname = rs.getString(2);
		String mname = rs.getString(3);
		String surname = rs.getString(4);
		String gender = rs.getString(5);
		String dob = rs.getString(6);
		String guardian_name = rs.getString(9);
		String mobile = rs.getString(12);
		String email = rs.getString(13);
		String address = rs.getString(14);
		String classx = rs.getString(17);
		String grade = rs.getString(18);
		
		%>
			<h1><b>MY PROFILE</b></h1>
			<h3>Full Name: <input type="text" name="teacher" class="form-control" value = "<% out.println(fname + " " + mname + " " + surname); %>" readonly></h3>
			<h3>Student ID: <input type="text" name="teacher" class="form-control" value = "<% out.println(stid); %>" readonly></h3>
			<h3>Gender: <input type="text" name="teacher" class="form-control" value = "<% out.println(gender); %>" readonly></h3>
			<h3>Date Of Birth: <input type="text" name="teacher" class="form-control" value = "<% out.println(dob); %>" readonly></h3>
			<h3>Guardian Name: <input type="text" name="teacher" class="form-control" value = "<% out.println(guardian_name); %>" readonly></h3>
			<h3>Mobile: <input type="text" name="teacher" class="form-control" value = "<% out.println(mobile); %>" readonly></h3>
			<h3>Email: <input type="text" name="teacher" class="form-control" value = "<% out.println(email); %>" readonly></h3>
			<h3>Address: <input type="text" name="teacher" class="form-control" value = "<% out.println(address); %>" readonly></h3>
			<h3>Class: <input type="text" name="teacher" class="form-control" value = "<% out.println(classx); %>" readonly></h3>
			<h3>Grade: <input type="text" name="teacher" class="form-control" value = "<% out.println(grade); %>" readonly></h3>
		<%
		
		
	}
	else{
		response.sendRedirect("login.html");
	}
	
	
%>
 	
       		
  </div>
   


</div>
</div>

</body>
</html>