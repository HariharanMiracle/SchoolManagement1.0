
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <link href="button.css" rel="stylesheet" type="text/css"/>
    <link href="navicss.css" rel="stylesheet" type="text/css"/>
    <link href="droplist.css" rel="stylesheet" type="text/css"/>
       <link href="navicss.css" rel="stylesheet" type="text/css"/>
    <link href="droplist.css" rel="stylesheet" type="text/css"/>
    <link href="button.css" rel="stylesheet" type="text/css"/>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <!-- script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="stylesheet.css" rel="stylesheet">
	<link href="menu.css" rel="stylesheet">
	<link href="navbar.css" rel="stylesheet">
	<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Report</title>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%
	DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
	Date date = new Date();
 	String user = (String)session.getAttribute("uid");
 %>
 
 
 
 
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
 
 
 
 
 
</head>
<body>


<div class="container-fluid">

<div class="border">
 
  <div class="col-sm-3">
  <div style=background-color:#022c3c>
  <div style= "margin-left: 45px; margin-right: 10px; margin-top:10px; margin-bottom:20px;padding-top:40px; padding-bottom:40px">
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br></br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Student - </b><%=session.getAttribute("uid")%></p>
 <br>
  <ul>
	<li><a href="studentHome.jsp">Home</a></li>
  	
    
    <li class="active"><a href="MySubjects.jsp">My Subjects</a></li>
    <li><a href="#">Attendance</a></li> 
    
    <li><a href="#">Library</a></li>
    <li style="background-color:#2aa5d8"><a href="progressnew.jsp">Progress</a></li>  
     <li><a href="studentmarkone.jsp">Report</a></li>      
        <li><a href="Student_Fees.jsp">Submit Fees</a></li>      
    
    <li><a href="timetables.jsp">Classroom Routine</a></li>
     <li><a href="examdet.jsp">Exams</a></li>
   
    <li><a href = "view_notice_std.jsp">Notices</a> 
          
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
			<a href = "logout.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Admins</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "logout.jsp" style = " text-decoration: none; font-size: 20px; color: red;">Teachers</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "logout.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Students</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "logout.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Staffs</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "logout.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Parents</a>
		</div>
		</div>
		<br></br><br><br>
 <center><div style = "margin-left: 50px; margin-top: -12px;"><h1 style = "color: #5d691c">Student Report </h1></div></center>	</div>
	<br>
</header>
<!-- Header section end -->

		
				
		
	</div>


	<div style = "width: 100%">
	<br/>      <br></br>
        <br>
       
<br></br>
	<div class="col-sm-6" style= "margin-left: 400px">
  <div style= "background-color:#c3bfbf">
 <center><div style= "margin-left: 20px; margin-right: 20px; margin-top:20px; margin-bottom:20px;padding-top:20px; padding-bottom:40px"> 


	 <%
             String sname=session.getAttribute("uid").toString();
            
            String gradd=request.getParameter("grade");
            String termm=request.getParameter("trm");
            
            %>
            <div id='printMe' style="background-color: #c3bfbf; ">
        <h1>Student Name:<%= sname %> </h1>
        <h1>Grade:	 <%= gradd %></h1>
        <h1>Term: <%= termm %></h1>
        <table border="1"   >
            
              <tr> <th colspan="3">Student Mark sheet</th>       </tr> 
           
                    <tr>
                        <td><center><b>Subject</b></center><td><center><b>Marks</b></center></td>
                    </tr>
         <% 
         
             try{  
                 Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolmanagement","root","");
                Statement st =con.createStatement();
                String sql="SELECT student.stid,marks.studentid,student.uid,marks.subject,marks.marks,term,grd FROM student INNER JOIN marks ON student.stid = marks.studentid where student.uid='"+sname+"' AND grd='"+gradd+"' AND term='"+termm+"'";
                 ResultSet rs=st.executeQuery(sql); 
                int i=0;
                int sum=0;
                int avg;
                 while(rs.next()){ 
         i++;
         %>
                   <tr>
                       <td><%= rs.getString("subject")%></td>
                       <td><%= rs.getString("marks")%></td>
                  </tr>
                  <%
                      int val = Integer.parseInt(rs.getString("marks"));
                   sum=sum+ val ;
                  %>
                  <br>
                 
                 <% 
                     
                                     
                 }
                %> 
             
        </table>
                <h1> TOTAL:<%= sum %> </h1>
                <% 
                    avg=sum/i;
                    
                
                    %>
                    <h1> Average:<%= avg %> </h1>
            </div>
<script>
		function printDiv(divName){
			var printContents = document.getElementById(divName).innerHTML;
			var originalContents = document.body.innerHTML;
			document.body.innerHTML = printContents;
			window.print();
			document.body.innerHTML = originalContents;
		}
	</script>
<button class="button" style="vertical-align:middle" onclick="printDiv('printMe')"><span>Print result sheet</button>

                  <%
             }catch(SQLException e){
             e.printStackTrace();
             }
            %>
	</div></center>
	</div>
	</div>
	</div>
	
</div>
<!-- Mid section end -->



</body>
</html>

