package com.sms.enums;
 
public enum AcademicAttainment{
	ELEMENTARY(1,"Elementary(Gr. 1 - 6"),
	HIGH_SCHOOL(2,"High School (Gr. 7 - 10"),
	JUNIOR_HIGH(3,"Junior High (Gr. 11"),
	SENIOR_HIGH(4,"Senior High (Gr. 12"),
	COLLEGE(5,"College");
	
	private AcademicAttainment(Integer id, String description) {
		this.id = id;
		this.description = description;
	}
	
	private Integer id;
	private String description;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public static AcademicAttainment getInstance(Integer id) {
		for(AcademicAttainment value :  AcademicAttainment.values())
			if(value.getId().equals(id)) return value;
		return null;
	}
}
