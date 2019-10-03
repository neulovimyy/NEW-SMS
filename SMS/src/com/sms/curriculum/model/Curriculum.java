package com.sms.curriculum.model;

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
import com.sms.student.model.EducationalBackground;

@SuppressWarnings("serial")
@Entity
@Table(name = "curriculum")
@DataTransferObject
public class Curriculum extends BaseModel{
	
	private Long id;
	private String name;
	List<CurriculumPath> path;
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "curr_id")
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
	@OneToMany(fetch = FetchType.LAZY, targetEntity = CurriculumPath.class, mappedBy = "path",cascade= CascadeType.ALL)
	public List<CurriculumPath> getPath() {
		return path;
	}
	public void setPath(List<CurriculumPath> path) {
		this.path = path;
	}
	
	
	
}
