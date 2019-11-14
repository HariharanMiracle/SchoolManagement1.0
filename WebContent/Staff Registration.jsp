<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Happy Kids | Staff Registration</title>
 
 <%
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
	%> 
      <!-- Meta tags -->
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <meta name="keywords" content=""/>
      <script>
         addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
      </script>
      <!-- Meta tags -->
      <!-- font-awesome icons -->
      <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
      <!-- //font-awesome icons -->
      <!--stylesheets-->
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <link href="css/bootstrap.css" rel='stylesheet' type='text/css' media="all">
      <!--//style sheet end here-->
      <link href="//fonts.googleapis.com/css?family=Barlow:300,400,500" rel="stylesheet">
</head>
<body>
		<div class="col-md-12">

         <div class="col-md-3">
         
         <div style="background-color: white; margin-right:104px;">
         <div class="" style="margin-top:30px; border: 1px solid #399; border-radius: 6px;">
         <div style="margin-left:50px;">
            <img style="margin-top: 10px;" src="images/user1.png"/> <br>
            <a style="margin-left:15px;" href="login.html" class="btn btn-danger" role="button">Logout</a><br><br>
            <b style="margin-left:20px; text-decoration:bold; font-size:20px; color:red;">Admin</b>
         </div>
         <div class="navstyle">
         <ul>
            <li><a href="#">Home</a></li> 
            <li><a href="#">User Management</a></li>
            <li class="active"><a href="addSubject.html">Subject Management</a></li>
            <li><a href="#">Exam Management</a></li>
            <li><a href="#">Library Management</a></li> 
             
            <li><a href="#">Attendance Management</a></li>
            <li><a href="#">Classroom Management</a></li>      
             
            <li><a href="#">CSS</a></li>
            <li><a href="#">About</a></li> 
            <li><a href="#">Classroom Management</a></li>
            <li><a href="#">Classroom Management</a></li>             
         </ul>
         </div>
      </div>
      </div>

      </div>

      <div class="col-md-9">

      <div class="art-bothside1 newstyle1">
         <div class="sap_tabs">
            <div id="horizontalTab">
               <ul class="resp-tabs-list">
                  <li class="resp-tab-item"><span>STAFF REGISTRATION</span></li>
               </ul>
               <div class="clearfix"> </div>
               <div class="resp-tabs-container">
                  <div class="tab-1 resp-tab-content">
                     <div class="swm-right-w3ls">
                        <form action="Staff Registration DB.jsp" method="post">
                           <div class="col-md-12">
                           <div class="main main1 col-md-6">
                              
                              <div class="form-left-w3l1">
                                 <input type="text" name="stid" placeholder="Staff ID" required="">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="fname" placeholder="First Name" required="">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="lname" placeholder="Last Name" required="">
                              </div>
                             
                           </div>

                           <div class="main2 col-md-6">
                              
                              <div class="form-left-w3l1">
                                 <input type="text" name="qualification" placeholder="Qualifications / Expierience" required="">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="mobile" placeholder="Mobile No" required="">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="nic" placeholder="NIC No." required="">
                              </div>
                              <div class=" radiofont">
                                 <input type="radio" name="maritial_status" value="Single">&nbsp;Single &nbsp;&nbsp;
                                 <input type="radio" name="martial_status" value="Married">&nbsp;Married<br>                                 
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text1" name="address" placeholder="Address" required="">
                              </div> 
                              <div class="form-left-w3l1">
                                 <input type="password" name="staffpass" placeholder="Password" required="">
                              </div>
                              
                                                            
                           </div>

                           

                           <div class="btnn1">
                                 <button class="btnn1" type="submit">Register</button><br>
                                 
                                 <script>
                                  function myFunction() {
                                  alert("Please contact your administrator or Technical Support");
                                  }
                                </script> 

                              </div>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>

      </div>
      <div class="clearfix"></div>

      
      
      
      <!--js working-->
      <script src='js/jquery-2.2.3.min.js'></script>
      <!--//js working-->
      <script src="js/easyResponsiveTabs.js"></script>
      <script>
         $(document).ready(function () {
         	$('#horizontalTab').easyResponsiveTabs({
         		type: 'default', //Types: default, vertical, accordion           
         		width: 'auto', //auto or any width like 600px
         		fit: true // 100% fit in a container
         	});
         });
      </script>
		
</body>
</html>