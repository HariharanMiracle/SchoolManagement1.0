<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Happy Kids | Admin Registration</title>
 
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
 
  
  <div class="col-sm-3">  <div style="background-color:#022c3c">
  <div style= "margin-left: 45px; margin-right: 10px; margin-top:10px; margin-bottom:20px;padding-top:40px; padding-bottom:40px">
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br></br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>ADMIN - </b><%=session.getAttribute("uid")%></p>
<br> 
  <ul>
	
  <li><a href="adminHome.jsp">Home</a></li> 
    <li style="background-color:#2aa5d8"><a href="AddUser.jsp">User Management</a></li>
        <li class="active"><a href="addSubject.jsp">Subject Management</a></li>
    <li><a href="#">Exam Management</a></li>
    <li><a href="library_management.jsp">Library Management</a></li> 
    
    <li><a href="teacherAttendance2.jsp">Attendance Management</a></li>
      <li ><a href="viewPayments.jsp">Fee Management</a></li>
    <li><a href="#">Classroom Management</a></li>      

    <li><a href="resource_manager.jsp">Human Resource</a></li>
    <li><a href="notice.jsp">Notices</a></li>         
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
<form action="Student Registration DB.jsp" method="post">
  
                             
                                  <div class="form-group row">
                                 <input type="text" name="stid" placeholder="Student ID" class = "form-control" required="">
                              </div>
                              <div class="form-group row">
                                 <input type="text" name="fname" placeholder="First Name" class = "form-control" required="">
                              </div>
                              <div class="form-group row">
                                 <input type="text" name="mname" placeholder="Middle Name" class = "form-control" required="">
                              </div>
                              <div class="form-group row">
                                 <input type="text" name="sname" placeholder="Last Name" class = "form-control" required="">
                              </div>
                              <div class=" radiofont">
                                 <input type="radio" name="gender" value="female">&nbsp;Male &nbsp;&nbsp;
                                 <input type="radio" name="gender" value="male">&nbsp;Female<br>                                 
                              </div>
                              <div class="form-group row">
                                 <input type="text" name="dob" placeholder="Date Of Birth" class = "form-control" required="">
                              </div>
                              <div class="form-group row">
                                 <input type="text" name="religion" placeholder="Religion" class = "form-control" required="">
                              </div>  
                               <div class="form-group row">
                                 <input type="text" name="nationality" placeholder="Nationality" class = "form-control" required="">
                              </div>
                              <div class="form-group row">
                                 <input type="password" name="studpass" placeholder="Student Password" class = "form-control" required="">
                              </div>
                              <div class="form-group row">
                                 <input type="text" name="gname" placeholder="Parents / Guardian Name"class = "form-control"  required="">
                              </div>
                              <div class="form-group row">
                                 <input type="text" name="goccu" placeholder="Parents / Guardian Occupation" class = "form-control" required="">
                              </div>
                              <div class="form-group row">
                                 <input type="text" name="nic" placeholder="Parents / Guardian NIC No." class = "form-control" required="">
                              </div>
                              <div class="form-group row">
                                 <input type="text" name="mobile" placeholder="Parents / Guardian Mobile No"class = "form-control"  required="">
                              </div>
                               <div class="form-group row">
                                 <input type="email" name="email" placeholder="Email" class = "form-control" required="">
                              </div>
                              <div class="form-group row">
                                 <input type="text1" name="address" placeholder="Address" class = "form-control" required="">
                              </div> 
                              <div class="form-group row">
                                 <input type="password" name="gpass" placeholder="Parents / Guardian Password" class = "form-control" required="">
                              </div>
                               <div class="form-group row">
                                 <input type="text" name="uid" placeholder="UserName" class = "form-control" required="">
                              </div>
							
                        <br></br>
                                 <button class="btn btn-primary" type="submit">Register</button><br>
                                 
                                 <script>
                                  function myFunction() {
                                  alert("Please contact your administrator or Technical Support");
                                  }
                                </script> 
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