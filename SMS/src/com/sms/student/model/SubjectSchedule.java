package com.sms.student.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.directwebremoting.annotations.DataTransferObject;

import com.sms.base.BaseModel;

@SuppressWarnings("serial")
@Entity
@Table(name="schedule")
@DataTransferObject
public class SubjectSchedule extends BaseModel implements Serializable{

	private Long id;
	private String schedule;
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "schedule_id")
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	@Column(name = "schedule")
	public String getSchedule() {
		return schedule;
	}
	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}	
	
}