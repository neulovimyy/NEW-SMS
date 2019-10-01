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

import org.directwebremoting.annotations.DataTransferObject;

import com.sms.base.BaseModel;
import com.sms.model.Student;

@SuppressWarnings("serial")
@Entity
@Table(name = "curriculum_path")
@DataTransferObject
public class CurriculumPath extends BaseModel{
	private Long id;
	private String name;
	private List<YearLevel> year;
	private Curriculum path;
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "curr_path_id")
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
	@OneToMany(fetch = FetchType.LAZY, targetEntity = YearLevel.class, mappedBy = "currPath",cascade= CascadeType.ALL)
	public List<YearLevel> getYear() {
		return year;
	}
	public void setYear(List<YearLevel> year) {
		this.year = year;
	}
	@ManyToOne(fetch = FetchType.LAZY, targetEntity = Curriculum.class)
	@JoinColumn(name = "curr_fk")
	public Curriculum getPath() {
		return path;
	}
	public void setPath(Curriculum path) {
		this.path = path;
	}
}
