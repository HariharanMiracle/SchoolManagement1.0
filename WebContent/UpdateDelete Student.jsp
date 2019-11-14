<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<html>
<head>
<%@ page import="javax.sql.*"%> 
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date" %>
<%   

		String firname=""; 
		String action=request.getParameter("action");
		if("add".equals(action))
		{
		String stid=request.getParameter("Id");

		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
		Statement st= con.createStatement(); 
		ResultSet rs;
		
	if (stid != null && stid.length() > 0) {
    PreparedStatement ps = con.prepareStatement("SELECT * FROM students WHERE stid = '"+stid+"'");
    ps.setString(1, stid); // Bind the value to the placeholder
    rs = ps.executeQuery(); // Execute the prepared statement and fetch results
    
    
    while(rs.next())
    {
    	
    	firname=rs.getString(1);
    	String mname=rs.getString(3);
    	String sname=rs.getString(4);
    	String gender=rs.getString(5);
    	String dob=rs.getString(6);
    	String religion=rs.getString(7);
    	String nationality=rs.getString(8);
    	String studpass=rs.getString(9);
    	String gname=rs.getString(10);
    	String goccu=rs.getString(11);
    	String address=rs.getString(12);
    	String nic=rs.getString(13);
    	int mobile=Integer.parseInt(rs.getString(14));
    	String email=rs.getString(15);
    	String guardpass=rs.getString(16);
    	String admin=rs.getString(17); }
    
    
	}
		}
	%>
</head>			    	
<body>

<form action="AddStud_DB.jsp" method="post">
  <div class="container">
  <h1>Update/Delete Student Record</h1>
    <p> <input type="text" placeholder="Search.." name="search">
      <button type="submit" name="search">Search</button></p>
    <hr>

	<label><b>1.Id</b></label>
    <input type="text" placeholder="Id" name="Id" required>

    <label><b>2.First Name</b></label>
    <input type="text" placeholder="First Name" name="fname" value="<% out.println(firname);  %>">

    <label><b>3.Other name/s</b></label>
    <input type="text" placeholder="Other Names" name="mname" >
	<br/><br/>
	
    <label><b>4.Surname</b></label>
    <input type="text" placeholder="Surname" name="sname">
    
    <label><b>5.Gender </b></label>
    <input type="text" placeholder="Gender" name="gender">
    <br/><br/>
    
    <label><b>6.DOB</b></label>
    <input type="date" placeholder="Date of Birth" name="dob">
    
    <label><b>7.Religion</b></label>
    <input type="text" placeholder="Religion" name="religion" >
    
     <label><b>8.Nationality </b></label>
    <input type="text" placeholder="Nationality" name="nationality">
    <br/><br/>
    
    <label><b>9.Password</b></label>
    <input type="password" placeholder="Password" name="studpass" >
    
    <label><b>10.Guardian Name</b></label>
    <input type="text" placeholder="Guardian Name" name="gname" >
    <br/><br/>
    
     <label><b>11.Guardian's Occupation</b></label>
    <input type="text" placeholder="Guardian's Occupation" name="goccu" >
    
    <label><b>12.Address </b></label>
    <textarea placeholder="Address" name="address" ></textarea>
    <br/><br/>
    <label><b>13.NIC </b></label>
    <input type="text" placeholder="NIC" name="nic" >
    
    <label><b>14.Mobile </b></label>
    <input type="text" placeholder="Mobile" name="mobile">
    <br/><br/>
     <label><b>15.Email</b></label>
    <input type="email" placeholder="Email" name="email" >
    
     <label><b>16.Guardian Pass</b></label>
    <input type="password" placeholder="Guardian Password" name="guardpass">
    
     <label><b>17.Admin</b></label>
    <input type="text" placeholder="admin" name="admin">
    
    <br/><br/>
 
   
    <hr>
    
    <input type="submit" name="action" value="update">
    <input type="submit" name="action" value="search">
    <input type="submit" name="action" value="delete"> 
  </div>
 </form>
</body>
</html>