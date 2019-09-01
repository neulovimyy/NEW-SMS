package com.sms.enums;

public enum StudentStatus {
	CONTINUING(1,"Regular"),
	IRREGULAR(2,"Irregular"),
	SUSPENDED(3,"Suspended"),
	PROVISIONARY(4,"Provisionary"),
	DROPPED_OUT(5,"Dropped Out");
	
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

	private StudentStatus(Integer id, String description) {
		this.id=id;
		this.description=description;
	}
	
	public static StudentStatus getInstance(Integer id) {
		for (StudentStatus value: StudentStatus.values()) {
			if(value.getId().equals(id)) {
				return value;
			}
		}
		return null;
	}
	
	
}
