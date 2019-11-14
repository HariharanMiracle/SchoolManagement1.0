<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
<title>Add User</title>


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

</style>
</head>
<body>

<div class="container-fluid">

<div class="border">
 
  <div class="col-sm-3">
  <div style=background-color:#022c3c>
  <div style= "margin-left: 30px; margin-right: 10px; margin-top:20px; margin-bottom:20px;padding-top:20px; padding-bottom:20px">
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>ADMIN - </b><%=session.getAttribute("uid")%></p>
 
  <ul>
	
  <li><a href="adminHome.jsp">Home</a></li> 
    <li><a href="AddUser.jsp">User Management</a></li>
        <li class="active"><a href="addSubject.jsp">Subject Management</a></li>
    <li><a href="#">Exam Management</a></li>
    <li><a href="#">Library Management</a></li> 
    
    <li><a href="#">Attendance Management</a></li>
      <li><a href="#">Fee Management</a></li>
    <li><a href="#">Classroom Management</a></li>      
    
    <li><a href="#">Human Resource</a></li>
    <li><a href="#">Notices</a></li>          
  </ul>
  </div>
  </div>
  </div>
  <div class="container">
  <div style="float:right; margin-top:20px">
		<a href="login.html" class="btn btn-danger" role="button">Logout</a>
		</div>
			 <h2>Edit/Delete User</h2> 
			 
   <div class="col-sm-3" style="margin-top:20px; float:left">
   	 	
		<div style = " background-color: #00FA9A; width: 300px; border: 10px solid green; padding: 25px; margin: 25px">
			<a href = 'Serach_Update_Delete Student.jsp' style = " text-decoration: none; font-size: 20px; color: white;">&nbsp;&nbsp;Student&nbsp;&nbsp; <img src="user.jpg" width="50px"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
	</div>
	
	<div class="col-sm-6" style="margin-top:20px; margin-left:5px">
	
		<div style = " background-color: #00FA9A; width: 300px; border: 10px solid green; padding: 25px; margin: 25px">
			<a href = "Serach_Update_Delete Teacher.jsp" style = " text-decoration: none; font-size: 20px; color: white;">&nbsp;&nbsp;Teacher &nbsp;&nbsp;<img src="teacher.png" width="50px"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
	</div>
	
	<div class="col-sm-3" style="margin-top:20px; margin-left:5px">
		
		<div style = " background-color: #00FA9A; width: 300px; border: 10px solid green; padding: 25px; margin: 25px">
			<a href = "Search_Update_Delete Staff.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Staff&nbsp;&nbsp;<img src="user.jpg" width="50px"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
	</div>
	
	<div class="col-sm-6" style="margin-top:20px; margin-left:5px">
	
		<div style = " background-color: #00FA9A; width: 300px; border: 10px solid green; padding: 25px; margin: 25px">
			<a href = "Search_Update_Delete Admin.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Admin&nbsp;&nbsp;<img src="user.jpg" width="50px"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
		
	</div>
		
	<a href='AddUser.jsp'><input type="button" value="Add User"></a>
<a href='UpdateEditUser.jsp'><input type="button" value="Update/Delete User"></a>
  

  

	

 
</div>

 <div class="col-sm-8">
  
</div>
</div>

</div> 

 
<br/>  


</body>
</html>


