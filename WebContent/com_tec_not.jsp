<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Common Notices</title>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>


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
  height: 200%;
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
   	
		<div style = "margin-left: 2%; background-color: #00FF00; border-radius: 10px;padding-top:10px;padding-bottom:10px; padding-left:10px">
		
		<a href = "view_notice_tec.jsp" style = " text-decoration: none; font-size: 20px; color: white;">View Notices</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href = "pat_tec_not.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Particular Notice</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		

		</div>

	<h2>Notice to All Teachers</h2>
  <div style= "background-color:#DCDCDC">
  <div style= "margin-left: 20px; margin-right: 20px; margin-top:20px; margin-bottom:20px;padding-top:10px;padding-right:20px padding-bottom:40px;padding-left:20px">

	<br/>
		<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
	Statement st= con.createStatement();
	Statement st1= con.createStatement();
	ResultSet rs=st.executeQuery("select * from `send_to` where t_com = '1' ORDER BY nid DESC");
	
	String sdate, desc, sid, nid;
	
	while(rs.next()) {
		nid = rs.getString(1);
		ResultSet rs1=st1.executeQuery("select * from `notice` where nid = '"+ nid +"'");
		
		if(rs1.next()) {
			
			sid = rs1.getString(4);
			sdate = rs1.getString(3);
			desc = rs1.getString(2);
			
			%>
				Senders ID : <% out.println(sid); %><br>
				Date Send : <% out.println(sdate); %><br>
				Notice : <% out.println(desc); %><br>
				<hr/>
			<%
		
		}
	}
%>
	
</div>
   </div>
  </div>
 </div>
    </div>
</body>
</html>