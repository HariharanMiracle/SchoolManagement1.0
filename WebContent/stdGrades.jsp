<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Grades List</title>

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

.dropdown:hover .dropbtn {
    background-color: #022c3c  ;
}
body {
 
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
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/schoolmanagement";

String Driver = "com.sql.jdbc.Driver";
String userName ="root";
String password="";


Statement st;
try{
	Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(url,userName,password);
String query = "select * from grade";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>
<div style="float:right; margin-top:20px; margin-right:20px">
		<a href="login.html" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;Logout</a>
		</div>

		
   <div class="col-sm-8" style="margin-top:10px">
   	<img src="sub.png" width="60%" height="200px" style="margin-left:10px" />
   	</div>
   	<br></br>
   	  <div class="col-sm-8" style="margin-top:30px; margin-left:30px;margin-right:60px; background-color:#E3E7EA">
   	  <div style= "margin-left: 20px; margin-top:20px; margin-bottom:20px;padding-top:20px; padding-bottom:40px">
   	    Select a Grade: &nbsp; &nbsp;
<div class="dropdown" >
  <button class="dropbtn">Grade</button>
  <div class="dropdown-content">

<%

while(rs.next()){
	
	
%>
<a href=<%= "\"stdSubjectList.jsp?Id=" + rs.getString("Grade") + "\"" %> ><%=rs.getString("Grade")%></a>



<%
}
%>
</div>
</div>
</div>
  <h1></h1>
</div>

<%
}
catch(Exception e){
e.printStackTrace();
}
%>
 <div class="col-sm-8" style="margin-top:200px">
 					<a href="MySubjects.jsp" class="btn btn-success btn-block"  style="background-color:#00FF00" role="button">Go Back to My Subjects</a>

</div>

</div>
</body>
</html>