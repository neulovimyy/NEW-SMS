package com.sms.curriculum.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.directwebremoting.annotations.DataTransferObject;

import com.sms.base.BaseModel;

@SuppressWarnings("serial")
@Entity
@Table(name = "curriculum")
@DataTransferObject
public class Curriculum extends BaseModel{
	
	private Long id;
	private String name;
	List<CurriculumPath> path;
	
	
}
