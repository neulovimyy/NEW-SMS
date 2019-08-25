package com.sms.service;

import java.util.List;

import com.sms.base.BaseService;
import com.sms.model.Student;


public interface StudentService extends BaseService {
	
	public void addStudent(Student employee);

	public List<Student> listStudentss();
	
	public Student getStudent(Long Id);
	
	public void deleteStudent(Student employee);
}
