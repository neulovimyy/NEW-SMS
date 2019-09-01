package com.sms.enums;

public enum BloodTypeEnum {
	Aplus(1,"A+"), 
	Aminus(2,"A-"), 
	Bplus(3,"B+"), 
	Bminus(4,"B-"), 
	Oplus(5,"O+"), 
	Ominus(6,"O-"), 
	ABplus(7,"AB+"), 
	ABminus(8,"AB-");
	


	
	
	private BloodTypeEnum(Integer id, String description) {
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
	
	public static BloodTypeEnum getInstance(Integer id) {
		for(BloodTypeEnum value :  BloodTypeEnum.values())
			if(value.getId().equals(id)) return value;
		return null;
	}
}
