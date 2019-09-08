package com.sms.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sms.base.BaseDaoHibernate;
import com.sms.model.ElemAndHS;
import com.sms.model.Faculty;
import com.sms.model.Report;
import com.sms.model.Student;
import com.sms.model.Subject;

			
@Repository("studentDao")
public class SMSDaoImpl extends BaseDaoHibernate implements SMSDao  {

	@Autowired
	public SMSDaoImpl(SessionFactory sessionFactory) {
		super(sessionFactory);
		// TODO Auto-generated constructor stub
	}
	
	//student queries
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addStudent(Student student) {
		sessionFactory.getCurrentSession().saveOrUpdate(student);
	}

	@SuppressWarnings("unchecked")
	public List<Student> listStudent() {
		return (List<Student>) sessionFactory.getCurrentSession().createCriteria(Student.class).list();
	}

	public Student getStudentInfo(Long Id) {
		return (Student) sessionFactory.getCurrentSession().get(Student.class, Id);
	}

	public void deleteStudent(Student student) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM student_master WHERE id = ?").setParameter(0, student.getStudentId()).executeUpdate();
	}

	public void addTransactions(ElemAndHS account) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(account);
	}

	@SuppressWarnings("unchecked")
	public List<ElemAndHS> listTransactions() {
		// TODO Auto-generated method stub
		return (List<ElemAndHS>) sessionFactory.getCurrentSession().createCriteria(ElemAndHS.class).list();
	}

	public ElemAndHS getTransactions(Long studentNumber) {
		// TODO Auto-generated method stub
		return (ElemAndHS) sessionFactory.getCurrentSession().get(ElemAndHS.class, studentNumber);
	}

	public void deleteTransactions(ElemAndHS account) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().createQuery("DELETE FROM elemhs_account WHERE student_number = ?").setParameter(0, account.getStudentNumber()).executeUpdate();
	}

	//faculties
	
	public void addFaculty(Faculty faculty) {
		sessionFactory.getCurrentSession().saveOrUpdate(faculty);
	}

	@SuppressWarnings("unchecked")
	public List<Faculty> listFaculty() {
		return (List<Faculty>) sessionFactory.getCurrentSession().createCriteria(Faculty.class).list();
	}

	public Faculty getFaculty(Long id) {
		return (Faculty) sessionFactory.getCurrentSession().get(Faculty.class, id);
	}

	public void deleteFaculty(Faculty faculty) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM faculty WHERE faculty_id = ?").setParameter(0, faculty.getFacultyId()).executeUpdate();
	}

	//subjects
	
	public void addSubject(Subject subject) {
		sessionFactory.getCurrentSession().saveOrUpdate(subject);
	}

	@SuppressWarnings("unchecked")
	public List<Subject> listSubject() {
		return (List<Subject>) sessionFactory.getCurrentSession().createCriteria(Subject.class).list();
	}

	public Subject getSubject(Long id) {
		return (Subject) sessionFactory.getCurrentSession().get(Subject.class, id);
	}

	public void deleteSubject(Subject subject) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM subject WHERE subject_id = ?").setParameter(0, subject.getSubjectId()).executeUpdate();
	}

	//reports
	
	@SuppressWarnings("unchecked")
	public List<Report> reportList() {
		return (List<Report>) sessionFactory.getCurrentSession().createCriteria(Report.class).list();
	}
	public Report getReportInfo(Long subjectId) {
		return (Report) sessionFactory.getCurrentSession().get(Report.class, subjectId);
	}

}

