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

import com.sms.student.model.Student;

@SuppressWarnings("serial")
@Entity
@Table(name = "second_sem_paid")
@DataTransferObject

public class SecondSemesterPaid implements Serializable {

	private Long entryNumber;
	private Long studentNumber;
	private String schoolYear;
	private String semester;
	private Long orNumber;
	private String description;
	private Double assessment;
	private Double payments;
	private Double balance; 
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "entry_number")
	public Long getEntryNumber() {
		return entryNumber;
	}
	public void setEntryNumber(Long entryNumber) {
		this.entryNumber = entryNumber;
	}
	
	@OneToOne(fetch = FetchType.EAGER, targetEntity = Student.class)
	@JoinColumn(name = "student_id")
	
	public Long getStudentNumber() {
		return studentNumber;
	}
	public void setStudentNumber(Long studentNumber) {
		this.studentNumber = studentNumber;
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
