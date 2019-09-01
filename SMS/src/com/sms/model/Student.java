package com.sms.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.directwebremoting.annotations.DataTransferObject;

@SuppressWarnings("serial")
@Entity
@Table(name = "student_master")
@DataTransferObject

public class Student implements Serializable {
	
	private Long Id;
	private String studentId;
	private String firstName;
	private String middleName;
	private String lastName;
	private Date birthDate;
	private String studentAddress;
	private String civilStatus;
	private Integer gender;
	private String mobileNum;
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "id")
	public Long getId() {
		return Id;
	}
	public void setId(Long id) {
		this.Id = id;
	}
	
	@Column(name = "student_id")
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	
	@Column(name = "first_name")
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	@Column(name = "middle_name")
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	
	@Column(name = "last_name")
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	@Column(name = "birthdate")
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	
	@Column(name = "address")
	public String getStudentAddress() {
		return studentAddress;
	}
	public void setStudentAddress(String studentAddress) {
		this.studentAddress = studentAddress;
	}
	
	@Column(name = "civil_status")
	public String getCivilStatus() {
		return civilStatus;
	}
	public void setCivilStatus(String civilStatus) {
		this.civilStatus = civilStatus;
	}
	
	@Column(name = "gender")
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	
	@Column(name = "mobile")
	public String getMobileNum() {
		return mobileNum;
	}
	public void setMobileNum(String mobileNum) {
		this.mobileNum = mobileNum;
	}
	
	
}