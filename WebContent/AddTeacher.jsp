<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%-- <%
  String uid = (String)session.getAttribute("uid");
  if(uid == null){
    response.sendRedirect("Login.jsp");
  }
  else{
    int level = (int)session.getAttribute("level");
    if(level != 1){
      response.sendRedirect("Login.jsp");
    }
  }
%> --%>
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
<title>Add</title>

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
  <div style= "margin-left: 30px; margin-right: 10px; margin-top:20px; margin-bottom:20px;padding-top:20px; padding-bottom:20px">
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>ADMIN - </b><%=session.getAttribute("uid")%></p>
 
  <ul>
	
  <li><a href="adminHome.jsp">Home</a></li> 
    <li style="background-color:#2aa5d8"><a href="AddUser.jsp">User Management</a></li>
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
   <div class="col-sm-8" style="margin-top:20px">
   	 	
		<div style = "margin-left: 2%; background-color: #00FF00; border-radius: 10px;margin-top: ">
			<a href = "AddStudent.jsp" style = " text-decoration: none; font-size: 30px; color: white;">&nbsp;&nbsp;Add Student</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "AddTeacher.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Add Teacher</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "AddStaff.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Add Staff</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "AddAdmin.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Add Admin</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 
		</div>
		

  
  
  
  
  <div style= "background-color:#DCDCDC">
  <div style= "margin-left: 20px; margin-right: 20px; margin-top:20px; margin-bottom:20px;padding-top:20px; padding-bottom:40px;height:80%">
<form action="Teacher Registration DB.jsp" method="post">
  
    <h1>Teacher Registration</h1>
    <p>Please fill in this form to create an account.</p>
    <div class="form-group row">
                                 <input type="text" name="tid" placeholder="Teacher ID" class = "form-control"  required="">
                              </div>
                              <div class="form-group row">
                                 <input type="text" name="fname" placeholder="First Name"class = "form-control"  required="">
                              </div>
                              <div class="form-group row">
                                 <input type="text" name="sname" placeholder="Last Name" class = "form-control" required="">
                              </div>
                              <div class=" radiofont">
                                 <input type="radio" name="gender" value="female">&nbsp;Male &nbsp;&nbsp;
                                 <input type="radio" name="gender" value="male">&nbsp;Female<br>                                 
                              </div> 
                              <div class="form-group row">
                                 <input type="email" name="email" placeholder="Email" class = "form-control" required="">
                              </div>                                                                            
               
                              <div class="form-group row">
                                 <input type="textarea" name="qualification" placeholder="Qualifications / Expierience" class = "form-control" required="">
                              </div>
                              <div class="form-group row">
                                 <input type="text" name="mobile" placeholder="Mobile No" class = "form-control" required="">
                              </div>
                              <div class="form-group row">
                                 <input type="text" name="nic" placeholder="NIC No." class = "form-control" required="">
                              </div>
                              <div class=" radiofont">
                                 <input type="radio" name="martial_status" value="Single">&nbsp;Single &nbsp;&nbsp;
                                 <input type="radio" name="martial_status" value="Married">&nbsp;Married<br>                                 
                              </div>
                              <div class="form-group row">
                                 <input type="textarea" name="address" placeholder="Address" class = "form-control" required="">
                              </div> 
                               <div class="form-group row">
                                 <input type="text" name="user" placeholder="Username" class = "form-control" required="">
                              </div>
                               <div class="form-group row">
                                 <input type="password" name="pass" placeholder="password" class = "form-control" required="">
                              </div>
                              
                             
                             
    <br/><br/>
    
   
  
    
    <button class="btn btn-primary" type="submit" class="registerbtn">Register</button>
  
 </form>
</div>
		</div>
	</div>

 
</div>

 
</div>

</div> 

 
<br/>  


</body>
</html>