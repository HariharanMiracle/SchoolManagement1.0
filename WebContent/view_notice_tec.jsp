<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Notices</title>

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
<li><a href="leave.jsp">Leave Request</a></li>    
    <li style="background-color:#2aa5d8"><a href="view_notice_tec.jsp">Notices</a></li>
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
   		<h2>View Notices</h2>
		<br></br>
	
						<a href = "com_tec_not.jsp" class = "btn btn-info btn-block"><img src="msg.jpg" height="30px" width="30px"/>&nbsp;&nbsp;&nbsp;&nbsp;Common Notice</a><br/>
		
		<br>
				<a href = "pat_tec_not.jsp" class = "btn btn-success btn-block"><img src="msg.jpg" height="30px" width="30px"/>&nbsp;&nbsp;&nbsp;&nbsp;Particular Notice</a><br/>
			<h2>Send Notices</h2>
		<br></br>
	
		
		<br>
		
		<a href = "not_p_student2.jsp" class = "btn btn-success btn-block"><img src="assests/image/a.png" height = "30" width = "30">&nbsp;&nbsp;&nbsp;Send notice to a particular student</a><br/>
		<a href = "not_a_stud2.jsp" class = "btn btn-success btn-block"><img src="assests/image/b.png" height = "30" width = "30">&nbsp;&nbsp;&nbsp;Send notice to all students</a><br/> 
		<a href = "not_p_class2.jsp" class = "btn btn-success btn-block"><img src="assests/image/c.jpg" height = "30" width = "30">&nbsp;&nbsp;&nbsp;Send notice to a particular class</a><br/>
	



  </div>
 </div>
    </div>
    </div>
</body>
</html>