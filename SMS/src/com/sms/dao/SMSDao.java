package com.sms.dao;

import java.util.List;

import com.sms.base.BaseDao;
import com.sms.model.ElemAndHS;
import com.sms.model.Student;

				
public interface SMSDao extends BaseDao {
	
	public void addStudent(Student stud);
	public List<Student> listStudent();
	public Student getStudentInfo(Long id);
	public void deleteStudent(Student stud);
	
	public void addTransactions(ElemAndHS stud);
	public List<ElemAndHS> listTransactions();
	public ElemAndHS getTransactions(Long id);
	public void deleteTransactions(ElemAndHS stud);
	
}
