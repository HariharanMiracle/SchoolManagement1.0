<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="java.util.Date" %>

	<%	
		
		String id = request.getParameter("Id");
		String fname = request.getParameter("fname");
		String mname = request.getParameter("mname");
		String sname = request.getParameter("sname");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String religion = request.getParameter("religion");
		String nationality=request.getParameter("nationality");
		String studpass = request.getParameter("studpass");
		String gname = request.getParameter("gname");
		String goccu=request.getParameter("goccu");
		String address=request.getParameter("address");
		String nic=request.getParameter("nic");
		String mobile =request.getParameter("mobile");
		//int mobile = Integer.parseInt(request.getParameter("mobile"));
		//out.println(mobile);
		String email = request.getParameter("email");
		String guardpass = request.getParameter("guardpass");
		String admin=request.getParameter("admin");
			
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement","root",""); 
		Statement st= con.createStatement(); 
		ResultSet rs;
		 
		
		out.println("1" + id + "-------------------2" + fname + "-------------------3" +  mname + "-------------------4" +  sname + "-------------------5" +  gender + "-------------------6" +  dob + "-------------------7" +  religion + "-------------------8" +  nationality + "-------------------9" +  gname + "-------------------10" +  goccu + "-------------------11" +  nic + "-------------------12" +  mobile + "-------------------13" +  email + "-------------------14" +  address + "-------------------15" +  guardpass + "-------------------16" +  admin);
		
		
		int i=st.executeUpdate("INSERT INTO student VALUES ('"+id+"', '"+fname+"', '"+mname+"', '"+sname+"', '"+gender+"', '"+dob+"', '"+religion+"', '"+nationality+"', '"+gname+"', '"+goccu+"', '"+nic+"', '"+mobile+"', '"+email+"', '"+address+"', '"+guardpass+"', '"+admin+"')");
		//int i = st.executeUpdate("INSERT INTO `user_account` VALUES ('"+fname+"', '"+guardpass+"','1')");
		
		out.println("<h1>User added successfully!</h3>"); 
		
		/*else if("search".equals(action))
		{
			String stid=request.getParameter("Id");
			
			Class.forName("com.mysql.jdbc.Driver"); 
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/itp", "root", ""); 
			Statement st= con.createStatement(); 
			ResultSet rs;
			
			if (stid != null && stid.length() > 0) {
			    PreparedStatement ps = con.prepareStatement("SELECT * FROM students WHERE stid = '"+stid+"'");
			    ps.setString(1, stid); // Bind the value to the placeholder
			    rs = ps.executeQuery(); // Execute the prepared statement and fetch results
			    
			    while(rs.next())
			    {
			    	
			    	/**mname=rs.getString(2);
			    	sname=rs.getString(3);
			    	gender=rs.getString(4);
			    	dob=rs.getString(5);
			    	religion=rs.getString(6);
			    	nationality=rs.getString(7);
			    	studpass=rs.getString(8);
			    	gname=rs.getString(9);
			    	goccu=rs.getString(10);
			    	address=rs.getString(11);
			    	nic=rs.getString(12);
			    	mobile=rs.getString(13);
			    	email=rs.getString(14);
			    	guardpass=rs.getString(15);
			    	admin=rs.getString(16);
			    }
			}
		}*/
	%>
</body>
</html>