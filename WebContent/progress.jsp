
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
<title>Progress</title>
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
<center><div style = "margin-left: 50px; margin-top: -12px;"><h1 style = "color: #5d691c">STUDENT PROGRESS CHART FOR FULL MARKS</h1></div></center>	

	<br>

<!-- Header section end -->

		
				
		
	<div class="col-sm-6" style= "margin-left: 10px">
  <div style= "background-color:#DCDCDC">
<div style= "margin-left: 20px; margin-right: 20px; margin-top:20px; margin-bottom:20px;padding-top:20px; padding-bottom:40px"> 
				


 <%
             String sname=session.getAttribute("uid").toString();
            
            String gradd=request.getParameter("grade");
            
            
            %>
            
        <h4>Student Username:<%= sname %> </h4>
<!--        term 1 result-->
        <h4>Term:  <%= gradd %></h4>
        <% 
            
         int i=0;
                int sum=0;
                int avg;
             try{  
                 Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolmanagement","root","");
                Statement st =con.createStatement();
                String sql="SELECT student.stid,marks.studentid,student.uid,marks.subject,marks.marks,marks.term,marks.grd FROM student INNER JOIN marks ON student.stid = marks.studentid where student.uid='"+sname+"' AND grd='"+gradd+"' AND term='1'";
                 ResultSet rs=st.executeQuery(sql); 
                 
                
                 while(rs.next()){ 
         i++;
         %>
                  
                  <%
                      int val = Integer.parseInt(rs.getString("marks"));
                   sum=sum+ val ;
                  %>

                 
                 <% 
                     
                                     
                 }
                %> 
                
                
                <% 
                    avg=sum/i;
                    
                
                    %>
                   
            

                  <%
             }catch(SQLException e){
             e.printStackTrace();
             }
            %>
<!--            term 2 result-->
   <% 
         int i1=0;
                int sum1=0;
                int avg1;
             try{  
                 Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolmanagement","root","");
                Statement st =con.createStatement();
                String sql="SELECT student.stid,marks.studentid,student.uid,marks.subject,marks.marks,marks.term,marks.grd FROM student INNER JOIN marks ON student.stid = marks.studentid where student.uid='"+sname+"' AND grd='"+gradd+"' AND term='2'";
                 ResultSet rs1=st.executeQuery(sql); 
                
                 while(rs1.next()){ 
         i1++;
         %>
                  
                  <%
                      int val1 = Integer.parseInt(rs1.getString("marks"));
                   sum1=sum1+ val1 ;
                  %>
                  
                 
                 <% 
                     
                                     
                 }
                %> 
               
                
                <% 
                    avg1=sum1/i1;
                    
                
                    %>
                    
            </div>
            
                  <%
             }catch(SQLException e){
             e.printStackTrace();
             }
            %>
<!--                  term 3 result-->
   <% 
         int i2=0;
                int sum2=0;
                int avg2;
             try{  
                 Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolmanagement","root","");
                Statement st =con.createStatement();
                String sql="SELECT student.stid,marks.studentid,student.uid,marks.subject,marks.marks,term,grd FROM student INNER JOIN marks ON student.stid = marks.studentid where student.uid='"+sname+"' AND grd='"+gradd+"' AND term='3'";
                 ResultSet rs2=st.executeQuery(sql); 
                
                 while(rs2.next()){ 
         i2++;
         %>
                  
                  <%
                      int val1 = Integer.parseInt(rs2.getString("marks"));
                   sum2=sum2+ val1 ;
                  %>
                 
                 
                 <% 
                     
                                     
                 }
                %> 
               
                
                <% 
	                    avg2=sum2/i2;
                    
                
                    %>
                    
            </div>
                     
            
           
                  <%
             }catch(SQLException e){
             e.printStackTrace();
             }
            %>
        
       
            
       
        
            <div id="piechart" style="margin-left: 10px"></div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['term', 'full mark'],
  
  ['term 1', <%= sum %>],
   ['term 2', <%= sum1 %>],
    ['term 3', <%= sum2 %>]

  
 
  
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'My Year Progress', 'width':550, 'height':400};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.LineChart(document.getElementById('piechart'));
  chart.draw(data, options);
}
</script>
    <div id="piechart1" style="margin-left: 10px"></div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart1);

// Draw the chart and set the chart values
function drawChart1() {
  var data1 = google.visualization.arrayToDataTable([
  ['term', 'full mark'],
  
  ['term 1', <%= sum %>],
   ['term 2', <%= sum1 %>],
    ['term 3', <%= sum2 %>]

  
 
  
]);

  // Optional; add a title and set the width and height of the chart
  var options1= {'title':'My Year Progress', 'width':550, 'height':400};

  // Display the chart inside the <div> element with id="piechart"
  var chart1 = new google.visualization.PieChart(document.getElementById('piechart1'));
  chart1.draw(data1, options1);
}
</script>
    

<!-- Mid section end -->

</div>
</div>
</div>
</div>
</body>
</html>

