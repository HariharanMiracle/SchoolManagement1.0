

<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
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
<title>Manage Exams</title>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
 
<%
	DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
	
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
  height: 110%;
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
		<li ><a href="teacherHome.jsp">Home</a></li> 
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
		<center><div style = "margin-left: 50px; margin-top: -12px;"><h1 style = "color: #5d691c">DELETE EXAMS</h1></div></center>
		
				
		
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

<div class="col-sm-7" style="margin-left:5px">	<br/>
	 <h4>Update / Delete Exam Details </h4>     
        <table border="1">
                
                    <tr>
                        <td><center><b>Exam ID</b></center><td><center><b>Subject ID</b></center></td><td><center><b>Exam Date</b></center></td>
                        <td><center><b>Grade</b></center></td><td><center><b>Term</b></center></td>
                        <td><center><b>Update</b></center></td><td><center><b>Delete</b></center></td>
                    </tr>
        <% 
         
             try{  
                 String sname=session.getAttribute("uid").toString();
                 Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolmanagement","root","");
                Statement st =con.createStatement();
                String sql="SELECT * from exam";
                 ResultSet rs=st.executeQuery(sql); 
                
                 while(rs.next()){ %>
                  <tr> 
                 <% String eid=rs.getString("id"); %> 
                 <td><%= rs.getString("id")%></td>
                  <td><%= rs.getString("sid")%> </td>
                  <td><%= rs.getString("date")%></td>
                  <td><%= rs.getString("term")%></td>
                  <td> <%= rs.getString("grade")%></td>
                 
                 
                  <form action="updatexm.jsp" method="POST">
                     <input type="hidden" name="ex_id" value="<%= eid %>" readonly="readonly" />
                     <td>  <button style="background-color:greenyellow "class="button"input type="submit" name="update" value="update" style="vertical-align:middle"><span>UPDATE </span></button></td>
                    
                  </form>
                  <form action="deletexm" method="POST">
                    <input type="hidden" name="ex_id" value="<%= eid %>" readonly="readonly" />
                    <td>  
                    <button class="button"input type="submit" name="del" value="delete" style="vertical-align:middle"><span>DELETE </span></button>
                    </td> </form>
                 </tr>
                 <% 
                                     
                 }
                
             }catch(SQLException e){
             e.printStackTrace();
             }
            %>
        </table>
        	</div>
        
        </div>
	</div>
</div>
<!-- Mid section end -->



</body>
</html>
