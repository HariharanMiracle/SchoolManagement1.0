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

@WebServlet("/deletexm")
public class deletexm extends HttpServlet {

     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
         PrintWriter out=response.getWriter();
        response.setContentType("text/html");
        Exam cont=new Exam();
        
            try{  
                 Class.forName("com.mysql.jdbc.Driver");
                  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolmanagement","root","");
           String i=request.getParameter("ex_id");
                // cont.setCont_id(i);
                      
                      String sql="delete from exam where id=?";
                      PreparedStatement pst=con.prepareStatement(sql);
                     pst.setString(1, i);
                      pst.executeUpdate();
                  
                     request.getRequestDispatcher("examdeteacher.jsp").include(request, response); 
            }catch(SQLException e){
                e.printStackTrace();
            } catch(ClassNotFoundException es){
            es.printStackTrace();
            }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
