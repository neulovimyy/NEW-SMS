package com.sms.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sms.base.BaseDaoHibernate;
import com.sms.model.ElemAndHS;
import com.sms.model.Faculty;
import com.sms.model.Student;

			
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


}
