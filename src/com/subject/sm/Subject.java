package com.subject.sm;
public class Subject {  
private int id;  
private String subjectId,title,teacher, grade;  //where subjectId is the enrollment key

public int getId() {  
    return id;  
}  
public void setId(int id) {  
    this.id = id;  
}  
public String getSubjectId() {  
    return subjectId;  
}  

public void setSubjectId(String subjectId) {  
    this.subjectId = subjectId;  
}  
public void setTitle(String title) {  
    this.title = title;  
}  

public String getTitle() {
	return title;
}
public String getTeacher() {  
    return teacher;  
}  
public void setTeacher(String teacher) {  
    this.teacher = teacher;  
}  



public String getGrade() {  
    return grade;  
}  
public void setGrade(String grade) {  
    this.grade = grade;  
}  

  
}  