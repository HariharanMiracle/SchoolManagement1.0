<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 <!-- PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.util.Date" %>
	<%
	String uid = (String)session.getAttribute("uid");
	if(uid == null){
		response.sendRedirect("Login.jsp");
	}
	else{
		int level = (int)session.getAttribute("level");
		if(level != 2){
			response.sendRedirect("Login.jsp");
		}
	}
	
	
%> 
	<%
		if(request.getParameter("sid") != null){
			String sid = request.getParameter( "sid" );
			Class.forName("com.mysql.jdbc.Driver"); 
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
			Statement st= con.createStatement(); 
			Statement st1= con.createStatement(); 
			ResultSet rs = st.executeQuery("select * from studentprogress where stid = '"+sid+"'");
			ResultSet rs1 = st1.executeQuery("select * from student where stid = '"+sid+"'");
			if(rs.next() && rs1.next()){
				String fname = rs1.getString("fname");
				String mname = rs1.getString("mname");
				String sname = rs1.getString("surname");
				String stid = rs.getString("stid");
				String att=rs.getString("attendence");
				String desc=rs.getString("descipline");
				String snote=rs.getString("special_notes");
			%>
				<h1>You can update student's progress here</h1>
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
                  <li class="resp-tab-item"><span>STUDENT PROGRESS</span></li>
               </ul>
               <div class="clearfix"> </div>
               <div class="resp-tabs-container">
                  <div class="tab-1 resp-tab-content">
                     <div class="swm-right-w3ls">
				<h1>Student Progress</h1>
				     <form action="studentprogress DB.jsp" method="post">
                           <div class="col-md-12">
                           <div class="main main1 col-md-6">
                              
                              <div class="form-left-w3l1">
                               Student ID:<input type="text" name="stid" value="<% out.println(sid);%>">
                              </div>
                              <div class="form-left-w3l1">
                                First Name:<input type="text" name="fname" value="<% out.println(fname);%>">
                              </div>
                              <div class="form-left-w3l1">
                                Mid. Name:<input type="text" name="mname" value="<% out.println(mname);%>">
                              </div>
                              <div class="form-left-w3l1">
                               Surname: <input type="text" name="lname" value="<% out.println(sname);%>">
                              </div>
                              <div class="form-left-w3l1">
                               Attendence:<input type="text" name="attendence" value="<% out.println(att);%>">%
                              </div>
                              <div class="form-left-w3l1">
                                 Descipline:<input type="text" name="descipline" value="<% out.println(desc);%>">%
                              </div>
                              <div class="form-left-w3l1">
                                 <%-- <input type="text" name="snote" value="<% out.println(snote);%> "> --%>
                                 Special notes:<input type="textarea" rows="5" cols="50" name="snote" value="<%out.println(snote);%>"> 
								</textarea>
                              </div>  
                           </div>
                           <div class="btnn1">
                                 <button class="btnn1" type="submit" name="action" value="UPDATE"> UPDATE </button>
                                 <br>
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
			
			<% }
			else{
				String siid = request.getParameter( "sid" );
				Class.forName("com.mysql.jdbc.Driver"); 
				java.sql.Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost/itp", "root", ""); 
				Statement st2= con2.createStatement(); 
			    ResultSet rs2 = st2.executeQuery("select * from student where stid = '"+sid+"'");
			    if(rs2.next())
			    {
			    	String fname = rs2.getString("fname");
					String mname = rs2.getString("mname");
					String sname = rs2.getString("surname");
			%>
			
			<h1>You can update student's progress here</h1>
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
                  <li class="resp-tab-item"><span>STUDENT PROGRESS</span></li>
               </ul>
               <div class="clearfix"> </div>
               <div class="resp-tabs-container">
                  <div class="tab-1 resp-tab-content">
                     <div class="swm-right-w3ls">
				<h1>Student Progress</h1>
				     <form action="studentprogress DB.jsp" method="post">
                           <div class="col-md-12">
                           <div class="main main1 col-md-6">
                              
                              <div class="form-left-w3l1">
                                 <input type="text" name="stid" value="<% out.println(siid);%>">
                              </div>
                              <div class="form-left-w3l1">
                                <input type="text" name="fname" value="<% out.println(fname);%>">
                              </div>
                              <div class="form-left-w3l1">
                                <input type="text" name="mname" value="<% out.println(mname);%>">
                              </div>
                              <div class="form-left-w3l1">
                                <input type="text" name="lname" value="<% out.println(sname);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="attendence" value=" ">%
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="descipline" value=" ">%
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="snote" value=" ">
                              </div>  
                           </div>
                           <div class="btnn1">
                                 <button class="btnn1" type="submit" name="action" value="ADD"> ADD </button>
                                 <br>
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
    <%  }
      else{
    	  out.println(request.getParameter("Student Id not Registered!"));
      }
				
			 }
		}
		else{
			
			out.println("Result not found!!!Please retype again");
		}
	%>
	
    				
    				
 					
</body>
</html>