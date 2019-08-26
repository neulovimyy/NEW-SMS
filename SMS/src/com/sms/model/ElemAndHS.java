package com.sms.model;

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
@Table(name = "elemHs_accountingTable")
@DataTransferObject

public class ElemAndHS implements Serializable {
	
	private Long studentNumber;
	private Integer libraryFee;
	private Integer culturalFee;
	private Integer medicalFee;
	private Integer registrationFee;
	private Integer laboratoryFee;
	private Integer totalTuitionFee;
	private Integer modeOfPayment;
	
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
	public Integer getLibraryFee() {
		return libraryFee;
	}
	public void setLibraryFee(Integer libraryFee) {
		this.libraryFee = libraryFee;
	}
	
	@Column(name = "cultural_fee")
	public Integer getCulturalFee() {
		return culturalFee;
	}
	public void setCulturalFee(Integer culturalFee) {
		this.culturalFee = culturalFee;
	}
	
	@Column(name = "medical_fee")
	public Integer getMedicalFee() {
		return medicalFee;
	}
	public void setMedicalFee(Integer medicalFee) {
		this.medicalFee = medicalFee;
	}
	
	@Column(name = "registration_fee")
	public Integer getRegistrationFee() {
		return registrationFee;
	}
	
	public void setRegistrationFee(Integer registrationFee) {
		this.registrationFee = registrationFee;
	}
	
	@Column(name = "laboratory_fee")
	public Integer getLaboratoryFee() {
		return laboratoryFee;
	}
	
	public void setLaboratoryFee(Integer laboratoryFee) {
		this.laboratoryFee = laboratoryFee;
	}
	
	@Column(name = "total_tuition_fee")
	public Integer getTotalTuitionFee() {
		return totalTuitionFee;
	}
	public void setTotalTuitionFee(Integer totalTuitionFee) {
		this.totalTuitionFee = totalTuitionFee;
	}
	
	@Column(name = "mode_of_payment")
	public Integer getModeOfPayment() {
		return modeOfPayment;
	}
	public void setModeOfPayment(Integer modeOfPayment) {
		this.modeOfPayment = modeOfPayment;
	}
	
}
