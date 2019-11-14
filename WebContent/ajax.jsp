<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 <!-- PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.util.Date" %>
	<%
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
	
	
%> 
	<%
		if(request.getParameter("sid") != null){
			String sid = request.getParameter( "sid" );
			Class.forName("com.mysql.jdbc.Driver"); 
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
			Statement st= con.createStatement(); 
			ResultSet rs = st.executeQuery("select * from student where stid = '"+sid+"'");
			
			if(rs.next()){
				String stid = rs.getString("stid");
				String fname=rs.getString("fname");
				String mname=rs.getString("mname");
				String surname=rs.getString("surname");
				String gender=rs.getString("gender");
				String dob=rs.getString("dob");
				String religion=rs.getString("religion");
				String nationality=rs.getString("nationality");
				String gname=rs.getString("guardian_name");
				String goccu=rs.getString("guardian_occu");
				String nic=rs.getString("nic");
				int mobile=Integer.parseInt(rs.getString("mobile"));
				String email=rs.getString("email");
				String address=rs.getString("address");
				String admin=rs.getString("admin");
				
				%>
				<h1>You can edit or delete here</h1>
				<div class="col-md-12">
		 <div class="col-md-3">
         
   

      <div class="col-md-9">

      <div class="art-bothside1 newstyle1">
         <div class="sap_tabs">
            <div id="horizontalTab">
               <ul class="resp-tabs-list">
                  <li class="resp-tab-item"><span>STUDENT REGISTRATION</span></li>
               </ul>
               <div class="clearfix"> </div>
               <div class="resp-tabs-container">
                  <div class="tab-1 resp-tab-content">
                     <div class="swm-right-w3ls">
				
				     <form action="Serach_Update_Delete Student DB.jsp" method="post">
                         
                              
                              <div class="form-left-w3l1">
                                 <input type="text" name="stid" value="<% out.println(stid);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="fname" value="<% out.println(fname);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="mname" value="<% out.println(mname);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="sname" value="<% out.println(surname);%>" >
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="gender" value="<% out.println(gender);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="dob" value="<% out.println(dob);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="religion" value="<% out.println(religion);%>">
                              </div>  
                                                                                     

                          
                              <div class="form-left-w3l1">
                                 <input type="text" name="nationality" value="<% out.println(nationality);%>">
                              </div>
                              
                              <div class="form-left-w3l1">
                                 <input type="text" name="gname" value="<% out.println(gname);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="goccu" value="<% out.println(goccu);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="nic" value="<% out.println(nic);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="mobile" value="<% out.println(mobile);%>">
                              </div>
                               <div class="form-left-w3l1">
                                 <input type="email" name="email" value="<% out.println(email);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="textarea" name="address" value="<% out.println(address);%>">
                              </div> 
                            

							  <div class="btnn1">
                                 <button class="btnn1" type="submit" name="action" value="UPDATE"> UPDATE </button>
                                 <button class="btnn1" type="submit" name="action" value="DELETE"> DELETE </button><br>
                                 <script>
                                  function myFunction() {
                                  alert("Please contact your administrator or Technical Support");
                                  }
                                </script> 

                              </div>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>

      </div>
      <div class="clearfix"></div>
		<%	
			}
			else{
				out.println("Result not found!!! Please retype again");
			}
		}
		else{
			out.println("Result not found!!! Please retype again");
		}
	%>
	
    				
    				
 					
</body>
</html>