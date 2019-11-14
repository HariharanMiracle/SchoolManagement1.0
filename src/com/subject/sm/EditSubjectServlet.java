package com.subject.sm;


import java.io.PrintWriter;  
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditSubjectServlet
 */
@WebServlet("/EditSubjectServlet")
public class EditSubjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditSubjectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		 response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	        out.println("\r\n" + 
	        		"<head>\r\n" + 
	        		"<meta charset=\"utf-8\">\r\n" + 
	        		"  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n" + 
	        		"  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\r\n" + 
	        		"  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\r\n" + 
	        		"  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\r\n" + 
	        		"	<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\r\n" + 
	        		"	<link href=\"stylesheet.css\" rel=\"stylesheet\">\r\n" + 
	        		"	<link href=\"menu.css\" rel=\"stylesheet\">\r\n" + 
	        		"	<link href=\"navbar.css\" rel=\"stylesheet\">\r\n" + 
	        		"	<link href=\"../../dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n" + 
	        		"<title>Add</title>\r\n" + 
	        		"\r\n" + 
	        		"<script>\r\n" + 
	        		"function Validate() \r\n" + 
	        		"{\r\n" + 
	        		"    var val = document.getElementById('t').value;\r\n" + 
	        		"    \r\n" + 
	        		"    if (!val.match(/^[a-zA-Z]+$/)) \r\n" + 
	        		"    {\r\n" + 
	        		"        alert('Only text values are allowed for teacher and title.');\r\n" + 
	        		"        return false;\r\n" + 
	        		"    }\r\n" + 
	        		"    \r\n" + 
	        		"    return true;\r\n" + 
	        		"}\r\n" + 
	        		"</script>\r\n" + 
	        		"<style>\r\n" + 
	        		"ul {\r\n" + 
	        		"    list-style-type: none;\r\n" + 
	        		"    margin: 0;\r\n" + 
	        		"    padding: 0;\r\n" + 
	        		"    width: 200px;\r\n" + 
	        		"    background-color: #022c3c ;\r\n" + 
	        		"    border: 1px solid #555;\r\n" + 
	        		"}\r\n" + 
	        		"\r\n" + 
	        		"li a {\r\n" + 
	        		"    display: block;\r\n" + 
	        		"    color: white;\r\n" + 
	        		"    padding: 8px 16px;\r\n" + 
	        		"    text-decoration: none;\r\n" + 
	        		"}\r\n" + 
	        		"\r\n" + 
	        		"li {\r\n" + 
	        		"    text-align: center;\r\n" + 
	        		"    border-bottom: 1px solid #555;\r\n" + 
	        		"}\r\n" + 
	        		"\r\n" + 
	        		"li:last-child {\r\n" + 
	        		"    border-bottom: none;\r\n" + 
	        		"}\r\n" + 
	        		"\r\n" + 
	        		"li a.active {\r\n" + 
	        		"    background-color: #2aa5d8 ;\r\n" + 
	        		"    color: white;\r\n" + 
	        		"}\r\n" + 
	        		"\r\n" + 
	        		"li a:hover:not(.active) {\r\n" + 
	        		"    background-color: #2aa5d8 ;\r\n" + 
	        		"    color: white;\r\n" + 
	        		"}\r\n" + 
	        		"body {\r\n" + 
	        		"\r\n" + 
	        		"}\r\n" + 
	        		"\r\n" + 
	        		".border {\r\n" + 
	        		"  position: fixed;\r\n" + 
	        		"  top: 0;\r\n" + 
	        		"  left: 0;\r\n" + 
	        		"  border: 12px solid #2aa5d8;\r\n" + 
	        		"  width: 100%;\r\n" + 
	        		"  height: 100%;\r\n" + 
	        		"  margin: 0;\r\n" + 
	        		"  padding: 0;\r\n" + 
	        		"  box-sizing: border-box;\r\n" + 
	        		"}\r\n" + 
	        		"</style>\r\n" + 
	        		"</head>\r\n" + 
	        		"<body>\r\n" + 
	        		"\r\n" + 
	        		"<div class=\"container-fluid\">\r\n" + 
	        		"\r\n" + 
	        		"<div class=\"border\">\r\n" + 
	        		"\r\n" + 
	        		"  <div class=\"col-sm-3\">\r\n" + 
	        		"  <img src=\"male.png\" width=\"100px\" style=\"margin-left:10px\" /> <br>ADMIN\r\n" + 
	        		"  <ul>\r\n" + 
	        		"    <li class=\"active\"><a href=\"addSubject.html\">Subject Management</a></li>	\r\n" + 
	        		"    <li><a href=\"#\">HTML</a></li>\r\n" + 
	        		"    <li><a href=\"#\">CSS</a></li>\r\n" + 
	        		"    <li><a href=\"#\">About</a></li> \r\n" + 
	        		"    \r\n" + 
	        		"    <li><a href=\"#\">CSS</a></li>\r\n" + 
	        		"    <li><a href=\"#\">About</a></li>      \r\n" + 
	        		"    \r\n" + 
	        		"    <li><a href=\"#\">CSS</a></li>\r\n" + 
	        		"    <li><a href=\"#\">About</a></li>             \r\n" + 
	        		"  </ul>\r\n" + 
	        		"  </div>\r\n" + 
	        		"  <div class=\"container\">\r\n" + 
	        		"   <div class=\"col-sm-7\" style=\"margin-top:10px\">\r\n" + 
	        		"   	<div class=\"p-5 mb-2 bg-success \">\r\n" + 
	        		"\r\n" + 
	        		"\r\n" + 
	        		"  <a href=\"addSubject.html\" class=\"btn btn-success\" role=\"button\">Add Another</a> &nbsp;\r\n" + 
	        		"    <a href=\"ViewSubjectServlet\" class=\"btn btn-success\" role=\"button\">View Subjects</a> \r\n" + 
	        		"  <a href=\"adminHome.html\" class=\"btn btn-success\" role=\"button\">Home Page</a>\r\n" + 
	        		"  \r\n" + 
	        		" \r\n" + 
	        		"</div>\r\n" + 
	        		"\r\n" + 
	        		" <div class=\"col-sm-9\">");
	        out.println("<h1>Edit Subjects</h1>");  
	        String sid=request.getParameter("id");  
	        int id=Integer.parseInt(sid);  
	          
	        Subject s=SubjectDAO.getSubjectById(id);  
	          
	        out.print("<form action='EditSubjectServlet2' method='post'>");  
	        out.print("<table>");  
	        out.print("<tr><td></td><td><input type='hidden' name='id' value='"+s.getId()+"'/></td></tr>");  
	        out.print("<tr><td>SubjectID:</td><td><input type='text' name='subjectID' value='"+s.getSubjectId()+"'/></td></tr>");  
	        out.print("<tr><td>Title:</td><td><input type='text' name='title' value='"+s.getTitle()+"'/>  </td></tr>");  
	        out.print("<tr><td>Teacher:</td><td><input type='text' name='teacher' value='"+s.getTeacher()+"'/></td></tr>");  
	        out.print("<tr><td>Grade:</td><td><input type='text' name='grade' value='"+s.getGrade()+"'/></td> </tr>");  
	        out.print("<tr><td colspan='2'><input type='submit' value='Edit & Save '/></td></tr>");  
	        out.print("</table>");  
	        out.print("</form>");  
	          
	        out.close();  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
