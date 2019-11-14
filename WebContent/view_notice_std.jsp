<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="stylesheet.css" rel="stylesheet">
	<link href="menu.css" rel="stylesheet">
	<link href="navbar.css" rel="stylesheet">
	<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


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
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
}
.link_col{
	color: #123A48;
	font-size: 30px;
	text-decoration: none;
}
body {
	  background-image: url("bkt.jpg");
}


.border {
	position:absolute;
  top: 0;
  left: 0;
  border: 12px solid #2aa5d8;
  width: 100%;
  height: 200%;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Notice</title>
<link rel="stylesheet" href="assests/css/style.css"> 
</head>
<body>



<div class="border">
  <div class="col-sm-3">  <div style="background-color:#022c3c">
  <div style= "margin-left: 45px; margin-right: 10px; margin-top:10px; margin-bottom:20px;padding-top:40px; padding-bottom:40px">
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br></br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Student - </b><%=session.getAttribute("uid")%></p>
<br> 
  <ul> 
	<li><a href="studentHome.jsp">Home</a></li>
    <li><a href="#">My Profile</a></li>	
    
    <li><a href="MySubjects.jsp">My Subjects</a></li>
    <li><a href="#">Attendance</a></li> 
    
    <li><a href="#">Library</a></li>
    <li><a href="#">Progress & Report</a></li>      
        <li><a href="Student_Fees.jsp">Submit Fees</a></li>      
    
    <li><a href="#">Classroom Routine</a></li>
    <li><a href="#">Behaviour Remarks</a></li>  
    <li style="background-color:#2aa5d8"><a href = "view_notice_std.jsp">Notices</a> 
          
  </ul>	
  </div>
  </div>
  </div>
<div style="float:right; margin-top:20px; margin-right:20px">
		<a href="login.html" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;Logout</a>
		</div>
		
		
		   <div class="col-sm-9" style="margin-top:20px">
		   <h1>Student's Notice Page</h1>
		   <br></br>
		   	<div style = "width: 75%; text-align: center; background-color:white[]">
	<br/>
		<a href = "com_std_not.jsp" class = "link_col">Common Notice</a><br/>
		<a href = "pat_std_not.jsp" class = "link_col">Particular Notice</a><br/>
		<a href = "class_std_not.jsp" class = "link_col">Class Notice</a><br/>
	</div>
		</div>


		</div>
</body>
</html>