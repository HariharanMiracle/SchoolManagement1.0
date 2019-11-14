<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Subjects - Select Grade</title>
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
.dropbtn {
    background-color: #2aa5d8 ;
    color: white;
    padding: 20px;
    font-size: 16px;
    border: none;
    cursor: pointer;
    width: 200px;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 300px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #2aa5d8 }

.dropdown:hover .dropdown-content {
    display: block;
}
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


.dropdown:hover .dropbtn {
    background-color: #022c3c  ;
}
</style>
</head>
<body>




<div class="border">

  <div class="col-sm-3">  <div style="background-color:#022c3c">
  <div style= "margin-left: 45px; margin-right: 10px; margin-top:10px; margin-bottom:20px;padding-top:40px; padding-bottom:40px">
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br></br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Teacher - </b><%=session.getAttribute("uid")%></p>
<br> 
  <ul> 
	<li><a href="teacherHome.jsp">Home</a></li> 
    <li><a href="#">My Profile</a></li>
        <li style="background-color:#2aa5d8"><a href="viewMySubjects.jsp">Subject Management</a></li>
    <li><a href="hometeacher.jsp">Exam Management</a></li>
    <li><a href="#">Library Management</a></li> 
    
    <li><a href="#">Attendance Management</a></li>
    <li><a href="#">Classroom Management</a></li>      
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
		<a href="login.html" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;Logout</a>
		</div>
   <div class="col-sm-8" style="margin-top:20px">
   	
		
		<div style = "margin-left: 2%; background-color: #00FF00; border-radius: 10px;padding-top:10px;padding-bottom:10px ">
			<a href = "Grades.jsp" style = " text-decoration: none; font-size: 20px; color: white;">&nbsp;&nbsp;View Subjects</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "MaForm1.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Add Lesson</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
		</div>


<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/schoolmanagement";

String Driver = "com.sql.jdbc.Driver";
String userName ="root";
String password="";
String name =request.getParameter("Id");



Statement st;
try{
	Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(url,userName,password);
String query = "select * from subjects where Grade='"+name+"'";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>
<br></br>
<div style = "margin-left: 2%; background-color: #E3E7EA; height:300px; border-radius: 10px;margin-top: ">
<div style= "margin-left: 40px; margin-top:20px; margin-bottom:20px;padding-top:20px; padding-bottom:20px;">
<h3>Select a Subject:</h3> &nbsp; &nbsp; <br>
<div class="dropdown">
  <button class="dropbtn"><%out.println(request.getParameter("Id")); %></button>
  <div class="dropdown-content">
<%
while(rs.next()){
%>
<a href=<%= "\"materialList.jsp?ti=" + rs.getString("SubjectID") + "\"" %> ><%=rs.getString("Title")%></a>



<%
}
%>
  </div>
</div>

</div>
  </div>
</div>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>

</div>
</div>

</body>
</html>