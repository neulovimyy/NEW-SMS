package com.sms.dao;

import java.math.BigInteger;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sms.base.BaseDaoHibernate;
import com.sms.model.College;
import com.sms.model.ElemAndHS;
import com.sms.model.Faculty;
import com.sms.model.JHS;
import com.sms.model.Report;
import com.sms.model.SHS;
import com.sms.model.StudRetrieveInfo;
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
		sessionFactory.getCurrentSession().createQuery("DELETE FROM Subject WHERE subjectId = ?").setParameter(0, subject.getSubjectId()).executeUpdate();
	}

	//reports
	public void addReport(Report subject) {
		sessionFactory.getCurrentSession().saveOrUpdate(subject);
	}
	@SuppressWarnings("unchecked")
	public List<Report> reportList() {
		return (List<Report>) sessionFactory.getCurrentSession().createCriteria(Report.class).list();
	}
	public Report getReportInfo(Long subjectId) {
		return (Report) sessionFactory.getCurrentSession().get(Report.class, subjectId);
	}
	public void deleteReport(Report subject) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM subject WHERE subject_id = ?").setParameter(0, subject.getSubjectId()).executeUpdate();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Student> viewStudents(Student student) {
		//Zid
		StringBuffer hqlQuery = new StringBuffer("from Student e where 1=1 ");
		
		StringBuffer dynamicSql = new StringBuffer();
		if(StringUtils.isNotEmpty(student.getSearch())) {
			dynamicSql.append("and (  ");
			dynamicSql.append(" lower(e.firstName) like lower(:search) ");
			dynamicSql.append("or lower(e.middleName) like lower(:search) ");
			dynamicSql.append("or lower(e.lastName) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.firstName,' ', e.lastName, ' ', e.middleName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.firstName,' ', e.middleName, ' ', e.lastName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.lastName,' ', e.firstName, ' ', e.middleName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.lastName,' ', e.middleName, ' ', e.firstName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.middleName,' ', e.lastName, ' ', e.firstName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.middleName,' ', e.firstName, ' ', e.lastName)) like lower(:search) ");
			dynamicSql.append("or lower(e.studentId) like lower(:search) ");
			dynamicSql.append("or lower(e.emailAddress) like lower(:search)) ");
			
		}
		
		final String sql =  hqlQuery.append(dynamicSql).toString();
		Query query = getSession().createQuery(sql);
		
		if(StringUtils.isNotEmpty(student.getSearch())) {
			query.setParameter("search","%" + student.getSearch() + "%");
			
		}
		
		List<Student> result = query.list();
		
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Long generateStudentNumber()
	  {
	    StringBuffer sql = new StringBuffer();
	    sql.append("SELECT MAX(id) ");
	    sql.append("FROM student_master ");
	    
	    List<BigInteger> results = getSession().createSQLQuery(sql.toString()).list();
	    
	    return results.get(0).longValue();
	  }
	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Student> viewStudentsByStudentID(StudRetrieveInfo stud) {
		//Zid
		StringBuffer hqlQuery = new StringBuffer("from StudRetrieveInfo e where 1=1 ");
		
		StringBuffer dynamicSql = new StringBuffer();
		if(StringUtils.isNotEmpty(stud.getSearch())) {
			dynamicSql.append("and (  ");
			dynamicSql.append(" lower(e.student_id) like lower(:search) ");
		}
		
		final String sql =  hqlQuery.append(dynamicSql).toString();
		Query query = getSession().createQuery(sql);
		
		if(StringUtils.isNotEmpty(stud.getSearch())) {
			query.setParameter("search","%" + stud.getSearch() + "%");
			
		}
		
		List<Student> result = query.list();
		
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public long listCount(Student count){
		StringBuffer sql = new StringBuffer();
	    sql.append("SELECT COUNT(*) ");
	    sql.append("FROM Student");
	    Query query = getSession().createQuery(sql.toString());
	    long results = (long)query.uniqueResult();
	    return results;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Report> viewSubjects(Report subject) {
		StringBuffer hqlQuery = new StringBuffer("from Report e where 1=1 ");
		
		StringBuffer dynamicSql = new StringBuffer();
		if(StringUtils.isNotEmpty(subject.getSearch())) {
			dynamicSql.append("and (  ");
			dynamicSql.append(" lower(e.subjectName) like lower(:search) ");
			dynamicSql.append("or lower(e.subjectId) like lower(:search) ");
			dynamicSql.append("or lower(e.subjectCode) like lower(:search)) ");
			
		}
		
		final String sql =  hqlQuery.append(dynamicSql).toString();
		Query query = getSession().createQuery(sql);
		
		if(StringUtils.isNotEmpty(subject.getSearch())) {
			query.setParameter("search","%" + subject.getSearch() + "%");
			
		}
		
		List<Report> result = query.list();
		
		return result;
	}

	//JHS
	@SuppressWarnings("unchecked")
	@Override
	public List<JHS> listJHS() {
		// TODO Auto-generated method stub
		return (List<JHS>) sessionFactory.getCurrentSession().createCriteria(JHS.class).list();
	}

	@Override
	public long listCountJHS(JHS count) {
			StringBuffer sql = new StringBuffer();
		    sql.append("SELECT COUNT(*) ");
		    sql.append("FROM JHS");
		    Query query = getSession().createQuery(sql.toString());
		    long results = (long)query.uniqueResult();
		    return results;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<JHS> viewJHSStudents(JHS jhsstudent) {
		StringBuffer hqlQuery = new StringBuffer("from JHS e where 1=1 ");
		
		StringBuffer dynamicSql = new StringBuffer();
		if(StringUtils.isNotEmpty(jhsstudent.getSearch())) {
			dynamicSql.append("and (  ");
			dynamicSql.append(" lower(e.firstName) like lower(:search) ");
			dynamicSql.append("or lower(e.middleName) like lower(:search) ");
			dynamicSql.append("or lower(e.lastName) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.firstName,' ', e.lastName, ' ', e.middleName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.firstName,' ', e.middleName, ' ', e.lastName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.lastName,' ', e.firstName, ' ', e.middleName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.lastName,' ', e.middleName, ' ', e.firstName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.middleName,' ', e.lastName, ' ', e.firstName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.middleName,' ', e.firstName, ' ', e.lastName)) like lower(:search) ");
			dynamicSql.append("or lower(e.studentId) like lower(:search) ");
			dynamicSql.append("or lower(e.emailAddress) like lower(:search)) ");
			
		}
		
		final String sql =  hqlQuery.append(dynamicSql).toString();
		Query query = getSession().createQuery(sql);
		
		if(StringUtils.isNotEmpty(jhsstudent.getSearch())) {
			query.setParameter("search","%" + jhsstudent.getSearch() + "%");
			
		}
		
		List<JHS> result = query.list();
		
		return result;
	}

	//SHS
	@SuppressWarnings("unchecked")
	@Override
	public List<SHS> listSHS() {
		// TODO Auto-generated method stub
		return (List<SHS>) sessionFactory.getCurrentSession().createCriteria(SHS.class).list();
	}

	@Override
	public long listCountSHS(SHS count) {
		StringBuffer sql = new StringBuffer();
	    sql.append("SELECT COUNT(*) ");
	    sql.append("FROM SHS");
	    Query query = getSession().createQuery(sql.toString());
	    long results = (long)query.uniqueResult();
	    return results;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SHS> viewSHSStudents(SHS shsstudent) {
		StringBuffer hqlQuery = new StringBuffer("from SHS e where 1=1 ");
		
		StringBuffer dynamicSql = new StringBuffer();
		if(StringUtils.isNotEmpty(shsstudent.getSearch())) {
			dynamicSql.append("and (  ");
			dynamicSql.append(" lower(e.firstName) like lower(:search) ");
			dynamicSql.append("or lower(e.middleName) like lower(:search) ");
			dynamicSql.append("or lower(e.lastName) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.firstName,' ', e.lastName, ' ', e.middleName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.firstName,' ', e.middleName, ' ', e.lastName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.lastName,' ', e.firstName, ' ', e.middleName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.lastName,' ', e.middleName, ' ', e.firstName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.middleName,' ', e.lastName, ' ', e.firstName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.middleName,' ', e.firstName, ' ', e.lastName)) like lower(:search) ");
			dynamicSql.append("or lower(e.studentId) like lower(:search) ");
			dynamicSql.append("or lower(e.emailAddress) like lower(:search)) ");
			
		}
		
		final String sql =  hqlQuery.append(dynamicSql).toString();
		Query query = getSession().createQuery(sql);
		
		if(StringUtils.isNotEmpty(shsstudent.getSearch())) {
			query.setParameter("search","%" + shsstudent.getSearch() + "%");
			
		}
		
		List<SHS> result = query.list();
		
		return result;
	}
	
	
	//COLLEGE
	@SuppressWarnings("unchecked")
	@Override
	public List<College> listCollege() {
		// TODO Auto-generated method stub
		return (List<College>) sessionFactory.getCurrentSession().createCriteria(College.class).list();
	}

	@Override
	public long listCountCollege(College count) {
		StringBuffer sql = new StringBuffer();
	    sql.append("SELECT COUNT(*) ");
	    sql.append("FROM College");
	    Query query = getSession().createQuery(sql.toString());
	    long results = (long)query.uniqueResult();
	    return results;
	}
	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<College> viewCollegeStudents(College colstudent) {
		StringBuffer hqlQuery = new StringBuffer("from College e where 1=1 ");
		
		StringBuffer dynamicSql = new StringBuffer();
		if(StringUtils.isNotEmpty(colstudent.getSearch())) {
			dynamicSql.append("and (  ");
			dynamicSql.append(" lower(e.firstName) like lower(:search) ");
			dynamicSql.append("or lower(e.middleName) like lower(:search) ");
			dynamicSql.append("or lower(e.lastName) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.firstName,' ', e.lastName, ' ', e.middleName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.firstName,' ', e.middleName, ' ', e.lastName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.lastName,' ', e.firstName, ' ', e.middleName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.lastName,' ', e.middleName, ' ', e.firstName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.middleName,' ', e.lastName, ' ', e.firstName)) like lower(:search) ");
			dynamicSql.append("or lower( CONCAT(e.middleName,' ', e.firstName, ' ', e.lastName)) like lower(:search) ");
			dynamicSql.append("or lower(e.studentId) like lower(:search) ");
			dynamicSql.append("or lower(e.emailAddress) like lower(:search)) ");
			
		}
		
		final String sql =  hqlQuery.append(dynamicSql).toString();
		Query query = getSession().createQuery(sql);
		
		if(StringUtils.isNotEmpty(colstudent.getSearch())) {
			query.setParameter("search","%" + colstudent.getSearch() + "%");
			
		}
		
		List<College> result = query.list();
		
		return result;
	}
	
	
	
	
	
	
	
	
	
}

