package com.sms.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.directwebremoting.annotations.DataTransferObject;

import com.sms.base.BaseModel;
import com.sms.curriculum.model.Subjects;

@SuppressWarnings("serial")
@Entity
@Table(name = "faculty")
@DataTransferObject
public class Faculty extends BaseModel{
	
	private Long facultyId;
	private String facultyName;
	private List<Subjects> subjects;
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "id")
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
	@OneToMany(fetch = FetchType.EAGER, targetEntity = Faculty.class, mappedBy = "subjects",cascade= CascadeType.ALL)
	public List<Subjects> getSubjects() {
		return subjects;
	}
	public void setSubjects(List<Subjects> subjects) {
		this.subjects = subjects;
	}
	
}
