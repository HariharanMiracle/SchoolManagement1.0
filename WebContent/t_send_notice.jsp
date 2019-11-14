<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Send Notice</title>
<link rel="stylesheet" href="assests/css/style.css">
</head>
<body>
<!-- Header section start -->
<header>
	<div id = "hd1">
		<div id = "hds1"><img src="assests/image/icon.png" height = "80" width = "80">
			<h1><% out.println((String)session.getAttribute("uid")); %></h1>
			<hr>
		</div>
	</div>
	<div id = "hd2">
		<div id = "hd2s1">
			<div style = "float: right; margin-right: 25px; margin-top: 5px;"><a href = "logout.jsp" style = " text-decoration: none; font-size: 50px; color: black;">LOGOUT</a></div>
		</div>
		<div id = "hd2s2">
			<a href = "leave.jsp" style = " text-decoration: none; font-size: 35px; color: white;">Leave_request</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "t_send_notice.jsp" style = " text-decoration: none; font-size: 35px; color: white;">Send Notice</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "view_notice_tec.jsp" style = " text-decoration: none; font-size: 35px; color: white;">View_Notice</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "leave_notification.jsp" style = " text-decoration: none; font-size: 35px; color: white;">Leave_notification</a>
		</div>
		<div id = "hd2s3"><h1 style = "color: #ACE500">Send Notice</h1></div>
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
	<div style = "float: right; width: 75%; text-align: center">
	<br/>
		<a href = "not_p_stud.jsp" class = "link_col"><img src="assests/image/a.png" height = "30" width = "30">&nbsp;&nbsp;&nbsp;Send notice to a particular student</a><br/>
		<a href = "not_a_stud.jsp" class = "link_col"><img src="assests/image/b.png" height = "30" width = "30">&nbsp;&nbsp;&nbsp;Send notice to all students</a><br/> 
		<a href = "not_p_class.jsp" class = "link_col"><img src="assests/image/c.jpg" height = "30" width = "30">&nbsp;&nbsp;&nbsp;Send notice to a particular class</a><br/>
	</div>
</div>
<!-- Mid section end -->



</body>
</html>