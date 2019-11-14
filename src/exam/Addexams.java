/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exam;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Exam;

@WebServlet("/Addexams")
public class Addexams extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Addexams</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Addexams at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String examid=request.getParameter("exid");
        String subjectid=request.getParameter("sid");
        String dt=request.getParameter("exdate");
         String grd=request.getParameter("grade");
         String trm=request.getParameter("trm");
         Exam e= new Exam();
         e.setEid(examid);
         e.setSId(subjectid);
         e.setEDate(dt);
         e.setGrade(grd);
         e.setT(trm);
          try {
            Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolmanagement","root","");
                String sql="insert into exam(id,sid,date,grade,term)values(?,?,?,?,?)";
           PreparedStatement pst=con.prepareStatement(sql);
           pst.setString(1,e.getEid());
           pst.setString(2,e.getSId());
           pst.setString(3,e.getEDate());
           pst.setString(4,e.getGrade());
           pst.setString(5,e.getT());
         
           pst.executeUpdate();
           try (PrintWriter out = response.getWriter()) {
           out.println("<!DOCTYPE html>");
           out.println("<html>");
           out.println("<head>");
           out.println("<title>Servlet Addexams</title>");            
           out.println("</head>");
           out.println("<body>");
           out.println("<h1>You have successfully added an exam.</h1>");
           out.println("</body>");
           out.println("</html>");
           }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Addexams.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Addexams.class.getName()).log(Level.SEVERE, null, ex);
        }
                
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
