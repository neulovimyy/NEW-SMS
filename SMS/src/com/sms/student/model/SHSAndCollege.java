package com.sms.student.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.directwebremoting.annotations.DataTransferObject;

@SuppressWarnings("serial")
@Entity
@Table(name = "shscollege_accountingTable")
@DataTransferObject

public class SHSAndCollege implements Serializable {

	private Long studentNumber;
	private Double libraryFee;
	private Double culturalFee;
	private Double medicalFee;
	private Double registrationFee;
	private Double laboratoryFee;
	private Double academicUnits;
	private Double newspaperFee;
	private Double studentCouncilFee;
	private Double systemFee;
	private Double totalTuitionFee;
	private String modeOfPayment;
	
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "student_number")
	public Long getStudentNumber() {
		return studentNumber;
	}
	public void setStudentNumber(Long studentNumber) {
		this.studentNumber = studentNumber;
	}
	
	@Column(name = "library_fee")
	public Double getLibraryFee() {
		return libraryFee;
	}
	public void setLibraryFee(Double libraryFee) {
		this.libraryFee = libraryFee;
	}
	
	@Column(name = "cultural_fee")
	public Double getCulturalFee() {
		return culturalFee;
	}
	public void setCulturalFee(Double culturalFee) {
		this.culturalFee = culturalFee;
	}
	
	@Column(name = "medical_fee")
	public Double getMedicalFee() {
		return medicalFee;
	}
	public void setMedicalFee(Double medicalFee) {
		this.medicalFee = medicalFee;
	}
	
	@Column(name = "registration_fee")
	public Double getRegistrationFee() {
		return registrationFee;
	}
	
	public void setRegistrationFee(Double registrationFee) {
		this.registrationFee = registrationFee;
	}
	
	@Column(name = "laboratory_fee")
	public Double getLaboratoryFee() {
		return laboratoryFee;
	}
	
	public void setLaboratoryFee(Double laboratoryFee) {
		this.laboratoryFee = laboratoryFee;
	}
	
	@Column(name = "academic_units")
	public Double getAcademicUnits() {
		return academicUnits;
	}
	
	public void setAcademicUnits(Double academicUnits) {
		this.academicUnits = academicUnits;
	}
	
	@Column(name = "newspaper_fee")
	public Double getNewspaperFee() {
		return newspaperFee;
	}
	
	public void setNewspaperFee(Double newspaperFee) {
		this.newspaperFee = newspaperFee;
	}
	
	@Column(name = "student_council_fee")
	public Double getStudentCouncilFee() {
		return studentCouncilFee;
	}
	
	public void setStudentCouncilFee(Double studentCouncilFee) {
		this.studentCouncilFee = studentCouncilFee;
	}
	
	@Column(name = "system_fee")
	public Double getSystemFee() {
		return systemFee;
	}
	
	public void setSystemFee(Double systemFee) {
		this.systemFee = systemFee;
	}
	
	@Column(name = "total_tuition_fee")
	public Double getTotalTuitionFee() {
		return totalTuitionFee;
	}
	public void setTotalTuitionFee(Double totalTuitionFee) {
		this.totalTuitionFee = totalTuitionFee;
	}
	
	@Column(name = "mode_of_payment")
	public String getModeOfPayment() {
		return modeOfPayment;
	}
	public void setModeOfPayment(String modeOfPayment) {
		this.modeOfPayment = modeOfPayment;
	}
	
}
