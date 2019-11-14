<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="stylesheet.css" rel="stylesheet">
	<link href="menu.css" rel="stylesheet">
	<link href="navbar.css" rel="stylesheet">
	<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
<title>Add</title>

<script>
function Validate() 
{
    var val = document.getElementById('t').value;
    
    if (!val.match(/^[a-zA-Z]+$/)) 
    {
        alert('Only text values are allowed for teacher and title.');
        return false;
    }
    
    return true;
}
</script>
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

<div class="container-fluid">

<div class="border">
 
  <div class="col-sm-3">
  <div style= background-color:#022c3c>
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
   <div class="col-sm-8" style="margin-top:10px">
<div style = "margin-left: 2%; background-color: #00FF00; border-radius: 10px;margin-top: ">
			<a href = "ViewSubjectServlet" style = " text-decoration: none; font-size: 30px; color: white;">&nbsp;&nbsp;View Subjects</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "addSubject.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Add another</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "adminHome.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Home Page</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		</div>


  <h2>Add a new Subject</h2>
  
  <div style= "background-color:#DCDCDC">
  <div style= "margin-left: 20px; margin-right: 20px; margin-top:20px; margin-bottom:20px;padding-top:20px; padding-bottom:40px">
<form name="addSub" action="SaveSubjectServlet" method="post" onsubmit="return Validate()"  >  
 
<div class="form-group row">
    <label for="id" class="col-sm-2 col-form-label">Subject ID</label>
    <div class="col-sm-10">
      <input type="text" name="subjectID" class="form-control" placeholder="id" required>
    </div>
  </div>
<div class="form-group row">
    <label for="ti" class="col-sm-2 col-form-label">Title</label>
    <div class="col-sm-10">
      <input type="text" name="title" class="form-control" placeholder="Title" required>
    </div>
  </div>
 
<div class="form-group row">
    <label for="t" class="col-sm-2 col-form-label">Teacher</label>
    <div class="col-sm-10">
      <input type="text" name="teacher" class="form-control" placeholder="Teacher" required>
    </div>
  </div>


<div class="form-group row">
    <label for="grade" class="col-sm-2 col-form-label">Grade</label>
    <div class="col-sm-10">
      <input type="text" name="grade" class="form-control" placeholder="Grade" required>
    </div>
  </div>




	
		
		 &nbsp; &nbsp; &nbsp;<input type="submit" class="btn btn-primary" role="button"value="Add New Subject"/>

   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
  <a href="addSubject.html" class="btn btn-danger" role="button">Reset</a>
 

  
</form>  
</div>
</div>
<br><p>
<div class="alert alert-danger">
<p>
  <strong>Error!</strong>Sorry! Unable to save record. An error occurred.
</div>

</div>

</div> 

 
<br/>  
</div>

</div>
</body>
</html>