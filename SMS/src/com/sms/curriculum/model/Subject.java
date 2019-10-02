package com.sms.curriculum.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="subject")
public class Subject {
	
	private Long subjectID;
	private String subject;
	private List<ScheduleWithProfs> schedule;
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "subject_id")
	public Long getSubjectID() {
		return subjectID;
	}
	public void setSubjectID(Long subjectID) {
		this.subjectID = subjectID;
	}
	
	@Column(name = "subject_name")
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	@ManyToMany(fetch = FetchType.LAZY, targetEntity= ScheduleWithProfs.class)
	@JoinTable(name = "subject")
	public List<ScheduleWithProfs> getSchedule() {
		return schedule;
	}
	public void setSchedule(List<ScheduleWithProfs> schedule) {
		this.schedule = schedule;
	}
	
	
	
}