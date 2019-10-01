package com.sms.curriculum.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.directwebremoting.annotations.DataTransferObject;

import com.sms.base.BaseModel;
import com.sms.model.Faculty;

@SuppressWarnings("serial")
@Entity
@Table(name = "subject_header")
@DataTransferObject
public class Subjects extends BaseModel{
	private Long id;
	private String subjectName;
	private Integer subjectUnits;
	private Faculty faculty;
	private Terms terms;
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "subject_id")
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	@Column(name = "subject_name")
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	@Column(name = "subject_units")
	public Integer getSubjectUnits() {
		return subjectUnits;
	}
	public void setSubjectUnits(Integer subjectUnits) {
		this.subjectUnits = subjectUnits;
	}
	@ManyToOne(fetch = FetchType.LAZY, targetEntity = Faculty.class)
	@JoinColumn(name = "faculty_fk")
	public Faculty getFaculty() {
		return faculty;
	}
	public void setFaculty(Faculty faculty) {
		this.faculty = faculty;
	}
	@ManyToOne(fetch = FetchType.LAZY, targetEntity = Faculty.class)
	@JoinColumn(name = "terms_fk")
	public Terms getTerms() {
		return terms;
	}
	public void setTerms(Terms terms) {
		this.terms = terms;
	}
	
	
	
}
