package com.subject.sm;


import java.io.IOException;  
import java.io.PrintWriter;  
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SaveSubjectServlet
 */
@WebServlet("/SaveSubjectServlet")
public class SaveSubjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveSubjectServlet() {
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
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
          
        String subjectID=request.getParameter("subjectID");  
        String title=request.getParameter("title");  
        String teacher=request.getParameter("teacher");  
        String grade=request.getParameter("grade");  
          
        Subject s=new Subject();  
        s.setSubjectId(subjectID);  
        s.setTitle(title);  
        s.setTeacher(teacher);  
        s.setGrade(grade);  
          
        int status=SubjectDAO.save(s);  
        if(status>0){  
           
            request.getRequestDispatcher("addSubSuccess.jsp").include(request, response);  
        }else{  
        	 request.getRequestDispatcher("addSubjectFail.jsp").include(request, response); ;  
        }  
          
        out.close();  
		
	}

}
