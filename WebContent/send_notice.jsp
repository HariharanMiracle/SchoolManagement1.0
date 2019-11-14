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
		

		
	<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.*"%>
<%	
	String temp = request.getParameter("id");
	int id = Integer.parseInt(temp);
	
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
	Statement st= con.createStatement(); 
	
	if(id == 1){ //Sending notice to a particular teacher
		String tid = request.getParameter("tid");
		String desc = request.getParameter("desc");
		DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		String sdate = df.format(date);
		String sid = (String)session.getAttribute("uid");
		
		ResultSet rs = st.executeQuery("select * from teacher where `tid` = '" + tid + "'");
	
		if(rs.next()) {
			int i = st.executeUpdate("insert into `notice` (`descr`, `sdate`, `stid`) values ('"+desc+"','"+sdate+"','"+sid+"')");
			int j = st.executeUpdate("insert into `send_to` (`tid`) values ('"+tid+"')");
			out.println("<h2 class = 'green_correct'>Notice Sent To The Teacher Successfully!!!</h2>");
			%><a href = "not_p_tec.jsp">back</a><%
		}
		else{
			out.println("<h2 class = 'red_wrong'>There is no such teacher!!!</h2>");
			%><a href = "not_p_tec.jsp">back</a><%
		}
	}
	else if(id == 2){ //Sending notice to a particular student
		String stid = request.getParameter("stid");
		String desc = request.getParameter("desc");
		DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		String sdate = df.format(date);
		String sid = (String)session.getAttribute("uid");
		
		ResultSet rs = st.executeQuery("select * from student where `stid` = '" + stid + "'");
	
		if(rs.next()) {
			int i = st.executeUpdate("insert into `notice` (`descr`, `sdate`, `stid`) values ('"+desc+"','"+sdate+"','"+sid+"')");
			int j = st.executeUpdate("insert into `send_to` (`stid`) values ('"+stid+"')");
			out.println("<h2 class = 'green_correct'>Notice Sent To The Student Successfully!!!</h2>");
			%><a href = "not_p_stud.jsp">back</a><%
		}
		else{
			out.println("<h2 class = 'red_wrong'>There is no such student!!!</h2>");
			%><a href = "not_p_stud.jsp">back</a><%
		}
	}
	else if(id == 3){ //Sending a notice to all teachers
		
		String desc = request.getParameter("desc");
		DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		String sdate = df.format(date);
		String sid = (String)session.getAttribute("uid");
		int t_com = 1; 
		
		int i = st.executeUpdate("insert into `notice` (`descr`, `sdate`, `stid`) values ('"+desc+"','"+sdate+"','"+sid+"')");
		int j = st.executeUpdate("insert into `send_to` (`t_com`) values ('"+ t_com +"')");
		out.println("<h2 class = 'green_correct'>Notice Sent To All Teachers Successfully!!!</h2>");
		%><a href = "not_a_tec.jsp">back</a><%
	}
	else if(id == 4){ //Sending a notice to all students
		
		String desc = request.getParameter("desc");
		DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		String sdate = df.format(date);
		String sid = (String)session.getAttribute("uid");
		int s_com = 1; 
		
		int i = st.executeUpdate("insert into `notice` (`descr`, `sdate`, `stid`) values ('"+desc+"','"+sdate+"','"+sid+"')");
		int j = st.executeUpdate("insert into `send_to` (`s_com`) values ('"+ s_com +"')");
		out.println("<h2 class = 'green_correct'>Notice Sent To All Students Successfully!!!</h2>");
		%><a href = "not_a_stud.jsp">back</a><%
	}
	else if(id == 5){ //Sending notice to a particular class
	
		String cid;
		DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();	
		String sid = request.getParameter("sec");
		String ctype = request.getParameter("class");
		String uid = (String)session.getAttribute("uid");
		String desc = request.getParameter("desc");	
		String sdate = df.format(date);
		
		ResultSet rs = st.executeQuery("select * from class where `secid` = '" + sid + "' AND `class` = '" + ctype + "'");
		
		if(rs.next()) {
			cid = rs.getString(1);
			int i = st.executeUpdate("insert into `notice` (`descr`, `sdate`, `stid`) values ('"+desc+"','"+sdate+"','"+uid+"')");
			int j = st.executeUpdate("insert into `send_to` (`cid`) values ('"+cid+"')");
			out.println("<h2 class = 'green_correct'>Notice Sent To The Student Successfully!!!</h2>");
			%><a href = "not_p_class.jsp">back</a><%	
		}
		else{
			out.println("<h2 class = 'red_wrong'>Warning: No class!!!</h2>");
			%><a href = "not_p_class.jsp">back</a><%
		}
		
		
		
		
		
	}
	else{
		out.println("<h2 class = 'red_wrong'>Something went wrong!!!</h2>");
	}
		
			
		
	
%>
	
	
	
	
</div>
   </div>
  </div>
 </div>
 
</body>
</html>