<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="stylesheet.css" rel="stylesheet">
	<link href="menu.css" rel="stylesheet">
	<link href="navbar.css" rel="stylesheet">
	<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lessons</title>


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
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
}
.link_col{
	color: #123A48;
	font-size: 30px;
	text-decoration: none;
}

.border {
	position:absolute;
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
<body>

<div class="border">
  <div class="col-sm-3">  <div style="background-color:#022c3c">
  <div style= "margin-left: 45px; margin-right: 10px; margin-top:10px; margin-bottom:20px;padding-top:40px; padding-bottom:40px">
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br></br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Student - </b><%=session.getAttribute("uid")%></p>
<br> 
  <ul> 
	<li><a href="studentHome.jsp">Home</a></li>
    <li><a href="#">My Profile</a></li>	
    
    <li style="background-color:#2aa5d8"><a href="MySubjects.jsp">My Subjects</a></li>
    <li><a href="#">Attendance</a></li> 
    
    <li><a href="#">Library</a></li>
    <li><a href="#">Progress & Report</a></li>      
        <li><a href="Student_Fees.jsp">Submit Fees</a></li>      
    
    <li><a href="#">Classroom Routine</a></li>
    <li><a href="#">Behaviour Remarks</a></li>  
    <li><a href = "view_notice_std.jsp">Notices</a> 
          
  </ul>	
  </div>
  </div>
  </div>
<div style="float:right; margin-top:20px; margin-right:20px">
		<a href="login.html" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;Logout</a>
		</div>
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/schoolmanagement";

String Driver = "com.sql.jdbc.Driver";
String userName ="root";
String password="";

String subID =request.getParameter("ti");
System.out.println(subID);
session.setAttribute("studentSubject", subID);

Statement st;
try{
	Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(url,userName,password);
st = con.createStatement();
ResultSet rs1 = st.executeQuery("select stid from student where uid='"+session.getAttribute( "uid" ) +"'");
String id="";
if(rs1.next()){
	id = rs1.getString("stid");

}

String q1 = "SELECT * FROM submaterials, student_subject where submaterials.SubjectID='"+subID+"' AND student_subject.SubjectID = '"+subID+"' and student_subject.StudentID='" +  id + "' and student_subject.EnrolStatus='yes'";
String query = "select * from submaterials where SubjectID='"+subID+"'";
st = con.createStatement();
ResultSet rs = st.executeQuery(q1);

%>
<div class="container"> 
 <div class="col-sm-9" style="margin-top:20px">
  <a href="stdGrades.jsp" class="btn btn-primary btn-block" role="button">Go Back to Grades</a>
  <br></br>
 </div>
 
<%
boolean records = false;
while(rs.next()){
	records = true;

	
	
%>
<div class="col-sm-8">
  <div class="panel panel-info">
      <div class="panel-heading"><%=rs.getString("Duration")%></div>
      <div class="panel-body"><h4><%=rs.getString("Topic")%></h4><br>
      <%=rs.getString("Description")%><br>
      Reference Links: &nbsp; <%=rs.getString("Links")%><br>
      
    <img src="adobe.jpg" height="30px" width="30px"/>  <a href=<%= "\"downloadFileServlet?Id=" + rs.getString("SubjectID") + "\"" %> >Download</a>
      
      </div>
    </div>
    </div>



<%
}

if(!records){
	%>  
	<div class = "col-sm-8" style="background-color:#DCDCDC; margin-top:10%; margin-right:100px">
	<div style="padding:20px; padding-bottom:50px">
	<form method="get" action="enrol.jsp">

	 Enter Enrollment key:   <input type="password" name="key" required> &nbsp;&nbsp;&nbsp; <input type="reset"class="btn btn-danger" value="Reset"> <br>
	 <div style="padding:30px; padding-bottom:20px">
<input type="submit" value="ENROL" style="margin-left:200px; background-color:#8A2BE2; color:white">
</div>
	</form>
	</div>
	</div>
	
<% 
}
%>
</div>
</div>
</div>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>
</div>
</body>
</body>
</html>