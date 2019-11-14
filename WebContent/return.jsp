<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- Not Mine -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="assests/css/style.css"> 
</head>
<body>

<!-- Header section start -->
<header>
	<div id = "hd1">
		<div id = "hds1"><img src="assests/image/icon.png" height = "80" width = "80">
			<h1>Admin</h1>
			<hr>
		</div>
	</div>
	<div id = "hd2">
		<div id = "hd2s1">
			<div style = "float: right; margin-right: 25px; margin-top: 5px;"><a href = "logout.jsp" style = " text-decoration: none; font-size: 50px; color: black;">LOGOUT</a></div>
		</div>
		<div id = "hd2s2">
			<a href = "all_lv_req.jsp" style = " text-decoration: none; font-size: 30px; color: white;">View all leave request</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "notice.jsp" style = " text-decoration: none; font-size: 30px; color: white;">Send Notice</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "resource_manager.jsp" style = " text-decoration: none; font-size: 30px; color: white;">Resource Manager</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "Calculate_Salary.jsp" style = " text-decoration: none; font-size: 30px; color: white;">Calculate_Salary</a>
		</div>
		<div id = "hd2s3"><h1 style = "color: #ACE500">Return book</h1></div>
	</div>
	<br/>
</header>
<!-- Header section end -->



<!-- Mid section start -->
<div style = "height: 100%; width: 100%; float: top;">
	<div style = "height: 600px; background-color: #1a414c; width: 25%; float: left;">
		
		
		
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
	<div style = "float: right; width: 75%; text-align: center">
	<br/>
	<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
	Statement st= con.createStatement();
	ResultSet rs=st.executeQuery("select * from `borrow`");
	
	String bid, title, memId, name, bdate;
	%><h2>BookId   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Title   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   MemberId   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Name   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Borrowed_Date   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Function</h2><%
	
	while(rs.next()) {
			bid = rs.getString(1);
			title = rs.getString(2);
			memId = rs.getString(3);
			name = rs.getString(4);
			bdate = rs.getString(5);

			out.println("<h2>" +bid+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +title+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +memId+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +name+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +bdate);
			%>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="ret.jsp?bid=<%=bid%>" style = "color: #28A4D8; text-decoration: none; font-size: 20px;">return</a></h2>
				<hr/>
			<%
		}
%>
	</div>
</div>
<!-- Mid section end -->


</body>
</html>