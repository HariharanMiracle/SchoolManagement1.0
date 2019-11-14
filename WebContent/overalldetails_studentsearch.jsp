<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <%
	String uid = (String)session.getAttribute("uid");
	if(uid == null){
		response.sendRedirect("Login.jsp");
	}
	else{
		int level = (int)session.getAttribute("level");
		if(level != 1){
			response.sendRedirect("Login.jsp");
		}
	}
%> --%>
		<h1>Search Student</h1>
		<hr/>
		
			Student: <input type = "text" id = "search"/><br/>
			<input type = "button" onclick = "show_result()" value = "search"/>
		
		<script>
		
			 function show_result() {
            	
				 
				 var stid = document.getElementById("search").value;
				 var url="studentprogress_Ajax.jsp?sid="+ stid;
                if (stid.length == 0) {
                    document.getElementById("txtHint").innerHTML = "";
                    return;
                } else {
                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.onreadystatechange = function() {  	 
                        if (this.readyState == 4 && this.status == 200) {
                            document.getElementById("txtHint").innerHTML = this.responseText;
                        }
                        else{
                        	document.getElementById("txtHint").innerHTML = "Student not found, please retype!!!";
                        }
                    };
                    xmlhttp.open("GET",url, true);
                    xmlhttp.send();
          		
                }
            }
		
		</script>
		
		<hr/>
		
			<span id="txtHint"></span>
		
</body>
</html>