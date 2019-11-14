package com.subject.sm;
import java.util.*;  
import java.sql.*;  

public class SubjectDAO {

	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolmanagement","root","");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(Subject s){  
        int status=0;  
        try{  
            Connection con=SubjectDAO.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "insert into subjects(SubjectID,Title,Teacher,Grade) values (?,?,?,?)");  
            ps.setString(1,s.getSubjectId());  
            ps.setString(2,s.getTitle());  
            ps.setString(3,s.getTeacher());  
            ps.setString(4,s.getGrade());  
              
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }  
    public static int update(Subject s){  
        int status=0;  
        try{  
            Connection con=SubjectDAO.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "update subjects set SubjectID=?,Title=?,Teacher=?,Grade=? where id=?");  
            ps.setString(1,s.getSubjectId());  
            ps.setString(2,s.getTitle());  
            ps.setString(3,s.getTeacher());  
            ps.setString(4,s.getGrade());  
            ps.setInt(5,s.getId());  
              
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }  
    public static int delete(int id){  
        int status=0;  
        try{  
            Connection con=SubjectDAO.getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from subjects where id=?");  
            ps.setInt(1,id);  
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return status;  
    }  
    public static Subject getSubjectById(int id){  
        Subject s=new Subject();  
          
        try{  
            Connection con=SubjectDAO.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from subjects where id=?");  
            ps.setInt(1,id);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
                s.setId(rs.getInt(1));  
                s.setSubjectId(rs.getString(2));  
                s.setTitle(rs.getString(3));  
                s.setTeacher(rs.getString(4));  
                s.setGrade(rs.getString(5));  
            }  
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return s;  
    }  
    public static List<Subject> getAllSubjects(){  
        List<Subject> list=new ArrayList<Subject>();  
          
        try{  
            Connection con=SubjectDAO.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from subjects");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                Subject s=new Subject();  
                s.setId(rs.getInt(1));  
                s.setSubjectId(rs.getString(2));  
                s.setTitle(rs.getString(3));  
                s.setTeacher(rs.getString(4));  
                s.setGrade(rs.getString(5));  
                list.add(s);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }  
}  

