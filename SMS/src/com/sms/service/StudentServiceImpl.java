package com.sms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.sms.base.BaseServiceImpl;
import com.sms.dao.SMSDao;
import com.sms.model.ElemAndHS;
import com.sms.model.Faculty;
import com.sms.model.Report;
import com.sms.model.StudRetrieveInfo;
import com.sms.model.Student;
import com.sms.model.Subject;
import com.sms.service.StudentService;

@Service("studentService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class StudentServiceImpl extends BaseServiceImpl implements StudentService  {

	@Autowired
	private SMSDao studentDao;
	
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void addStudent(Student stud) {
		studentDao.addStudent(stud);
	}
	
	public List<Student> listStudentss() {
		return studentDao.listStudent();
	}

	public Student getStudent(Long Id) {
		return studentDao.getStudentInfo(Id);
	}
	
	public void deleteStudent(Student student) {
		studentDao.deleteStudent(student);
	}

	public void addTransactions(ElemAndHS account) {
		// TODO Auto-generated method stub
		studentDao.addTransactions(account);
	}

	public List<ElemAndHS> listTransactions() {
		// TODO Auto-generated method stub
		return studentDao.listTransactions();
	}

	public ElemAndHS getTransactions(Long studentNumber) {
		// TODO Auto-generated method stub
		return studentDao.getTransactions(studentNumber);
	}

	public void deleteTransactions(ElemAndHS account) {
		// TODO Auto-generated method stub
		studentDao.deleteTransactions(account);
	}

	public void addFaculty(Faculty faculty) {
		studentDao.addFaculty(faculty);
	}

	public List<Faculty> listFaculty() {
		return studentDao.listFaculty();
	}

	public Faculty getFaculty(Long id) {
		return studentDao.getFaculty(id);
	}

	public void deleteFaculty(Faculty faculty) {
		studentDao.deleteFaculty(faculty);
	}

	public List<Subject> listSubject() {
		return studentDao.listSubject();
	}

	public void addSubject(Subject subject) {
		studentDao.addSubject(subject);
	}

	public Subject getSubject(Long id) {
		return studentDao.getSubject(id);
	}

	public void deleteSubject(Subject subject) {
		studentDao.deleteSubject(subject);
	}
	
	public List<Report> listsSubjects() {
		return studentDao.reportList();
	}
	public Report getReport(Long subjectId) {
		return studentDao.getReportInfo(subjectId);
	}
	
	public List<Report> listReportss() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Report getReport(String subjectId) {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<?> getByStudentID(Class<?> paramClass, String string) {
		return (List<?>) studentDao.getByStudentId(paramClass, string);
	}

	@Override
	public List<Student> viewStudents(Student student) {
		
		return studentDao.viewStudents(student);
	}
	
	public Long generateStudentNumber(){
		return studentDao.generateStudentNumber();
	}

	@Override
	public List<Student> viewStudentsByStudentID(StudRetrieveInfo stud) {
		// TODO Auto-generated method stub
		return studentDao.viewStudentsByStudentID(stud);
	}

	
}