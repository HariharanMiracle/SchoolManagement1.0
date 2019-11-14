<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.util.Date"%>
	<%@ page import="java.text.*"%>
	<%@ page import="java.util.Calendar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- nt attendance part -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Attendance</title>

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
  position: fixed;
  top: 0;
  left: 0;
  border: 12px solid #2aa5d8;
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
a:hover {
    background-color: green;
}
</style>
</head>
<body>
<body>


<div class="border">
 
  <div class="col-sm-3">
  <div style=background-color:#022c3c>
    <div style= "margin-left: 45px; margin-right: 10px; margin-top:10px; margin-bottom:20px;padding-top:20px; padding-bottom:65px">
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br></br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>TEACHER - </b><%=session.getAttribute("uid")%></p>
 <br>
  <ul>
	
	<li ><a href="teacherHome.jsp">Home</a></li> 
    <li><a href="#">My Profile</a></li>
        <li class="active"><a href="viewMySubjects.jsp">Subject Management</a></li>
    <li><a href="AddExam.jsp">Exam Management</a></li>
    <li><a href="#">Library Management</a></li> 
    
    <li style="background-color:#2aa5d8"><a href="student_attendance2.jsp">Attendance Management</a></li>
    <li><a href="clsmgt.jsp">Classroom Management</a></li>      
       <li><a href="#">Behaviour Management</a></li>
<li><a href="leave.jsp">Leave Request</a></li>    
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
			<a href = "student_attendance2.jsp" style = " text-decoration: none; font-size: 20px; color: white;">&nbsp;&nbsp;Mark Students' Attendance</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "View_SAttendance.jsp" style = " text-decoration: none; font-size: 20px; color: white;">&nbsp;&nbsp;View Students' Attendance</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
		</div>
		
<br>
</br>
<div style="background-color:white">
<table border="1" class="table table-dark">
<thead><tr>
<th>Student ID: </th>
<th>Date Today: </th>
<th>Present/Absent: </th>
</tr></thead>

<tbody>
	
<%	
	
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
		Statement st = con.createStatement();
		Statement st1 = con.createStatement();
		
		DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		String str = df.format(date);
		
		ResultSet rs = st.executeQuery("select * from student");
		ResultSet rs1 = st1.executeQuery("select * from `student_attendance` where `date` = '"+str+"'");
	
	
	if(!rs1.next()){
		while(rs.next()){	
			String stid = rs.getString("stid");
			out.println("<tr><td>"+stid+"</td>");
			out.println(" <td> " + str + " </td> ");
			%>
			<td>
			<select name = "attendance" id = "stat" onchange = showHint(this.value)>
				<option value="">Select status</option>
				<option value = "<% out.println(stid + "absent"); %>">0</option>
				<option value = "<% out.println(stid + "present"); %>">1</option>
			</select>
			</td>
			</tr>
			
			<script>
            function showHint(str) {
            	var url="Student_attendance1.jsp?str1= " + str;
            	document.getElementById("txtHint").innerHTML = str;
                if (str.length == 0) {
                    document.getElementById("txtHint").innerHTML = "";
                    return;
                } else {
                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.onreadystatechange = function() {
                        if (this.readyState == 4 && this.status == 200) {
                            document.getElementById("hint").innerHTML = this.responseText;
                        }
                    };
                    xmlhttp.open("GET" ,url, true);
                    xmlhttp.send();
                }
            }
        </script>
		<%
		}
		
	%>

	
		<h3 id = "txtHint"></h3>
	<h3 id = "hint"></h3>	
	</div>
	<% }
		else{
			%><h2>You have already marked the attendance of this day</h2><%
		}%>
</tbody>
</table>
</div>
</div>
</div>
</div>
</body>
</html>