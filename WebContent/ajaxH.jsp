<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		if(request.getParameter("posi") != null){
			String pos = request.getParameter( "posi" );
			if(pos.equals("Subject_teacher")){
				%>
					<select name = "class" class="form-control">
		  				<option value="classAll">All</option>
						<option value="classA">Class A</option>
						<option value="classB">Class B</option>
		  				<option value="classC">Class C</option>
		  				<option value="classD">Class D</option>
					</select>
				<%
			}
			else if(pos.equals("Class_teacher")){
				%>
					<select name = "class" class="form-control">
		  				<option value="classAll">All</option>
						<option value="classA">Class A</option>
						<option value="classB">Class B</option>
		  				<option value="classC">Class C</option>
		  				<option value="classD">Class D</option>
					</select>
				<%
			}
			else if(pos.equals("Sectional_head")){
				%>
					<select name = "class" class="form-control">
	  					<option value="classAll">All</option>
					</select>
				<%
			}
			else{
				%>
					<h3>Something went wrong</h3>
				<%
			}
		}
	%>
</body>
</html>