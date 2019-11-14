<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
		String ser = request.getParameter("search");
		
				
		Class.forName("com.mysql.jdbc.Driver"); 
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/schoolmanagement", "root", ""); 
		Statement st= con.createStatement();
		Statement st1= con.createStatement();
		Statement st2= con.createStatement();
		Statement st3= con.createStatement();
		ResultSet rs =st.executeQuery("select * from stock where bookid like '%"+ser+"%' or qty like '%"+ser+"%'"); 
		ResultSet rs1 =st1.executeQuery("select * from borrow where isbn like '%"+ser+"%' or mem_id like '%"+ser+"%' or isue_date like '%"+ser+"%' or deadline like '%"+ser+"%'"); 
		ResultSet rs2 =st2.executeQuery("select * from books where book_id like '%"+ser+"%' or isbn like '%"+ser+"%' or book_title like '%"+ser+"%' or author like '%"+ser+"%'");
		ResultSet rs3 =st3.executeQuery("select * from member where mem_id like '%"+ser+"%' or isu_date like '%"+ser+"%' or exp_date like '%"+ser+"%'");
		int c1, c2, c3, c4;
		c1 = 0;
		c2 = 0;
		c3 = 0;
		c4 = 0;
		
		%><h3 style="text-align:center; color:#fdff00; background-color:#7e7e7e;">STOCK RECORDS</h3><%
		while(rs.next()){
			String bid = rs.getString(1);
			String qty = rs.getString(2);
			%>
				<h2>Book Id:<% out.println(bid); %></h2>
				<h2>Quantity:<% out.println(qty); %></h2>
				<br/>
			<%
			c1++;
		}
		
		if(c1 == 0){
			out.println("No match found in stock records - " + ser);
			out.println("");
		}
		
		%><h3 style="text-align:center; color:#fdff00; background-color:#7e7e7e;">BORROW RECORDS</h3><%
		while(rs1.next()){
			String isbn = rs1.getString(1);
			String mem_id = rs1.getString(2);
			String isue_date = rs1.getString(3);
			String deadline = rs1.getString(4);

			%>
				<h2>ISBN:<% out.println(isbn); %></h2>
				<h2>Member ID:<% out.println(mem_id); %></h2>
				<h2>Isue_date:<% out.println(isue_date); %></h2>
				<h2>deadline:<% out.println(deadline); %></h2>
				
				
				<br/>
			<%
			c2++;
		}
		
		if(c2 == 0){
			out.println("No match found in borrow records - " + ser);
		}
		
		%><h3 style="text-align:center; color:#fdff00; background-color:#7e7e7e;">BOOK RECORDS</h3><%
		while(rs2.next()){
			String isbn = rs2.getString(2);
			String book_id = rs2.getString(1);
			String book_title = rs2.getString(3);
			String author = rs2.getString(4);

			%>
				<h2>Book ID :<% out.println(book_id); %></h2>
				<h2>ISBN :<% out.println(isbn); %></h2>
				<h2>Book Title:<% out.println(book_title); %></h2>
				<h2>author:<% out.println(author); %></h2>
				
				
				<br/>
			<%
			c3++;
		}
		
		if(c3 == 0){
			out.println("No match found in Book records - " + ser);
		}
		
		%><h3 style="text-align:center; color:#fdff00; background-color:#7e7e7e;">MEMBERSHIP RECORDS</h3><%
		while(rs3.next()){
			String mem_id = rs3.getString(1);
			String isu_date = rs3.getString(2);
			String exp_date = rs3.getString(3);

			%>
				<h2>Member ID :<% out.println(mem_id); %></h2>
				<h2>Issued Date :<% out.println(isu_date); %></h2>
				<h2>Expiry Date:<% out.println(exp_date); %></h2>
				
				
				<br/>
			<%
			c4++;
		}
			if(c4 == 0){
			out.println("No match found in Member records : " + ser);
			}
		
	%>
</body>
</html>