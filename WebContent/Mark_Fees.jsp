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
<title>Notify Student</title>
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
<title>Notify Student</title>


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
  position: absolute;
  top: 0;
  left: 0;
  border: 12px solid #2aa5d8;
  width: 100%;
  height: 150%;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
a:hover {
    background-color: yellow;
}
</style>

<script>
function checkPattern() {
    var elem = document.getElementById("sid");
	
    // Allow A-Z, a-z, 0-9 and underscore. Min 1 char.
    var re = /^[a-zA-Z0-9_]+$/;

    var a =  re.test(elem.value);
    
    	if(a==false){
    		alert("Invalid character entered");
    	}
   
    return  re.test(elem.value);
    
 
}

</script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<body>
<div class="container-fluid">

<div class="border">
 
  <div class="col-sm-3">
  <div style=background-color:#022c3c>
  <div style= "margin-left: 30px; margin-right: 10px; margin-top:20px; margin-bottom:20px;padding-top:20px; padding-bottom:20px">
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>ADMIN - </b><%=session.getAttribute("uid")%></p>
 
  <ul>
	
  <li><a href="adminHome.jsp">Home</a></li> 
    <li><a href="AddUser.jsp">User Management</a></li>
        <li class="active"><a href="addSubject.jsp">Subject Management</a></li>
    <li><a href="#">Exam Management</a></li>
    <li><a href="#">Library Management</a></li> 
    
    <li><a href="#">Attendance Management</a></li>
      <li><a href="viewPayments.jsp">Fee Management</a></li>
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
			<a href = "viewPayments.jsp" style = " text-decoration: none; font-size: 30px; color: white;">&nbsp;&nbsp;View Fees</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "addFees.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Notify Students</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "Mark_Fees.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Update Payment</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 
		</div>
		<br></br>
  <h4>Mark Fees</h4>
  <div style= "background-color:#DCDCDC">
  <div style= "margin-left: 20px; margin-right: 20px; margin-top:20px; margin-bottom:20px;padding-top:20px; padding-bottom:40px">


				<%@ page import="java.sql.*"%>
				<%@ page import="javax.sql.*"%>
				<%
					Class.forName("com.mysql.jdbc.Driver"); 
					java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
					Statement st= con.createStatement();
					ResultSet rs=st.executeQuery("select * from `fees` where status = 'npaid'");
					String sid;
					int fees, year, term;
	
					while(rs.next()) {	
							sid = rs.getString(1);
							fees = Integer.parseInt(rs.getString(3));
							year = Integer.parseInt(rs.getString(4));
							term = Integer.parseInt(rs.getString(5));
							out.print("SID: " + sid + "<br/>FEES: " + fees + "<br/>YEAR: " + year + "<br/>TERM: " + term + "<br/>");
							%>
								<a href="Mark_Status.jsp?id=<%=sid%>">Mark_Status</a><br/><br/>
						
							<%
					}
				%>
				



</div>
</div>
</div>

</div>
</body>
</html>