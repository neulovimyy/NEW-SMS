package com.sms.enums;

public enum CivilStatusEnum {
	SINGLE(1,"Single"), 
	MARRIED(2,"Married"), 
	LEGALLY_SEPARATED(3,"Legally Separated"), 
	WIDOW(4,"Widow");
	
	private CivilStatusEnum(Integer id, String description) {
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
	
	public static CivilStatusEnum getInstance(Integer id) {
		for(CivilStatusEnum value :  CivilStatusEnum.values())
			if(value.getId().equals(id)) return value;
		return null;
	}
}
