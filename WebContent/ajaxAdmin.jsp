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
		if(request.getParameter("adminid") != null){
			String adminid = request.getParameter( "adminid" );
			Class.forName("com.mysql.jdbc.Driver"); 
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
			Statement st= con.createStatement(); 
			ResultSet rs = st.executeQuery("select * from admin where adminId = '"+adminid+"'");
			
			if(rs.next()){
				String admnid = rs.getString("adminId");
				String fname=rs.getString("fname");
				String lname=rs.getString("lname");
				String address=rs.getString("address");
				String nic=rs.getString("nic");
				String mobile=rs.getString("mobile");
				%>
				


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
				     <form action="Search_Update_Delete Admin DB.jsp" method="post">
                        
                           <div class="main main1 col-md-6">
                              
                              <div class="form-left-w3l1">
                                 <input type="text" name="adminid" value="<% out.println(admnid);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="fname" value="<% out.println(fname);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="lname" value="<% out.println(lname);%>" >
                              </div>
                           </div>
                           <div class="main2 col-md-6">
                              <div class="form-left-w3l1">
                                 <input type="textarea" name="address" value="<% out.println(address);%>">
                              </div> 
                              <div class="form-left-w3l1">
                                 <input type="text" name="nic" value="<% out.println(nic);%>">
                              </div>
                              <div class="form-left-w3l1">
                                 <input type="text" name="mobile" value="<% out.println(mobile);%>">
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