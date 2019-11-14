<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Happy Kids | Student Registration</title>
</head>
<body>
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
 <div class="col-md-12">

         <div class="col-md-3">
         
         <div style="background-color: white; margin-right:104px;">
         <div class="" style="margin-top:30px; border: 1px solid #399; border-radius: 6px;">
         <div style="margin-left:50px;">
            <img style="margin-top: 10px;" src="assests/images/user1.png"/> <br>
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
                  <li class="resp-tab-item"><span>STUDENT REGISTRATION</span></li>
               </ul>
               <div class="clearfix"> </div>
               <div class="resp-tabs-container">
                  <div class="tab-1 resp-tab-content">
                     <div class="swm-right-w3ls">
                        <form action="Student Registration DB.jsp" method="post">
                           <div class="col-md-12">
                           <div class="main main1 col-md-6">
                              
                              <div class="form-left-w3l1">
                                 <input type="text" name="stid" placeholder="Student ID" required="">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="fname" placeholder="First Name" required="">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="mname" placeholder="Middle Name" required="">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="sname" placeholder="Last Name" required="">
                              </div>
                              <div class=" radiofont">
                                 <input type="radio" name="gender" value="female">&nbsp;Male &nbsp;&nbsp;
                                 <input type="radio" name="gender" value="male">&nbsp;Female<br>                                 
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="dob" placeholder="Date Of Birth" required="">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="religion" placeholder="Religion" required="">
                              </div>  
                                                                                     

                              
                           </div>
                           <div class="main2 col-md-6">
                              <div class="form-left-w3l1">
                                 <input type="text" name="nationality" placeholder="Nationality" required="">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="password" name="studpass" placeholder="Student Password" required="">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="gname" placeholder="Parents / Guardian Name" required="">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="goccu" placeholder="Parents / Guardian Occupation" required="">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="nic" placeholder="Parents / Guardian NIC No." required="">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="mobile" placeholder="Parents / Guardian Mobile No" required="">
                              </div>
                               <div class="form-left-w3l1">
                                 <input type="email" name="email" placeholder="Email" required="">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text1" name="address" placeholder="Address" required="">
                              </div> 
                              <div class="form-left-w3l1">
                                 <input type="password" name="gpass" placeholder="Parents / Guardian Password" required="">
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