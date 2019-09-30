package com.sms.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.directwebremoting.annotations.DataTransferObject;

import com.sms.base.BaseModel;

@SuppressWarnings("serial")
@Entity
@Table(name="schedule")
@DataTransferObject
public class SubjectSchedule extends BaseModel implements Serializable{

	private String schedule;
	
	
	@Column(name = "schedule")
	public String getSchedule() {
		return schedule;
	}
	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}	
	
}