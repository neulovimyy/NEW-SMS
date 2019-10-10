package com.sms.student.model;

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
import com.sms.enums.BloodTypeEnum;
import com.sms.enums.Gender;
import com.sms.enums.Religion;
import com.sms.util.DateUtility;
import com.sms.util.InventoryUtility;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;

//author: zid and gervin

@SuppressWarnings("serial")
@Entity
@Table(name = "student_master")
@DataTransferObject

public class Student extends BaseModel implements Serializable {

	private Long Id;
	private String studentId;
	private String firstName;
	private String middleName;
	private String nationality;
	
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
	private Integer age;
	private String acad;
	private String placeOfBirth;	

	private String motherName;
	private String motherOccupation;
	private String motherAddress;
	private String motherEduc;
	private String motherPhone;
	private Integer motherIncome;

	private String fatherName;
	private String fatherOccupation;
	private String fatherAddress;
	private String fatherEduc;
	private String fatherPhone;
	private Integer fatherIncome;

	private String guardianName;
	private String guardianPhone;
	private String guardianAddress;
	
	//image
	private CommonsMultipartFile studentImageFile; 
	private byte[] studentImage;
	private String studentContentType;
	
	//academic records
	private CommonsMultipartFile studentAcademicFile; 
	private byte[] studentAcademic;
	private String studentContentTypeAcademic;
	
	//private List<EducBg> educBg;
	private List<EducationalBackground> educationalBackground;

	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	@Column(name = "id")
	public Long getId() {
		return Id;
	}

	public void setId(Long id) {
		this.Id = id;
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
	@Column(name = "nationality")
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	@Column(name = "last_name")
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Column(name = "age")
	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
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

	@Column(name = "place_of_birth")
	public String getPlaceOfBirth() {
		return placeOfBirth;
	}

	public void setPlaceOfBirth(String placeOfBirth) {
		this.placeOfBirth = placeOfBirth;
	}

	/*
	 * @OneToMany(fetch = FetchType.EAGER, targetEntity = EducBg.class, mappedBy =
	 * "stud", cascade = CascadeType.ALL) public List<EducBg> getEducBg() { return
	 * educBg; } public void setEducBg(List<EducBg> educBg) { this.educBg = educBg;
	 * }
	 */
	@Transient
	public CommonsMultipartFile getStudentImageFile() {
		return studentImageFile;
	}

	public void setStudentImageFile(CommonsMultipartFile studentImageFile) {
		this.studentImageFile = studentImageFile;
	}

	@Column(name = "student_image", columnDefinition = "longblob")
	public byte[] getStudentImage() {
		return studentImage;
	}

	public void setStudentImage(byte[] studentImage) {
		this.studentImage = studentImage;
	}

	@Column(name = "student_content_type")
	public String getStudentContentType() {
		return studentContentType;
	}

	public void setStudentContentType(String studentContentType) {
		this.studentContentType = studentContentType;
	}

	@Column(name = "mother_name")
	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	@Column(name = "mother_occupation")
	public String getMotherOccupation() {
		return motherOccupation;
	}

	public void setMotherOccupation(String motherOccupation) {
		this.motherOccupation = motherOccupation;
	}

	@Column(name = "mother_address")
	public String getMotherAddress() {
		return motherAddress;
	}

	public void setMotherAddress(String motherAddress) {
		this.motherAddress = motherAddress;
	}

	@Column(name = "mother_education")
	public String getMotherEduc() {
		return motherEduc;
	}

	public void setMotherEduc(String motherEduc) {
		this.motherEduc = motherEduc;
	}

	@Column(name = "mother_phone")
	public String getMotherPhone() {
		return motherPhone;
	}

	public void setMotherPhone(String motherPhone) {
		this.motherPhone = motherPhone;
	}

	@Column(name = "mother_income")
	public Integer getMotherIncome() {
		return motherIncome;
	}

	public void setMotherIncome(Integer motherIncome) {
		this.motherIncome = motherIncome;
	}

	@Column(name = "father_name")
	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	@Column(name = "father_occupation")
	public String getFatherOccupation() {
		return fatherOccupation;
	}

	public void setFatherOccupation(String fatherOccupation) {
		this.fatherOccupation = fatherOccupation;
	}

	@Column(name = "father_address")
	public String getFatherAddress() {
		return fatherAddress;
	}

	public void setFatherAddress(String fatherAddress) {
		this.fatherAddress = fatherAddress;
	}

	@Column(name = "father_education")
	public String getFatherEduc() {
		return fatherEduc;
	}

	public void setFatherEduc(String fatherEduc) {
		this.fatherEduc = fatherEduc;
	}

	@Column(name = "father_phone")
	public String getFatherPhone() {
		return fatherPhone;
	}

	public void setFatherPhone(String fatherPhone) {
		this.fatherPhone = fatherPhone;
	}

	@Column(name = "father_income")
	public Integer getFatherIncome() {
		return fatherIncome;
	}

	public void setFatherIncome(Integer fatherIncome) {
		this.fatherIncome = fatherIncome;
	}

	@Column(name = "guardian_name")
	public String getGuardianName() {
		return guardianName;
	}

	public void setGuardianName(String guardianName) {
		this.guardianName = guardianName;
	}

	@Column(name = "guardian_phone")
	public String getGuardianPhone() {
		return guardianPhone;
	}

	public void setGuardianPhone(String guardianPhone) {
		this.guardianPhone = guardianPhone;
	}

	@Column(name = "guardian_address")
	public String getGuardianAddress() {
		return guardianAddress;
	}

	public void setGuardianAddress(String guardianAddress) {
		this.guardianAddress = guardianAddress;
	}

	@Transient
	public String getStudentNumberFull() {
		int yearLevel = Calendar.getInstance().get(Calendar.YEAR);
		String p = yearLevel + "-" + InventoryUtility.convertToFourDigit(this.getId()) + "-" + acad;
		return p;
	}

	@Transient
	public String getFullName() {
		String p = this.firstName + " " + this.middleName + " " + this.lastName;
		return p;
	}

	@Transient
	public String getStudentPicture() {
		return "data:" + getStudentContentType() + ";base64," + Base64.encode(getStudentImage());
	}

	@OneToMany(fetch = FetchType.EAGER, targetEntity = EducationalBackground.class, mappedBy = "student", cascade = CascadeType.ALL)
	public List<EducationalBackground> getEducationalBackground() {
		return educationalBackground;
	}

	public void setEducationalBackground(List<EducationalBackground> educationalBackground) {
		this.educationalBackground = educationalBackground;
	}
	
	@Transient
	public CommonsMultipartFile getStudentAcademicFile() {
		return studentAcademicFile;
	}
	public void setStudentAcademicFile(CommonsMultipartFile studentAcademicFile) {
		this.studentAcademicFile = studentAcademicFile;
	}
	@Column(name = "academic_file", columnDefinition = "longblob")
	public byte[] getStudentAcademic() {
		return studentAcademic;
	}
	public void setStudentAcademic(byte[] studentAcademic) {
		this.studentAcademic = studentAcademic;
	}
	@Column(name = "content_type_academic")
	public String getStudentContentTypeAcademic() {
		return studentContentTypeAcademic;
	}
	public void setStudentContentTypeAcademic(String studentContentTypeAcademic) {
		this.studentContentTypeAcademic = studentContentTypeAcademic;
	}
	
	@Transient
	public String getBloodTypeDesc() {
		return BloodTypeEnum.getInstance(bloodtype).getDescription();
	}
	@Transient
	public String getReligionDesc() {
		return Religion.getInstance(religion).getDescription();
	}
	@Transient
	public String getGenderDesc() {
		return Gender.getInstance(gender).getDescription();
	}
}