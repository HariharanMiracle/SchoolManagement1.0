
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <link href="button.css" rel="stylesheet" type="text/css"/>
    <link href="navicss.css" rel="stylesheet" type="text/css"/>
    <link href="droplist.css" rel="stylesheet" type="text/css"/>
       <link href="navicss.css" rel="stylesheet" type="text/css"/>
    <link href="droplist.css" rel="stylesheet" type="text/css"/>
    <link href="button.css" rel="stylesheet" type="text/css"/>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <!-- script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="stylesheet.css" rel="stylesheet">
	<link href="menu.css" rel="stylesheet">
	<link href="navbar.css" rel="stylesheet">
	<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exams</title>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%
	DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
	Date date = new Date();
 	String user = (String)session.getAttribute("uid");
 %>
 
 
 
 
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
 
 
 
 
 
</head>
<body>


<div class="container-fluid">

<div class="border">
 
  <div class="col-sm-3">
  <div style=background-color:#022c3c>
  <div style= "margin-left: 45px; margin-right: 10px; margin-top:10px; margin-bottom:20px;padding-top:40px; padding-bottom:65px">
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br></br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>TEACHER - </b><%=session.getAttribute("uid")%></p>
 <br>
  <ul>
		<li><a href="teacherHome.jsp">Home</a></li> 
    <li><a href="#">My Profile</a></li>
        <li class="active"><a href="viewMySubjects.jsp">Subject Management</a></li>
                <li style="background-color:#2aa5d8">   <button class="dropdown-btn">Exam Management
                    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-container">
    <a  href="AddExam.jsp">Add Exam</a>
    <a href="examdeteacher.jsp">Update / Delete Exam</a>
    <a href="AddmarksOne.jsp">Add Result</a>
  </div>
                </li>
    <li><a href="#">Library Management</a></li> 
    
    <li><a href="student_attendance2.jsp">Attendance Management</a></li>
    <li><a href="clsmgt.jsp">Classroom Management</a></li>      
       <li><a href="#">Behaviour Management</a></li>
<li><a href="leave.jsp">Leave Request</a></li>    
    <li><a href="view_notice_tec.jsp">Notices</a></li>
         
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
			<a href = "logout.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Admins</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "logout.jsp" style = " text-decoration: none; font-size: 20px; color: red;">Teachers</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "logout.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Students</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "logout.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Staffs</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "logout.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Parents</a>
		</div>
		</div>
		<br></br><br><br>
			<center><div style = "margin-left: 6px; margin-top: -12px;"><h1 style = "color: #5d691c">ADD NEW EXAMS</h1></div></center>
	</div>
	<br>
</header>
<!-- Header section end -->

		
				
		
	</div>
<script>
/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var dropdownContent = this.nextElementSibling;
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
    }
  });
}
</script>

	<div style = "width: 100%">
	<br/>      <br></br>
        <br>
        </br>
<br></br>
	<div class="col-sm-6" style= "margin-left: 400px">
  <div style= "background-color:#DCDCDC">
 <center><div style= "margin-left: 20px; margin-right: 20px; margin-top:20px; margin-bottom:20px;padding-top:20px; padding-bottom:40px"> 
	<form action="Addexams" method="POST">
	<table>
           
            <tr><td>Exam Date: </td><td> <input id="gr"   type="date" name="exdate"/></td></tr>
            <tr><td>Subject ID: </td><td>
            <select id="gr" name="sid"> 
                <% 
         
             try{  
                 Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolmanagement","root","");
                Statement st =con.createStatement();
                String sql="select * from subjects";
                 ResultSet rs=st.executeQuery(sql); 
                
                 while(rs.next()){ %>
                   
                 <option><%= rs.getString("SubjectID")%>:<%= rs.getString("Title")%></option>
                 
                 
                 
                 <% 
                    
                 
                 }
                
             }catch(SQLException e){
             e.printStackTrace();
             }
            %>
            </select>
            </td></tr>
              <tr><td>  Grade: </td><td><select id="gr" name="grade">
                 <option>Grade 1</option>
                 <option>Grade 2</option>
                 <option>Grade 3</option>
                 <option>Grade 4</option>
                 <option>Grade 5</option>
                 
             </select></td></tr>
             
            <tr><td>  Term:</td><td> <select id="gr" name="trm">
                  <option> 1</option>
                 <option>2</option>
                 <option>3</option>
             </select></td></tr>
            </table>
            <br>
              <button class="button"type="submit" style="vertical-align:middle"><span>SUBMIT </span></button>
        </form>
	</div></center>
	</div>
	</div>
	</div>
	
</div>
<!-- Mid section end -->



</body>
</html>

