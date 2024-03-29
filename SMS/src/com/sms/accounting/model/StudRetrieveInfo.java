package com.sms.accounting.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.directwebremoting.annotations.DataTransferObject;

import com.sms.base.BaseModel;
import com.sms.student.model.Student;

@SuppressWarnings("serial")
@Entity
@Table(name = "retrieveinfo_account")
@DataTransferObject
public class StudRetrieveInfo extends BaseModel implements Serializable {
	
	private Long studentNumber;
	private String studentId;
	private String schoolYear;
	private String semester;
	private Long orNumber;
	private String description;
	private Double assessment;
	private Double payments;
	private Double balance; 
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "student_number")
	public Long getStudentNumber() {
		return studentNumber;
	}
	public void setStudentNumber(Long studentNumber) {
		this.studentNumber = studentNumber;
	}
	
	@OneToOne(fetch = FetchType.EAGER, targetEntity = Student.class)
	@JoinColumn(name = "student_id")
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	
	public String getSchoolYear() {
		return schoolYear;
	}
	public void setSchoolYear(String schoolYear) {
		this.schoolYear = schoolYear;
	}
	
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
	
	public Long getorNumber() {
		return orNumber;
	}
	public void setorNumber(Long orNumber) {
		this.orNumber = orNumber;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public Double getAssessment() {
		return assessment;
	}
	public void setAssessment(Double assessment) {
		this.assessment= assessment;
	}
	
	public Double getPayments() {
		return payments;
	}
	public void setPayments(Double payables) {
		this.payments = payables;
	}
	
	public Double getBalance() {
		return balance;
	}
	public void setBalance(Double balance) {
		this.balance = balance;
	}
	

}
