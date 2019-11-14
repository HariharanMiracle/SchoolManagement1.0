package com.subject.sm;

import java.io.PrintWriter;  
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditSubjectServlet2
 */
@WebServlet("/EditSubjectServlet2")
public class EditSubjectServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditSubjectServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
          
        String sid=request.getParameter("id");  
        int id=Integer.parseInt(sid);  
        String subjectID=request.getParameter("subjectID");  
        String title=request.getParameter("title");  
        String teacher=request.getParameter("teacher");  
        String grade=request.getParameter("grade");  
          
        Subject s=new Subject();  
        s.setId(id);  
        s.setSubjectId(subjectID);  
        s.setTitle(title);  
        s.setTeacher(teacher);  
        s.setGrade(grade);  
          
        int status=SubjectDAO.update(s);  
        if(status>0){  
            response.sendRedirect("ViewSubjectServlet");  
        }else{  
            out.println("Sorry! unable to edit record");  
        }  
          
        out.close();  
	}

}
