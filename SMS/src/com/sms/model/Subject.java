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
@Table(name = "subjects")
@DataTransferObject
public class Subject implements Serializable{
	private Long subjectId;
	private String subjectName;
	private String subjectCode;
	private int subjectUnit;
	private String subOfferingPeriod;
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "subject_id")
	public Long getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(Long subjectId) {
		this.subjectId = subjectId;
	}
	
	@Column(name = "subject_name")
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	
	@Column(name = "subject_code")
	public String getSubjectCode() {
		return subjectCode;
	}
	public void setSubjectCode(String subjectCode) {
		this.subjectCode = subjectCode;
	}
	
	@Column(name = "subject_units", columnDefinition = "int(20)")
	public int getSubjectUnit() {
		return subjectUnit;
	}
	public void setSubjectUnit(int subjectUnit) {
		this.subjectUnit = subjectUnit;
	}
	
	@Column(name = "offering_period")
	public String getSubOfferingPeriod() {
		return subOfferingPeriod;
	}
	public void setSubOfferingPeriod(String subOfferingPeriod) {
		this.subOfferingPeriod = subOfferingPeriod;
	}
}
