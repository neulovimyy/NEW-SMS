package com.sms.enums;

public enum AccessRights {
	STUDENT(1,"Student"),
	REGISTRAR(2,"Registrar"),
	ACCOUNTING(3,"Accounting"),
	FACULTY(4,"Faculty"),
	ADMIN(5,"Administrator");
	
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

	private AccessRights(Integer id, String description) {
		this.id=id;
		this.description=description;
	}
	
	public static AccessRights getInstance(Integer id) {
		for (AccessRights value: AccessRights.values()) {
			if(value.getId().equals(id)) {
				return value;
			}
		}
		return null;
	}
	
}
