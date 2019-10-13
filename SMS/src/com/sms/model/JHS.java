package com.sms.model;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
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
import javax.persistence.Transient;

import org.directwebremoting.annotations.DataTransferObject;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.sms.base.BaseModel;
import com.sms.util.InventoryUtility;

@SuppressWarnings("serial")
@Entity
@Table(name = "jhs")
@DataTransferObject

public class JHS extends BaseModel implements Serializable{
	
	private Long Id;
	private String studentId;
	private String firstName;
	private String middleName;
	
	private String lastName;
	private Date birthDate;
	private String civilStatus;
	
	private String mobileNum;
	private String emailAddress;
	
	private Integer gender;
	private Integer religion;
	private Integer bloodtype;
	private String presentAddress;
	private String permanentAddress;
	private CommonsMultipartFile studentPicture; 
	private String acad;
	
	

	private Integer section;
	//private List<EducBg> educBg;

	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "id")
	public Long getId() {
		return Id;
	}
	public void setId(Long id) {
		this.Id = id;
	}

	@Column(name = "section")
	public Integer getSection() {
		return section;
	}
	public void setSection(Integer section) {
		this.section = section;
	}
	
	@Column(name = "student_id")
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	
	@Column(name = "first_name")
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	@Column(name = "middle_name")
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	
	@Column(name = "last_name")
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	@Column(name = "birthdate")
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	
	@Column(name = "civil_status")
	public String getCivilStatus() {
		return civilStatus;
	}
	public void setCivilStatus(String civilStatus) {
		this.civilStatus = civilStatus;
	}
	
	@Column(name = "gender")
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	
	@Column(name = "mobile")
	public String getMobileNum() {
		return mobileNum;
	}
	public void setMobileNum(String mobileNum) {
		this.mobileNum = mobileNum;
	}
	
	@Column(name = "blood_type")
	public Integer getBloodtype() {
		return bloodtype;
	}
	public void setBloodtype(Integer bloodtype) {
		this.bloodtype = bloodtype;
	}
	@Column(name = "present_Address", columnDefinition = "mediumtext")
	public String getPresentAddress() {
		return presentAddress;
	}
	public void setPresentAddress(String presentAddress) {
		this.presentAddress = presentAddress;
	}
	@Column(name = "permanent_Address", columnDefinition = "mediumtext")
	public String getPermanentAddress() {
		return permanentAddress;
	}
	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}

	@Column(name = "religion")
	public Integer getReligion() {
		return religion;
	}
	public void setReligion(Integer religion) {
		this.religion = religion;
	}
	
	@Column(name = "student_picture")
	public CommonsMultipartFile getStudentPicture() {
		return studentPicture;
	}
	public void setStudentPicture(CommonsMultipartFile studentPicture) {
		this.studentPicture = studentPicture;
	}
	
	@Column(name = "email_address")
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	
	@Column(name = "acad")
	public String getAcad() {
		return acad;
	}
	public void setAcad(String acad) {
		this.acad = acad;
	}
	/*
	@OneToMany(fetch = FetchType.EAGER, targetEntity = EducBg.class, mappedBy = "stud", cascade = CascadeType.ALL)
	public List<EducBg> getEducBg() {
		return educBg;
	}
	public void setEducBg(List<EducBg> educBg) {
		this.educBg = educBg;
	}*/
	
	@Transient
	public String getStudentNumberFull() {
		int yearLevel = Calendar.getInstance().get(Calendar.YEAR);
		String p = yearLevel+"-"+InventoryUtility.convertToFourDigit(this.getId())+"-"+acad;
		return p;
	}
}