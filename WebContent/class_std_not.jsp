<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Class student notice</title>
<link rel="stylesheet" href="assests/css/style.css"> 

<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>


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
<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="stylesheet.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


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
a:hover{
background-color:green;
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
</style>
</head>
</head>
<body>




<div class="border">
  <div class="col-sm-3">  <div style="background-color:#022c3c">
  <div style= "margin-left: 45px; margin-right: 10px; margin-top:10px; margin-bottom:20px;padding-top:40px; padding-bottom:40px">
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br></br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Student - </b><%=session.getAttribute("uid")%></p>
<br> 
  <ul> 
	<li><a href="studentHome.jsp">Home</a></li>
    <li><a href="#">My Profile</a></li>	
    
    <li ><a href="MySubjects.jsp">My Subjects</a></li>
    <li><a href="#">Attendance</a></li> 
    
    <li><a href="#">Library</a></li>
    <li><a href="#">Progress & Report</a></li>      
        <li><a href="Student_Fees.jsp">Submit Fees</a></li>      
    
    <li><a href="#">Classroom Routine</a></li>
    <li><a href="#">Behaviour Remarks</a></li>  
    <li style="background-color:#2aa5d8"><a href = "view_notice_std.jsp">Notices</a> 
          
  </ul>	
  </div>
  </div>
  </div>
<div style="float:right; margin-top:20px; margin-right:20px">
		<a href="login.html" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;Logout</a>
		</div>
		
		
		   <div class="col-sm-9" style="margin-top:20px">
<h1 style = "color: #ACE500">Notice to a particular student</h1>

	<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
	String id = (String)session.getAttribute("uid");
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
	Statement st= con.createStatement();
	Statement st1= con.createStatement();
	Statement st2= con.createStatement();
	ResultSet rs=st.executeQuery("select * from `student` where `stid`=(SELECT student.stid from `student` where student.uid ='"+id+"')");
	out.println(id);
	if(rs.next()){
		String classid = rs.getString("class");
		out.println(classid);
		ResultSet rs1=st1.executeQuery("select * from `send_to` where cid = '"+ classid +"'");
		
		while(rs1.next()) {
			String nid = rs1.getString(1);
			out.println(nid);
			ResultSet rs2=st2.executeQuery("select * from `notice` where nid = '"+ nid +"'");
			//out.println("Working");
			
			if(rs2.next()) {
				
				String sender = rs2.getString(4);
				String sdate = rs2.getString(3);
				String desc = rs2.getString(2);
				
				%>
					<h3>Senders ID : <% out.println(sender); %></h3>
					<h3>Date Send : <% out.println(sdate); %></h3>
					<h3>Notice : <% out.println(desc); %></h3>
					<hr/>
				<%
			
			}
			else{
				out.println("Something went wrong");
			}
		}
	}
	else{
		out.println("Something went wrong");
	}
	%>
</div>
	</div>







</body>
</html>