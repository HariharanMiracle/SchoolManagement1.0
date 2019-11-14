<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- chira part -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Attendance_DB</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.util.Date"%>
	<%@ page import="java.text.*"%>
	<%@ page import="java.util.Calendar"%>
	
	<%
		String str1 = request.getParameter("str1");
		int len = str1.length();
		String ttid = str1.substring(0,7);
		String stat = str1.substring(7,len);
	
		DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		String str = df.format(date);
		
		int year = Calendar.getInstance().get(Calendar.YEAR);
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		int month = cal.get(Calendar.MONTH) + 1;
		
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
		Statement st = con.createStatement();
		ResultSet rs;
		
		
		int x = st.executeUpdate("insert into teacher_attendance (`tid`, `year`, `month`, `date`, `status`) values ('"+ttid+"','"+year+"', '"+month+"', '"+str+"', '"+stat+"')");	
		out.println("success---");
		out.println(ttid + "---" + stat);
			
		
		
		
		
			
%>
</body>
</html>