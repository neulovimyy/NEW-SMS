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
public class SubjectHandling implements Serializable{
	private Long facultyId;
	private String facultyName;
	private long facultySubId;
	private String schedule;
	private String roomAss;
	private String sectionHandled;
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "faculty_id") 
	public Long getFacultyId() {
		return facultyId;
	}
	public void setFacultyId(Long facultyId) {
		this.facultyId = facultyId;
	}
	
	@Column(name = "faculty_name")
	public String getFacultyName() {
		return facultyName;
	}
	public void setFacultyName(String facultyName) {
		this.facultyName = facultyName;
	}
	
	@Column(name = "faculty_sub_id")
	public long getFacultySubId() {
		return facultySubId;
	}
	public void setFacultySubId(long facultySubId) {
		this.facultySubId = facultySubId;
	}
	
	@Column(name = "fac_schedule")
	public String getSchedule() {
		return schedule;
	}
	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}
	
	@Column(name = "room_assignment")
	public String getRoomAss() {
		return roomAss;
	}
	public void setRoomAss(String roomAss) {
		this.roomAss = roomAss;
	}
	
	@Column(name = "section_handled")
	public String getSectionHandled() {
		return sectionHandled;
	}
	public void setSectionHandled(String sectionHandled) {
		this.sectionHandled = sectionHandled;
	}
	
}
