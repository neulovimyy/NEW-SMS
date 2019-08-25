package com.sms.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sms.base.BaseDaoHibernate;
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
		sessionFactory.getCurrentSession().createQuery("DELETE FROM student_college WHERE student_number = ?").setParameter(0, student.getStudentId()).executeUpdate();
	}

}
