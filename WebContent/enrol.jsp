<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <!-- script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="stylesheet.css" rel="stylesheet">
	<link href="menu.css" rel="stylesheet">
	<link href="navbar.css" rel="stylesheet">
	<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
<title>Enrol</title>

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

<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/schoolmanagement";

String Driver = "com.sql.jdbc.Driver";
String userName ="root";
String password="";

String key = request.getParameter("key");

System.out.println(key);

Statement st;
try{
	Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(url,userName,password);
String stdID;
String q1 = "select SubjectID from subjects where SubjectID = '"+key+"'";
String query = "SELECT stid from student where uid = '"+session.getAttribute("uid")+"'";

String q2 = "UPDATE student_subject SET  EnrolStatus = 'yes' where SubjectID = '"+session.getAttribute("studentSubject")+"' and StudentID = (SELECT stid from student where uid = '"+session.getAttribute("uid")+"')";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
if(rs.next()){
	stdID = rs.getString("stid");
	String q3 = "INSERT INTO `student_subject` ( `SubjectID`, `StudentID`, `EnrolStatus`) VALUES ('"+key+"', '"+stdID+"', 'yes')";

	PreparedStatement ps = con.prepareStatement(q3);
	ps.executeUpdate();
}
%>

<div class="container-fluid">

<div class="border">
  <div class="col-sm-11" style = "margin-left: 900px; margin-top:10px">
 &nbsp; &nbsp;<a href="login.html" class="btn btn-danger" role="button">Logout</a>
</div>
  <div class="col-sm-3">
  <img src="male.png" width="100px" style="margin-left:10px" /> <br>STUDENT -  <%= session.getAttribute( "uid" ) %>
  <ul>
  	
  	<li><a href="studentHome.jsp">Home</a></li>
    <li><a href="#">My Profile</a></li>	
    
    <li class="active"><a href="MySubjects.jsp">My Subjects</a></li>
    <li><a href="#">Attendance</a></li> 
    
    <li><a href="#">Library</a></li>
    <li><a href="#">Progress & Report</a></li>      
    
    <li><a href="#">Classroom Routine</a></li>
    <li><a href="#">Behaviour Remarks</a></li>  
    <li><a href="#">Notices</a>           
  </ul>
  </div>
 
   <div class="col-sm-8" style="margin-top:20px">
   	<img src="sub.png" width="60%" style="margin-left:10px" />
		<br>
 </div>
  <div class="col-sm-8" style="margin-top:20px">
 <div class="alert alert-success" role="alert">
 <p>You have successfully enrolled for this subject!</p>
</div>
</div>
 <div class="col-sm-12" style="margin-top:5px">
 					<a href="MySubjects.jsp" class="btn btn-success btn-block"  style="background-color:#00FF00" role="button">Go Back to My Subjects</a>

</div>

<%
}
catch(Exception e){
e.printStackTrace();
}
%>
</body>
</html>