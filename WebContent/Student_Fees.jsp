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
<title>Add Fees</title>


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
	         /* Full height */
  
	  
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
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>STUDENT - </b><%=session.getAttribute("uid")%></p>
 
  <ul>
    	<li><a href="studentHome.jsp">Home</a></li>
    <li><a href="#">My Profile</a></li>	
    
    <li class="active"><a href="MySubjects.jsp">My Subjects</a></li>
    <li><a href="#">Attendance</a></li> 
    
    <li><a href="#">Library</a></li>
    <li><a href="#">Progress & Report</a></li>      
        <li><a href="Student_Fees.jsp">Submit Fees</a></li>      
    
    <li><a href="#">Classroom Routine</a></li>
    <li><a href="#">Behaviour Remarks</a></li>  
    <li><a href="#">Notices</a> 
                      
  </ul>
  </div>
  </div>
  </div>
  <div class="container">
<div style="float:right; margin-top:20px">
		<a href="login.html" class="btn btn-danger" role="button">Logout</a>
		</div>
   <div class="col-sm-8" style="margin-top:20px">
   	<br></br>
		
   	
		<div style = "margin-left: 2%; background-color: #00FF00; border-radius: 10px;margin-top: ">
			 <h2>Add Payment Details</h2>
		</div>
		
  
  

  <div style= "background-color:#DCDCDC">
  <div style= "margin-left: 20px; margin-right: 20px; margin-top:20px; margin-bottom:20px;padding-top:20px; padding-bottom:40px">
  
  
<form name="addSub" action="savePayment2.jsp" method="post"  >  
 
 
<div class="form-group row">
    <label for="bank" class="col-sm-2 col-form-label">Name of Bank: </label>
    <div class="col-sm-10">
      <input type="text" name="bank" class="form-control" placeholder="bank" required>
    </div>
  </div>
<div class="form-group row">
    <label for="no" class="col-sm-2 col-form-label">Bank Slip Number: </label>
    <div class="col-sm-10">
      <input type="text" name="no" id="t"class="form-control" placeholder="Number" required>
    </div>
  </div>
 
<div class="form-group row">
    <label for="b" class="col-sm-2 col-form-label">Branch</label>
    <div class="col-sm-10">
      <input type="text" name="branch" id="b" class="form-control" placeholder="Branch" required>
    </div>
  </div>


<div class="form-group row">
    <label for="date" class="col-sm-2 col-form-label">Date of Payment</label>
    <div class="col-sm-10">
      <input type="text" name="date" class="form-control" placeholder="YYYY-MM-DD" required>
    </div>
  </div>




	
		
		 &nbsp; &nbsp; &nbsp;<input type="submit" class="btn btn-primary" value="Add Details"/>


  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href="addSubject.html" class="btn btn-danger" role="button">Reset</a>


  
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