package com.subject.sm;
import java.io.PrintWriter;  
import java.util.List;  
  

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewSubjectServlet
 */
@WebServlet("/ViewSubjectServlet")
public class ViewSubjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewSubjectServlet() {
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
	        
	        out.println("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n" + 
	        		"  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\r\n" + 
	        		"  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\r\n" + 
	        		"  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\r\n" + 
	        		"	<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\r\n" + 
	        		"	<link href=\"stylesheet.css\" rel=\"stylesheet\">\r\n" + 
	        		"	<link href=\"menu.css\" rel=\"stylesheet\">\r\n" + 
	        		"	<link href=\"navbar.css\" rel=\"stylesheet\">\r\n" + 
	        		"	<link href=\"../../dist/css/bootstrap.min.css\" rel=\"stylesheet\">");
	        out.println("<a href='addSubject.jsp'>Back</a>");  
	        out.println("<h1>Subjects List</h1>");  
	          
	        List<Subject> list=SubjectDAO.getAllSubjects();  
	        
	        out.print("<table class='table'");  
	        out.print("<tr><th>Id</th><th>SubjectID</th><th>Title</th><th>Teacher</th><th>Grade</th> <th>Edit</th><th>Delete</th></tr>");  
	        for(Subject s:list){  
	         out.print("<tr><td>"+s.getId()+"</td><td>"+s.getSubjectId()+"</td><td>"+s.getTitle()+"</td><td>"+s.getTeacher()+"</td><td>"+s.getGrade()+"</td><td><a href='EditSubjectServlet?id="+s.getId()+"'>edit</a></td>  <td><a href='DeleteSubjectServlet?id="+s.getId()+"'>delete</a></td></tr>");  
	        }  
	        out.print("</table>");  
	          
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
