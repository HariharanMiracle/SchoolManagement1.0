package com.materials.upload;


import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
/**
 * Servlet implementation class FileUploadDBServlet
 */
@WebServlet("/uploadDBServlet")

@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB

public class FileUploadDBServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 private String dbURL = "jdbc:mysql://localhost:3306/schoolmanagement";
	    private String dbUser = "root";
	    private String dbPass = "";
	    String message = "You have not yet added any materials";  // message will be sent back to client
    public FileUploadDBServlet() {
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
		 // gets values of text fields
		String subjectID=request.getParameter("subjectID");  
        String duration=request.getParameter("duration");  
        String topic=request.getParameter("topic");  
        String description=request.getParameter("description");  
        String link=request.getParameter("link");  
          
         
        InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("uploadFile");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
         
        Connection conn = null; // connection to the database
        
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            String sql = "INSERT INTO submaterials (SubjectID, Duration, Topic, Description, Links, File) values (?, ?, ?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, subjectID);
            statement.setString(2, duration);
            statement.setString(3, topic); 
            statement.setString(4, description);
            statement.setString(5, link);
            
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(6, inputStream);
            }
 
            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/MaFormSuccess.jsp").forward(request, response);
        }
    }


}


