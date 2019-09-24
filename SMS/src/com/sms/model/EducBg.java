package com.sms.model;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class EducBg {
	private Student stud;

	private String level;
	private String schoolName;
	private String yearGraduated;
	private String awards;
	
	
	
	@ManyToOne(fetch = FetchType.EAGER, targetEntity = Student.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "EducBg", nullable= false)
	public Student getStud() {
		return stud;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getSchoolName() {
		return schoolName;
	}

	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}

	public String getYearGraduated() {
		return yearGraduated;
	}

	public void setYearGraduated(String yearGraduated) {
		this.yearGraduated = yearGraduated;
	}

	@ManyToOne(fetch = FetchType.EAGER, targetEntity = Awards.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "awards", nullable= false)
	public String getAwards() {
		return awards;
	}

	public void setAwards(String awards) {
		this.awards = awards;
	}

	public void setStud(Student stud) {
		this.stud = stud;
	}
	
}
