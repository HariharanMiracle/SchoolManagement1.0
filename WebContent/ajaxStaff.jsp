<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.util.Date" %>
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
	
	%>  --%>
	<%
		String staffid = request.getParameter("staffid");
		if(staffid != null){
			Class.forName("com.mysql.jdbc.Driver"); 
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
			Statement st= con.createStatement(); 
			ResultSet rs = st.executeQuery("select * from staff_nonac  where stfid = '"+staffid+"'");
			
			if(rs.next()){
				String stfid = rs.getString(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String nic=rs.getString(4);
				String address=rs.getString(5);
				String mobile=rs.getString(6);
				String maritals=rs.getString(7);
				String qualification=rs.getString(8);
				String admin=rs.getString(9);
				
	%>
			
				<h1>You can edit or delete here</h1>
		
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
				<h1>You can edit or delete here</h1>
				     <form action="Search_Update_Delete Staff DB.jsp" method="post">
                           <div class="main main1 col-md-6">
                              <div class="form-left-w3l1">
                                 <input type="text" name="stfid" value="<% out.println(stfid);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="fname" value="<% out.println(fname);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="lname" value="<% out.println(lname);%>">
                              </div>
                               <div class="form-left-w3l1">
                                 <input type="text" name="nic" value="<% out.println(nic);%>">
                              </div>
                               <div class="form-left-w3l1">
                                 <input type="text" name="address" value="<% out.println(address);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="mobile" value="<% out.println(mobile);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="maritals" value="<% out.println(maritals);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="qualification" value="<% out.println(qualification);%>">
                              </div>
                              
                              <div class="form-left-w3l1">
                                 <input type="text" name="admin" value="<% out.println(admin);%>">
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
		<%}
				else{
					out.println("Staff Mem. not found");
				}
		}
		else{
			out.println("Please enter a value");
		}
		%>
			
				
		
</body>
</html>