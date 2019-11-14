<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- Not Mine -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a teacher</title>
</head>
<body>
	<h1>Add a teacher</h1>
	<hr/>
	
	<form action = "tchadd_db.jsp" method = "post">
		Id: <input type = "text" name = "Id"/>
		<br/>
		Name: <input type = "text" name = "Name"/>
		<br/>
		 <input type = "submit" value = "Submit"/>
	</form>

</body>
</html>