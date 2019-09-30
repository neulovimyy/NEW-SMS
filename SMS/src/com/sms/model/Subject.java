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
@Table(name = "subject")
@DataTransferObject
public class Subject implements Serializable{
	private Long id;
	private String subjectName;
	private SubjectSchedule schedule;
	private int subjectUnits;
	
	@Column(name = "subject")
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	
	
	public SubjectSchedule getSchedule() {
		return schedule;
	}
	public void setSchedule(SubjectSchedule schedule) {
		this.schedule = schedule;
	}
	public int getSubjectUnits() {
		return subjectUnits;
	}
	public void setSubjectUnits(int subjectUnits) {
		this.subjectUnits = subjectUnits;
	}
	
	
}
