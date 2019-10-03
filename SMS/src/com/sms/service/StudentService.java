package com.sms.service;

import java.util.List;

import com.sms.base.BaseService;
import com.sms.student.model.ElemAndHS;
import com.sms.student.model.Faculty;
import com.sms.student.model.Report;
import com.sms.student.model.Student;
import com.sms.accounting.model.StudRetrieveInfo;

public interface StudentService extends BaseService {
	// student
	public void addStudent(Student employee);

	public List<Student> listStudentss();

	public Student getStudent(Long Id);

	public void deleteStudent(Student employee);

	public List<Student> viewStudents(Student student);

	public Long generateStudentNumber();

	// accounting
	public void addTransactions(ElemAndHS account);

	public List<ElemAndHS> listTransactions();

	public ElemAndHS getTransactions(Long studentNumber);

	public void deleteTransactions(ElemAndHS account);

	// faculty
	public void addFaculty(Faculty faculty);

	public List<Faculty> listFaculty();

	public Faculty getFaculty(Long id);

	public void deleteFaculty(Faculty faculty);

	// report
	public List<Report> listReportss();

	public Report getReport(String subjectId);

	List<Student> viewStudentsByStudentID(StudRetrieveInfo stud);

}
