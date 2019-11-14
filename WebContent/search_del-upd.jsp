<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<h1>Update or delete</h1>
		<hr/>
		
			Student: <input type = "text" id = "search"/><br/>
			<input type = "button" onclick = "show_result()" value = "search"/>
		
		<script>
		
			 function show_result() {
            	
				 
				 var studid = document.getElementById("search").value;
				 var url="ajax.jsp?sid=" + studid;
                if (studid.length == 0) {
                    document.getElementById("txtHint").innerHTML = "";
                    return;
                } else {
                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.onreadystatechange = function() {  	 
                        if (this.readyState == 4 && this.status == 200) {
                            document.getElementById("txtHint").innerHTML = this.responseText;
                        }
                        else{
                        	document.getElementById("txtHint").innerHTML = "Something went wrong";
                        }
                    };
                    xmlhttp.open("GET" ,url, true);
                    xmlhttp.send();
          		
                }
            }
		
		</script>
		
		<hr/>
		
			<span id="txtHint"></span>
		
</body>
</html>