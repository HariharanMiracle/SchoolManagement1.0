<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>

    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assign Resource</title>
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
a:hover {
    background-color: green;
}
</style>




<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<body>
<div class="container-fluid">

<div class="border">
 
  <div class="col-sm-3">
  <div style="background-color:#022c3c">
  <div style= "margin-left: 45px; margin-right: 10px; margin-top:10px; margin-bottom:20px;padding-top:40px; padding-bottom:65px">
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br></br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>ADMIN - </b><%=session.getAttribute("uid")%></p>
<br> 
  <ul>
	
  <li><a href="adminHome.jsp">Home</a></li> 
    <li><a href="AddUser.jsp">User Management</a></li>
        <li class="active"><a href="addSubject.jsp">Subject Management</a></li>
    <li><a href="#">Exam Management</a></li>
    <li><a href="#">Library Management</a></li> 
    
    <li><a href="#">Attendance Management</a></li>
      <li ><a href="viewPayments.jsp">Fee Management</a></li>
    <li><a href="#">Classroom Management</a></li>      

    <li style="background-color:#2aa5d8"><a href="resource_manager.jsp">Human Resource</a></li>
    <li ><a href="notice.jsp">Notices</a></li>         
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
				<a href = "assign_resource.jsp" style = " text-decoration: none; font-size: 20px; color: white;">&nbsp;&nbsp;Assign Resource</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "view_all_res_upd.jsp" style = " text-decoration: none; font-size: 20px; color: white;">View All Resources To Update</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "Delete_resource.jsp" style = " text-decoration: none; font-size: 20px; color: white;">&nbsp;&nbsp;Delete Resource</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
		</div>
	
		<br></br>
		 <h2>Assign Resources </h2>
  <div style= "background-color:#DCDCDC">
  <div style= "margin-left: 20px; margin-right: 20px; margin-top:20px; margin-bottom:20px;padding-top:20px; padding-bottom:40px">
	<br/>
		<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%	
		String wid = request.getParameter("wid");
		String tid = request.getParameter("tid");
		String pos = request.getParameter("pos");
		String sid = request.getParameter("sec");
		String cid = request.getParameter("class");
			
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
		
		Statement st5= con.createStatement(); 
		ResultSet rs5 = st5.executeQuery("select * from teacher where tid ='"+tid+"'");
		
		Statement st= con.createStatement(); 
		ResultSet rs = st.executeQuery("select * from teacher_position where workid ='"+wid+"'");
		
		Statement st1 = con.createStatement();
		ResultSet rs1 = st1.executeQuery("select * from teacher_position where tid ='"+tid+"' AND position = 'Sectional_head'");
		
		Statement st2 = con.createStatement();
		ResultSet rs2 = st2.executeQuery("select * from teacher_position where tid ='"+tid+"' AND position = 'Class_teacher'");
		
		Statement st3 = con.createStatement();
		ResultSet rs3 = st3.executeQuery("select * from teacher_position where classid = '"+cid+"' AND position ='class_teacher' AND sectionid = '"+sid+"'");
		
		Statement st4 = con.createStatement();
		ResultSet rs4 = st4.executeQuery("select * from teacher_position where position ='Sectional_head' AND sectionid = '"+sid+"' AND classid = 'classAll'");
		
		if(rs5.next()){
			if(!rs.next()){
				if(!rs1.next()){
					if(!rs2.next()){
						if(!rs3.next()){
							if(!rs4.next()){
								int x = st.executeUpdate("insert into teacher_position (`workid`, `tid`, `position`, `sectionid`, `classid`) values ('"+wid+"','"+tid+"', '"+pos+"', '"+sid+"', '"+cid+"')");	
								out.println("<h3 class = 'green_correct'>Teachers resources added successfully</h3>");
								%><a href = "assign_resource.jsp">back</a><%
							}
							else{
								out.println("<h3 class = 'red_wrong'>Warning : There is a sectional head for this particular section</h3>");
								%><a href = "assign_resource.jsp">back</a><%
							}
						}
						else{
							out.println("<h3 class = 'red_wrong'>Warning : There is a class teacher for this particular class</h3>");
							%><a href = "assign_resource.jsp">back</a><%
						}
					}
					else{
						out.println("<h3 class = 'red_wrong'>Warning : The teacher is already a class teacher</h3>");
						%><a href = "assign_resource.jsp">back</a><%
					}
				}
				else{
					out.println("<h3 class = 'red_wrong'>Warning : The teacher is already a sectional head</h3>");
					%><a href = "assign_resource.jsp">back</a><%
				}
			}
			else{
				out.println("<h3 class = 'red_wrong'>Warning : The Work Id is already assigned</h3>");
				%><a href = "assign_resource.jsp">back</a><%
			}
		}else{
			out.println("<h3 class = 'red_wrong'>Warning : Teacher id is incorrect</h3>");
			%><a href = "assign_resource.jsp">back</a><%
		}
	%>
	</div>
</div>

<!-- Mid section end -->
</div>
</div>
</div>


</body>
</html>