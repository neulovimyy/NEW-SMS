package com.sms.dao;

import java.util.List;

import com.sms.base.BaseDao;
import com.sms.student.model.ElemAndHS;
import com.sms.student.model.Faculty;
import com.sms.student.model.Report;
import com.sms.student.model.Student;
import com.sms.accounting.model.StudRetrieveInfo;

public interface SMSDao extends BaseDao {

	// student
	public void addStudent(Student stud);

	public List<Student> listStudent();

	public Student getStudentInfo(Long id);

	public void deleteStudent(Student stud);

	public List<Student> viewStudents(Student student);

	public Long generateStudentNumber();

	// accountings
	public void addTransactions(ElemAndHS stud);

	public List<ElemAndHS> listTransactions();

	public ElemAndHS getTransactions(Long id);

	public void deleteTransactions(ElemAndHS stud);

	// faculty
	public void addFaculty(Faculty faculty);

	public List<Faculty> listFaculty();

	public Faculty getFaculty(Long id);

	public void deleteFaculty(Faculty faculty);

	// report
	public List<Report> reportList();

	public Report getReportInfo(Long subjectId);

	public List<Student> viewStudentsByStudentID(StudRetrieveInfo stud);

}
