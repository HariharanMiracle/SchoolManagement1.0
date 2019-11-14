<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
		if(level != 3){
			response.sendRedirect("Login.jsp");
		}
	}
%>
<% 
	String stid=uid;
	Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
		Statement st= con.createStatement(); 
		ResultSet rs = st.executeQuery("select * from studentprogress where stid = '"+stid+"'");
		Statement st1= con.createStatement(); 
		ResultSet rs1 = st1.executeQuery("select * from student where stid = '"+stid+"'");
		
		if(rs.next() && rs1.next())
		{
			int att=Integer.parseInt(rs.getString(2));
			int desc=Integer.parseInt(rs.getString(3));
			String snote=rs.getString(4);
			String fname=rs1.getString(2);
			String mname=rs1.getString(3);
			String sname=rs1.getString(4);
			String Name=(fname+""+mname+""+sname);
		
		
		
		
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
				<h1>Your Child's Descipline and Attendence Illustration</h1>
				     <form action="Serach_Update_Delete Teacher DB.jsp" method="post">
                           <div class="col-md-12">
                           <div class="main main1 col-md-6">
                              <div class="form-left-w3l1">
                                Student ID: <input type="text" name="teid" value="<% out.println(stid);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 Student Name:<input type="text" name="fname" value="<% out.println(Name);%>">
                              </div>
                               <div class="form-left-w3l1">
                                 Attendence:<input type="text" name="att" value="<% out.println(att);%>">
                              </div>
                               <div class="form-left-w3l1">
                                 Descipline:<input type="text" name="desc" value="<% out.println(desc);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 Special Note:<input type="text" name="desc" value="<% out.println(snote);%>">
                              </div>
                               <a href="Student Home.jsp">Home</a>
                              
                              </div>
         <%						}					 %>
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
</body>
</html>