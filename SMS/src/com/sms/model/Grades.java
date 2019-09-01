package com.sms.model;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.directwebremoting.annotations.DataTransferObject;


@Entity
@Table(name = "subjects")
@DataTransferObject
public class Grades
{
	
	private long student_id;
	private long subject_id;
	private String subjectCode;
	private double grade;
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "student_id")
	public long getStudent_id() {
		return student_id;
	}
	public void setStudent_id(long student_id) {
		this.student_id = student_id;
	}
	
	@Column(name="subject_id")
	public long getSubject_id() {
		return subject_id;
	}
	public void setSubject_id(long subject_id) {
		this.subject_id = subject_id;
	}
	
	@Column(name = "subject_code" )	
	public String getSubjectCode() {
		return subjectCode;
	}
	public void setSubjectCode(String subjectCode) {
		this.subjectCode = subjectCode;
	}
	
	@Column(name = "grade" )	
	public double getGrade() {
		return grade;
	}
	public void setGrade(double grade) {
		this.grade = grade;
	}
}
