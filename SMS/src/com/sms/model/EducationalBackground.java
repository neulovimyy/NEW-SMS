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
@Table(name = "educational_background")
@DataTransferObject
public class EducationalBackground implements Serializable{
	private Long educId;
	private String schoolName;
	private String schoolLevel;
	private String course;
	private String address;
	private String years;
	private String honor;
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "educ_id")
	public Long getEducId() {
		return educId;
	}
	public void setEducId(Long educId) {
		this.educId = educId;
	}
	
	@Column(name = "school_name")
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	
	@Column(name = "school_level")
	public String getSchoolLevel() {
		return schoolLevel;
	}
	public void setSchoolLevel(String schoolLevel) {
		this.schoolLevel = schoolLevel;
	}
	
	@Column(name = "course")
	public String getCourse() {
		return course;
	}
	
	public void setCourse(String course) {
		this.course = course;
	}
	
	@Column(name = "school_address")
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	@Column(name = "school_year")
	public String getYears() {
		return years;
	}
	public void setYears(String years) {
		this.years = years;
	}
	
	@Column(name = "honor_granted")
	public String getHonor() {
		return honor;
	}
	public void setHonor(String honor) {
		this.honor = honor;
	}
	
}
