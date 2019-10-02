package com.sms.curriculum.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
//author: gervin
@Entity
@Table(name = "professors")
public class Professors {
	
	private Long professorID;
	private String professor;
	
	private List<ScheduleWithProfs> schedule;
	
	@Id
	@Column(name= "professor_id")
	public Long getProfessorID() {
		return professorID;
	}
	public void setProfessorID(Long professorID) {
		this.professorID = professorID;
	}
	@Column(name = "professor_name")
	public String getProfessor() {
		return professor;
	}
	public void setProfessor(String professor) {
		this.professor = professor;
	}	
	
	@ManyToMany(fetch = FetchType.EAGER, targetEntity = ScheduleWithProfs.class, mappedBy = "professors", cascade= CascadeType.ALL)
	public List<ScheduleWithProfs> getSchedule() {
		return schedule;
	}
	public void setSchedule(List<ScheduleWithProfs> schedule) {
		this.schedule = schedule;
	}
	
}