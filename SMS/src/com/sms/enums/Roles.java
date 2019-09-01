package com.sms.enums;

public enum Roles {
	GUEST(1,"Guest"),
	ADMIN(2,"Administrator");
	
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

	private Roles(Integer id, String description) {
		this.id=id;
		this.description=description;
	}
	
	public static Roles getInstance(Integer id) {
		for (Roles value: Roles.values()) {
			if(value.getId().equals(id)) {
				return value;
			}
		}
		return null;
	}
}