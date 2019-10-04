package com.sms.enums;

public enum Gender {
	MALE(1,"Male"), 
	FEMALE(2,"Female");
	
	private Gender(Integer id, String description) {
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
	
	public static Gender getInstance(Integer id) {
		for(Gender value :  Gender.values())
			if(value.getId().equals(id)) return value;
		return null;
	}
}
