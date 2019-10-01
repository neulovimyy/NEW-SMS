package com.sms.curriculum.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.directwebremoting.annotations.DataTransferObject;

import com.sms.base.BaseModel;

@SuppressWarnings("serial")
@Entity
@Table(name = "curriculum_path")
@DataTransferObject
public class CurriculumPath extends BaseModel{
	private Long id;
	private String name;
	private List<YearLevel> year;
}
