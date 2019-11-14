<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="assests/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<H2>LOGIN</H2>
<form method = "post" action = "verify.jsp">
<label><b>USER NAME</b></label>
    <input type="text" placeholder="Username" name="username" required>
    </br></br>
<label><b>PASSWORD</b></label>
    <input type="text" placeholder="Password" name="password" required>
    <br/>
    <input type = "submit" value = "Submit"/>
</form>
</body>
</html>