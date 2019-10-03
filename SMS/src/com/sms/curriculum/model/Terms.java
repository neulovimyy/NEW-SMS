package com.sms.curriculum.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.sms.base.BaseModel;
import com.sms.student.model.EducationalBackground;
import com.sms.student.model.Student;

@SuppressWarnings("serial")
@Entity
@Table(name = "terms")
public class Terms extends BaseModel {
	private Long id;
	private String name;
	private List<Subjects> subjects;
	private YearLevel year;
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "terms_id")
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	@Column(name = "name")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@OneToMany(fetch = FetchType.LAZY, targetEntity = Subjects.class, mappedBy = "terms",cascade= CascadeType.ALL)
	public List<Subjects> getSubjects() {
		return subjects;
	}
	public void setSubjects(List<Subjects> subjects) {
		this.subjects = subjects;
	}
	@ManyToOne(fetch = FetchType.LAZY, targetEntity = YearLevel.class)
	@JoinColumn(name = "year_level_fk")
	public YearLevel getYear() {
		return year;
	}
	public void setYear(YearLevel year) {
		this.year = year;
	}
}
