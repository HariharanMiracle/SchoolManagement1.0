	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Library Management System</title>
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
    background-color: green;
}
</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<div class="container-fluid">

<div class="border">
 
  <div class="col-sm-3">
  <div style="background-color:#022c3c">
  <div style= "margin-left: 45px; margin-right: 10px; margin-top:10px; margin-bottom:20px;padding-top:40px; padding-bottom:40px">
  <img src="prof.png" width="100px" style="margin-left:50px" /> <br></br><p style="font-size:20px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>ADMIN - </b><%=session.getAttribute("uid")%></p>
<br> 
  <ul>
	
  <li><a href="adminHome.jsp">Home</a></li> 
    <li><a href="AddUser.jsp">User Management</a></li>
        <li class="active"><a href="addSubject.jsp">Subject Management</a></li>
    <li><a href="#">Exam Management</a></li>
    <li style="background-color:#2aa5d8" ><a href="library_management.jsp">Library Management</a></li> 
    
    <li><a href="#">Attendance Management</a></li>
      <li ><a href="viewPayments.jsp">Fee Management</a></li>
    <li><a href="#">Classroom Management</a></li>      

    <li ><a href="resource_manager.jsp">Human Resource</a></li>
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
				&nbsp;&nbsp;&nbsp;<a href = "Book_dis.jsp" style = " text-decoration: none; font-size: 20px; color: white;">&nbsp;&nbsp;Books</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "mem.jsp" style = " text-decoration: none; font-size: 20px; color: white;">Members</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "brw.jsp" style = " text-decoration: none; font-size: 20px; color: white;">&nbsp;&nbsp;Borrow</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "returnV.jsp" style = " text-decoration: none; font-size: 20px; color: white;">&nbsp;&nbsp;Return</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "Add_to_stock.jsp" style = " text-decoration: none; font-size: 20px; color: white;">&nbsp;&nbsp;Stocks</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "vlib.jsp" style = " text-decoration: none; font-size: 20px; color: white;">&nbsp;&nbsp;Count</a>
		</div>
	
		<br>
		<h1>Borrow A Book</h1>
  <div style= "background-color:#DCDCDC">
  <div style= "margin-left: 50px; margin-right: 20px; margin-top:20px; margin-bottom:20px;padding-top:20px; padding-bottom:40px">
	


<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.*"%>
					<%
						DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
						String isbn = request.getParameter("isbn");
						String mem_id = request.getParameter("mem_id");
						Date issu = new Date();
						String isu_dat = df.format(issu);
						String ded = request.getParameter("deadline");

	
						Class.forName("com.mysql.jdbc.Driver"); 
						java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
						Statement st= con.createStatement(); 
						Statement st1= con.createStatement(); 
						Statement st2= con.createStatement(); 
						Statement st3= con.createStatement(); 
						Statement st4= con.createStatement();
						Statement st5= con.createStatement();
						
						Statement st6= con.createStatement();
						
						
						ResultSet rs=st1.executeQuery("select * from books where isbn = '"+isbn+"'"); 
						ResultSet rs1 =st2.executeQuery("select * from member where mem_id = '"+mem_id+"'"); 
						
						
						ResultSet rss1 =st6.executeQuery("select * from borrow where isbn = '"+isbn+"'"); 
						
	
						if(rs.next() && rs1.next()){
							if(rs.getString(2).equals(isbn) && rs1.getString(1).equals(mem_id))
							{	
								String bid = rs.getString(1);
								ResultSet rs3 =st5.executeQuery("select * from stock where bookid = '"+bid+"'");
								if(rs3.next()){
									
								int xqty = Integer.parseInt(rs3.getString(2)) - 1;
								if(xqty != -1){
									if(rss1.next()){
										out.println("Warning!!! Already Issued book");
									}
									else{
											int i=st.executeUpdate("INSERT INTO `borrow`(`isbn`, `mem_id`, `isue_date`, `deadline`) VALUES ('"+isbn+"','"+mem_id+"','"+isu_dat
													+"','"+ded+"')"); 
											int x=st4.executeUpdate("Update stock SET qty = '" + xqty + "' WHERE bookid = '" + bid + "'");
											out.println("Borrowed");	
									}	
							}else{
								out.println("Stock Not Available");
							}}
								else{
									out.println("Book not available");
								}
							}
							else{
								out.println("Result not found");
							}
						}
						else{
							out.println("Incorrect");
							out.println(mem_id+isbn);
						}
						
					%>





	
	</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>
