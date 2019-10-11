package com.sms.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.directwebremoting.annotations.DataTransferObject;

import com.sms.base.BaseModel;
@Table(name = "subjectdb")
@SuppressWarnings("serial")
@Entity
@DataTransferObject
public class Report extends BaseModel  implements Serializable  {
	private Long subjectId;
	private String subjectCode;
	private String subjectName;
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "subject_id")
	public Long getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(Long subjectId) {
		this.subjectId = subjectId;
	}
	@Column(name = "subject_code")
	public String getSubjectCode() {
		return subjectCode;
	}
	public void setSubjectCode(String subjectCode) {
		this.subjectCode = subjectCode;
	}
	@Column(name = "subject_name")
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
}
 