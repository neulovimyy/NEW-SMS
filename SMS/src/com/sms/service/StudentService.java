package com.sms.service;

import java.util.List;

import com.sms.base.BaseService;
import com.sms.model.ElemAndHS;
import com.sms.model.Faculty;
import com.sms.model.Student;


public interface StudentService extends BaseService {
	//student
	public void addStudent(Student employee);
	public List<Student> listStudentss();
	public Student getStudent(Long Id);
	public void deleteStudent(Student employee);
	//accounting
	public void addTransactions(ElemAndHS account);
	public List<ElemAndHS> listTransactions();
	public ElemAndHS getTransactions(Long studentNumber);
	public void deleteTransactions(ElemAndHS account);
	//faculty
	public void addFaculty(Faculty faculty);
	public List<Faculty> listFaculty();
	public Faculty getFaculty(Long id);
	public void deleteFaculty(Faculty faculty);
	
}
