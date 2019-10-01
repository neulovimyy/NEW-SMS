package com.sms.curriculum.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.sms.base.BaseModel;

@SuppressWarnings("serial")
@Entity
@Table(name = "year_level")
public class YearLevel extends BaseModel{
	private Long id;
	private String name;
	private List<Terms> terms;
}
