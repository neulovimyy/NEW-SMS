package com.sms.curriculum.model;

import java.util.Date;
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
@Table (name="Schedule")
public class ScheduleWithProfs {
	
	private Long scheduleId;
	private Date scheduledTime;
	
	private List<Professors> professors;
	
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	@Column(name = "schedule_id")
	public Long getScheduleId() {
		return scheduleId;
	}
	public void setScheduleId(Long scheduleId) {
		this.scheduleId = scheduleId;
	}
	
	@Column(name = "schedule_time")
	public Date getScheduledTime() {
		return scheduledTime;
	}
	public void setScheduledTime(Date scheduledTime) {
		this.scheduledTime = scheduledTime;
	}
	
	@ManyToMany(fetch= FetchType.LAZY, targetEntity = Professors.class)
	@JoinTable(name = "faculty",
			joinColumns = { @JoinColumn(name="faculty_fk")},
			inverseJoinColumns = { @JoinColumn(name="schedule_fk")})
	public List<Professors> getProfessors() {
		return professors;
	}
	public void setProfessors(List<Professors> professors) {
		this.professors = professors;
	}	
	
}