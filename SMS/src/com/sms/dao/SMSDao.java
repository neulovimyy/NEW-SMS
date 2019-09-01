package com.sms.dao;

import java.util.List;

import com.sms.base.BaseDao;
import com.sms.model.ElemAndHS;
import com.sms.model.Faculty;
import com.sms.model.Student;
import com.sms.model.Subject;

				
public interface SMSDao extends BaseDao {
	
	//student
	public void addStudent(Student stud);
	public List<Student> listStudent();
	public Student getStudentInfo(Long id);
	public void deleteStudent(Student stud);
	
	//accounting
	public void addTransactions(ElemAndHS stud);
	public List<ElemAndHS> listTransactions();
	public ElemAndHS getTransactions(Long id);
	public void deleteTransactions(ElemAndHS stud);
	
	//faculty
	public void addFaculty(Faculty faculty);
	public List<Faculty> listFaculty();
	public Faculty getFaculty(Long id);
	public void deleteFaculty(Faculty faculty);
	
	public List<Subject> listSubject();
	public void addSubject(Subject subject);
	public Subject getSubject(Long id);
	public void deleteSubject(Subject subject);
	
}
