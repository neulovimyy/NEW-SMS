package com.sms.curriculum.model;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.directwebremoting.annotations.DataTransferObject;

import com.sms.base.BaseModel;
import com.sms.model.Faculty;

@SuppressWarnings("serial")
@Entity
@Table(name = "subject_header")
@DataTransferObject
public class Subject extends BaseModel{
	private Long id;
	private String name;
	private Faculty faculty;
	
}
