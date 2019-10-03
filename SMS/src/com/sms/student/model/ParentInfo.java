package com.sms.student.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "parent_info")
public class ParentInfo {
	
	private Long parentInfoID;
	private String motherName;
	private String motherOccupation;
	private String motherAddress;
	private String motherEduc;
	private String motherPhone;
	private Integer motherIncome;
	
	private String fatherName;
	private String fatherOccupation;
	private String fatherAddress;
	private String fatherEduc;
	private String fatherPhone;
	private Integer fatherIncome;
	
	private String guardianName;
	private String guardianPhone;
	private String guardianAddress;

	private Student student;

	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "parent_info_id")
	public Long getParentInfoID() {
		return parentInfoID;
	}

	public void setParentInfoID(Long parentInfoID) {
		this.parentInfoID = parentInfoID;
	}
	
	@Column(name = "mother_name")
	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	@Column(name = "mother_occupation")
	public String getMotherOccupation() {
		return motherOccupation;
	}

	public void setMotherOccupation(String motherOccupation) {
		this.motherOccupation = motherOccupation;
	}

	@Column(name = "mother_address")
	public String getMotherAddress() {
		return motherAddress;
	}

	public void setMotherAddress(String motherAddress) {
		this.motherAddress = motherAddress;
	}

	@Column(name = "mother_education")
	public String getMotherEduc() {
		return motherEduc;
	}

	public void setMotherEduc(String motherEduc) {
		this.motherEduc = motherEduc;
	}

	@Column(name = "mother_phone")
	public String getMotherPhone() {
		return motherPhone;
	}

	public void setMotherPhone(String motherPhone) {
		this.motherPhone = motherPhone;
	}

	@Column(name = "mother_income")
	public Integer getMotherIncome() {
		return motherIncome;
	}

	public void setMotherIncome(Integer motherIncome) {
		this.motherIncome = motherIncome;
	}

	@Column(name = "father_name")
	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	@Column(name = "father_occupation")
	public String getFatherOccupation() {
		return fatherOccupation;
	}

	public void setFatherOccupation(String fatherOccupation) {
		this.fatherOccupation = fatherOccupation;
	}

	@Column(name = "father_address")
	public String getFatherAddress() {
		return fatherAddress;
	}

	public void setFatherAddress(String fatherAddress) {
		this.fatherAddress = fatherAddress;
	}

	@Column(name = "father_education")
	public String getFatherEduc() {
		return fatherEduc;
	}

	public void setFatherEduc(String fatherEduc) {
		this.fatherEduc = fatherEduc;
	}

	@Column(name = "father_phone")
	public String getFatherPhone() {
		return fatherPhone;
	}

	public void setFatherPhone(String fatherPhone) {
		this.fatherPhone = fatherPhone;
	}

	@Column(name = "father_income")
	public Integer getFatherIncome() {
		return fatherIncome;
	}

	public void setFatherIncome(Integer fatherIncome) {
		this.fatherIncome = fatherIncome;
	}

	@Column(name = "guardian_name") 
	public String getGuardianName() {
		return guardianName;
	}

	public void setGuardianName(String guardianName) {
		this.guardianName = guardianName;
	}

	@Column(name = "guardian_phone")
	public String getGuardianPhone() {
		return guardianPhone;
	}

	public void setGuardianPhone(String guardianPhone) {
		this.guardianPhone = guardianPhone;
	}

	@Column(name = "guardian_address")
	public String getGuardianAddress() {
		return guardianAddress;
	}

	public void setGuardianAddress(String guardianAddress) {
		this.guardianAddress = guardianAddress;
	}

	@OneToOne(fetch = FetchType.EAGER, targetEntity = Student.class)
	@JoinColumn(name = "student_id")
	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}
	
}