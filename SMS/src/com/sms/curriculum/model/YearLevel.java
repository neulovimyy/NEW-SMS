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
import com.sms.model.EducationalBackground;
import com.sms.model.Student;

@SuppressWarnings("serial")
@Entity
@Table(name = "year_level")
public class YearLevel extends BaseModel{
	private Long id;
	private String name;
	private List<Terms> terms;
	private CurriculumPath currPath;
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "year_level_id")
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
	@OneToMany(fetch = FetchType.LAZY, targetEntity = Terms.class, mappedBy = "year",cascade= CascadeType.ALL)
	public List<Terms> getTerms() {
		return terms;
	}
	public void setTerms(List<Terms> terms) {
		this.terms = terms;
	}
	@ManyToOne(fetch = FetchType.LAZY, targetEntity = CurriculumPath.class)
	@JoinColumn(name = "curr_path_fk")
	public CurriculumPath getCurrPath() {
		return currPath;
	}
	public void setCurrPath(CurriculumPath currPath) {
		this.currPath = currPath;
	}
}
